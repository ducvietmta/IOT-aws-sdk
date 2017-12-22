#include "opencv2/videoio/videoio.hpp"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include <iostream>
#include <iomanip>
#include <fstream>
#include <stdio.h>
#include <OpenNI.h>
#include <termios.h>
#include <math.h>
#include <string>
#include <vector>
#include <sstream>
#include <ctype.h>
#include <unistd.h>
#include <limits.h>
#include <ctime>
#include "aws_iot_config.h"
#include "aws_iot_log.h"
#include "aws_iot_version.h"
#include "aws_iot_mqtt_client_interface.h"
using namespace std;
using namespace cv;
using namespace openni;


#define SAMPLE_READ_WAIT_TIMEOUT 2000 //2000ms
#define VIDEO_FRAME_WIDTH 640
#define VIDEO_FRAME_HEIGHT 480
#define POINT_DETECT 700
char certDirectory[PATH_MAX + 1] = "/certs";
char HostAddress[255] = AWS_IOT_MQTT_HOST;
uint32_t port = AWS_IOT_MQTT_PORT;

VideoWriter depth_videoWriter;
VideoWriter bgr_videoWriter;
string msg;
bool is_save_file = true;
vector<vector<Point> > squares;
vector<Point> approx;
vector<Rect> rect;
Mat roiImg[12];
int squares_size;
int cursor_x = -1;
int cursor_y = -1;
char cPayload[100], mess[100];
bool temp=true;
int
getkey()
{
    int character;
    struct termios orig_term_attr;
    struct termios new_term_attr;

    /* set the terminal to raw mode */
    tcgetattr(fileno(stdin), &orig_term_attr);
    memcpy(&new_term_attr, &orig_term_attr, sizeof(struct termios));
    new_term_attr.c_lflag &= ~(ECHO|ICANON);
    new_term_attr.c_cc[VTIME] = 0;
    new_term_attr.c_cc[VMIN] = 0;
    tcsetattr(fileno(stdin), TCSANOW, &new_term_attr);

    /* read a character from the stdin stream without blocking */
    /*   returns EOF (-1) if no character is available */
    character = fgetc(stdin);

    /* restore the original terminal attributes */
    tcsetattr(fileno(stdin), TCSANOW, &orig_term_attr);

    return character;
}

void CallBackFunc(int event, int x, int y, int flags, void* userdata)
{
     if  ( event == EVENT_LBUTTONDOWN )
     {
         // cout << "Left button of the mouse is clicked - position (" << x << ", " << y << ")" << endl;         
         approx.push_back(Point(x,y));
         if(( approx.size() % 4)==0){
            squares.push_back(approx);
            approx.clear();
         }  
         cursor_x = x;
         cursor_y = y;  
     }
     else if  ( event == EVENT_RBUTTONDOWN )
     {
       
     }
     else if  ( event == EVENT_MBUTTONDOWN )
     {
             
     }
     else if ( event == EVENT_MOUSEMOVE )
     {
  
     }
}
int cutImage(Mat& image, Mat& mask, const vector<vector<Point> >&squares){
    string str;
    int status;
    stringstream ss, ss1;
    if(squares.size()!=0){
    cv::Point p_min, p_max, p1, p2, p3, p4;
    cv::Mat result;
    std::string Roi_name = (std::string("vt")); 
    p1 = squares[squares.size()-1][0];
    p2 = squares[squares.size()-1][1];
    p3 = squares[squares.size()-1][2];
    p4 = squares[squares.size()-1][3];
    p_min = p1;
    if(p_min.x>=p2.x)p_min.x = p2.x;
    if(p_min.x>=p3.x)p_min.x = p3.x;
    if(p_min.x>=p4.x)p_min.x = p4.x;
    if(p_min.y>=p2.y)p_min.y = p2.y;
    if(p_min.y>=p3.y)p_min.y = p3.y;
    if(p_min.y>=p4.y)p_min.y = p4.y;
    p_max = p1;
    if(p_max.x<=p2.x)p_max.x = p2.x;
    if(p_max.x<=p3.x)p_max.x = p3.x;
    if(p_max.x<=p4.x)p_max.x = p4.x;
    if(p_max.y<=p2.y)p_max.y = p2.y;
    if(p_max.y<=p3.y)p_max.y = p3.y;
    if(p_max.y<=p4.y)p_max.y = p4.y;
    cv::Rect Rect(p_min.x, p_min.y, p_max.x - p_min.x, p_max.y - p_min.y);
    for( size_t i = 0; i < squares.size(); i++ ){
        const Point* p = &squares[i][0];
        int n = (int)squares[i].size();
        fillPoly( mask, &p, &n, 1, Scalar( 255, 255, 255 ), 8 );  
        cv::bitwise_and(image, mask, result);;
    }
    if (squares_size != squares.size()){
        rect.push_back(Rect); 
    }
           
    for( size_t i = 0; i < squares.size(); i++ ){
        ss << i;
        str = ss.str();
        roiImg[i] = result(rect[i]);
        cv::Canny(roiImg[i].clone(), roiImg[i], 70, 170, 3);
        imshow(str, roiImg[i]);
        ss.str("");
        vector <Point> pointList;
        for(int y = 0; y < roiImg[i].rows; y++)
            {
                for(int x = 0; x < roiImg[i].cols; x++)
                if(roiImg[i].at<uchar>(y,x) >= 115)
                {
                    pointList.push_back(Point(y,x));
                }
                if(pointList.size()>POINT_DETECT)status = 1;
                else status = 0;
            }
            
       cout <<"list"<<pointList.size()<<endl;
       msg.append(str).append(std::to_string(status)).append("-");
       
        pointList.clear();
    }
    cout << msg <<endl;
    squares_size = squares.size();
    
}
return 0;
    
}
static void drawSquares( Mat& image, Mat& mask, const vector<vector<Point> >& squares ){
    int count =0 ;
    string str;
    stringstream ss;
    cv::Mat imgClone = image.clone();

    for( size_t i = 0; i < squares.size(); i++ )
    {
        const Point* p = &squares[i][0];
        count ++;
        ss << count;
        str = ss.str();
        int n = (int)squares[i].size();
        polylines(imgClone, &p, &n, 1, true, Scalar(0,255,0), 2, LINE_AA);
        putText(imgClone, str, Point(p->x,p->y), FONT_HERSHEY_SIMPLEX, 0.5, Scalar(0, 255, 0));  
        ss.str("");
        imshow("My Window", imgClone);
    }
}

char analyzeFrame(const VideoFrameRef& frame, Mat& depth_img, Mat& color_img) {
    DepthPixel* depth_img_data;
    RGB888Pixel* color_img_data;

    int w = frame.getWidth();
    int h = frame.getHeight();

    depth_img = Mat(h, w, CV_16U);
    color_img = Mat(h, w, CV_8UC3);
    Mat depth_img_8u;
	
    switch (frame.getVideoMode().getPixelFormat())
    {
        case PIXEL_FORMAT_DEPTH_1_MM: return 'm';
        case PIXEL_FORMAT_DEPTH_100_UM:

            depth_img_data = (DepthPixel*)frame.getData();

            memcpy(depth_img.data, depth_img_data, h*w*sizeof(DepthPixel));

            normalize(depth_img, depth_img_8u, 255, 0, NORM_MINMAX);

            depth_img_8u.convertTo(depth_img_8u, CV_8U);

            return 'd';
        case PIXEL_FORMAT_RGB888:
            color_img_data = (RGB888Pixel*)frame.getData();

            memcpy(color_img.data, color_img_data, h*w*sizeof(RGB888Pixel));

            cvtColor(color_img, color_img, COLOR_RGB2BGR);
		
            return 'c';
        default:
            printf("Unknown format\n");
            return 'u';
    }
}
void iot_subscribe_callback_handler(AWS_IoT_Client *pClient, char *topicName, uint16_t topicNameLen,
									IoT_Publish_Message_Params *params, void *pData) {
	IOT_UNUSED(pData);
	IOT_UNUSED(pClient);
	IOT_INFO("Subscribe callback");
	IOT_INFO("%.*s\t%.*s", topicNameLen, topicName, (int) params->payloadLen, params->payload);
}

void disconnectCallbackHandler(AWS_IoT_Client *pClient, void *data) {
	IOT_WARN("MQTT Disconnect");
	IoT_Error_t rc = FAILURE;

	if(NULL == pClient) {
		return;
	}

	IOT_UNUSED(data);

	if(aws_iot_is_autoreconnect_enabled(pClient)) {
		IOT_INFO("Auto Reconnect is enabled, Reconnecting attempt will start now");
	} else {
		IOT_WARN("Auto Reconnect not enabled. Starting manual reconnect...");
		rc = aws_iot_mqtt_attempt_reconnect(pClient);
		if(NETWORK_RECONNECTED == rc) {
			IOT_WARN("Manual Reconnect Successful");
		} else {
			IOT_WARN("Manual Reconnect Failed - %d", rc);
		}
	}
}

int main()
{	
//////////////////////////////////////////////////
	bool infinitePublishFlag = true;
	char rootCA[PATH_MAX + 1];
	char clientCRT[PATH_MAX + 1];
	char clientKey[PATH_MAX + 1];
	char CurrentWD[PATH_MAX + 1];
	IoT_Error_t rc = FAILURE;

	AWS_IoT_Client client;
	IoT_Client_Init_Params mqttInitParams = iotClientInitParamsDefault;
	IoT_Client_Connect_Params connectParams = iotClientConnectParamsDefault;

	IoT_Publish_Message_Params paramsQOS0;
	IOT_INFO("\nAWS IoT SDK Version %d.%d.%d-%s\n", VERSION_MAJOR, VERSION_MINOR, VERSION_PATCH, VERSION_TAG);

	getcwd(CurrentWD, sizeof(CurrentWD));
	snprintf(rootCA, PATH_MAX + 1, "%s/%s/%s", CurrentWD, certDirectory, AWS_IOT_ROOT_CA_FILENAME);
	snprintf(clientCRT, PATH_MAX + 1, "%s/%s/%s", CurrentWD, certDirectory, AWS_IOT_CERTIFICATE_FILENAME);
	snprintf(clientKey, PATH_MAX + 1, "%s/%s/%s", CurrentWD, certDirectory, AWS_IOT_PRIVATE_KEY_FILENAME);

	IOT_DEBUG("rootCA %s", rootCA);
	IOT_DEBUG("clientCRT %s", clientCRT);
	IOT_DEBUG("clientKey %s", clientKey);
	mqttInitParams.enableAutoReconnect = false; // We enable this later below
	mqttInitParams.pHostURL = HostAddress;
	mqttInitParams.port = port;
	mqttInitParams.pRootCALocation = rootCA;
	mqttInitParams.pDeviceCertLocation = clientCRT;
	mqttInitParams.pDevicePrivateKeyLocation = clientKey;
	mqttInitParams.mqttCommandTimeout_ms = 20000;
	mqttInitParams.tlsHandshakeTimeout_ms = 5000;
	mqttInitParams.isSSLHostnameVerify = true;
	mqttInitParams.disconnectHandler = disconnectCallbackHandler;
	mqttInitParams.disconnectHandlerData = NULL;

	rc = aws_iot_mqtt_init(&client, &mqttInitParams);
	if(SUCCESS != rc) {
		IOT_ERROR("aws_iot_mqtt_init returned error : %d ", rc);
		return rc;
	}

	connectParams.keepAliveIntervalInSec = 600;
	connectParams.isCleanSession = true;
	connectParams.MQTTVersion = MQTT_3_1_1;
	connectParams.pClientID = AWS_IOT_MQTT_CLIENT_ID;
	connectParams.clientIDLen = (uint16_t) strlen(AWS_IOT_MQTT_CLIENT_ID);
	connectParams.isWillMsgPresent = false;

	IOT_INFO("Connecting...");
	rc = aws_iot_mqtt_connect(&client, &connectParams);
	if(SUCCESS != rc) {
		IOT_ERROR("Error(%d) connecting to %s:%d", rc, mqttInitParams.pHostURL, mqttInitParams.port);
		return rc;
	}
	/*
	 * Enable Auto Reconnect functionality. Minimum and Maximum time of Exponential backoff are set in aws_iot_config.h
	 *  #AWS_IOT_MQTT_MIN_RECONNECT_WAIT_INTERVAL
	 *  #AWS_IOT_MQTT_MAX_RECONNECT_WAIT_INTERVAL
	 */
	rc = aws_iot_mqtt_autoreconnect_set_status(&client, true);
	if(SUCCESS != rc) {
		IOT_ERROR("Unable to set Auto Reconnect to true - %d", rc);
		return rc;
	}
	paramsQOS0.qos = QOS0;
	paramsQOS0.payload = (void *)cPayload;
	paramsQOS0.isRetained = 0;

	if(msg != 0) {
		infinitePublishFlag = false;
	}
///////////////////////////////////////////////////
    std::vector<Point> points;
    Status rc2 = OpenNI::initialize();
    if (rc2 != STATUS_OK)
    {
        printf("Initialize failed\n%s\n", OpenNI::getExtendedError());
        return 1;
    }

    Device device;
    rc2 = device.open(ANY_DEVICE);
    if (rc2 != STATUS_OK)
    {
        printf("Couldn't open device\n%s\n", OpenNI::getExtendedError());
        return 2;
    }

    VideoStream depth, color;

    if (device.getSensorInfo(SENSOR_DEPTH) != NULL)
    {
        rc2 = depth.create(device, SENSOR_DEPTH);
        if (rc2 == STATUS_OK)
        {
            VideoMode depth_mode = depth.getVideoMode();
            depth_mode.setFps(30);
            depth_mode.setResolution(640, 480);
            depth_mode.setPixelFormat(PIXEL_FORMAT_DEPTH_100_UM);
            depth.setVideoMode(depth_mode);

            rc2 = depth.start();
            if (rc2 != STATUS_OK)
            {
                printf("Couldn't start the color stream\n%s\n", OpenNI::getExtendedError());
            }
        }
        else
        {
            printf("Couldn't create depth stream\n%s\n", OpenNI::getExtendedError());
        }
    }

    if (device.getSensorInfo(SENSOR_COLOR) != NULL)
    {
        rc2 = color.create(device, SENSOR_COLOR);
        if (rc2 == STATUS_OK)
        {
            VideoMode color_mode = color.getVideoMode();
            color_mode.setFps(30);
            color_mode.setResolution(640, 480);
            color_mode.setPixelFormat(PIXEL_FORMAT_RGB888);
            color.setVideoMode(color_mode);

            rc2 = color.start();
            if (rc2 != STATUS_OK)
            {
                printf("Couldn't start the color stream\n%s\n", OpenNI::getExtendedError());
            }
        }
        else
        {
            printf("Couldn't create color stream\n%s\n", OpenNI::getExtendedError());
        }
    }

    VideoFrameRef frame;

    VideoStream* streams[] = {&depth, &color};

	int codec = CV_FOURCC('D','I','V', 'X');
    Size output_size(VIDEO_FRAME_WIDTH, VIDEO_FRAME_HEIGHT);

    string depth_filename = "depth.avi";
	string bgr_filename = "bgr.avi";
    
    Mat depthMap;
	Mat bgrImage;
	Mat depthImg, colorImg, grayImage;

    Mat crop_depthMap;
    Mat crop_grayImage;
    cv::Mat mask(480,640,CV_8UC3, cv::Scalar(0,0,0));
    char key = 0;

    bool start = false;
    bool stop = false;

    if(is_save_file)
    {
        depth_videoWriter.open(depth_filename, codec, 24, output_size, false);
	bgr_videoWriter.open(bgr_filename, codec, 24, output_size, true);
    }
	cout<< " Press s to start and f to stop"<< endl<< flush;
	namedWindow("My Window", 1);
    setMouseCallback("My Window", CallBackFunc, &colorImg);
    while((NETWORK_ATTEMPTING_RECONNECT == rc || NETWORK_RECONNECTED == rc || SUCCESS == rc)){
		/////////////////////////////////////////////////
		rc = aws_iot_mqtt_yield(&client, 100);
		if(NETWORK_ATTEMPTING_RECONNECT == rc) {	
			// If the client is attempting to reconnect we will skip the rest of the loop.
			continue;
		}
		IOT_INFO("-->sleep");
	//////////////////////////////////////////////////////
		key = getkey();
        if( key == 's')
            start = true;
        if( key == 'f')
            stop = true;
        if( stop ) break;

        if( start )
        {       
		    int readyStream = -1;
		    rc2 = OpenNI::waitForAnyStream(streams, 2, &readyStream, SAMPLE_READ_WAIT_TIMEOUT);
		    if (rc2 != STATUS_OK)
		    {
		        printf("Wait failed! (timeout is %d ms)\n%s\n", SAMPLE_READ_WAIT_TIMEOUT, OpenNI::getExtendedError());
		        break;
		    }

		    switch (readyStream)
		    {
		    case 0:
		        // Depth
		        depth.readFrame(&frame);
		        break;
		    case 1:
		        // Color
		        color.readFrame(&frame);
		        break;
		    default:
		        printf("Unxpected stream\n");
		    }

		     char recordStatus = analyzeFrame(frame, depthImg, colorImg);
			if (recordStatus == 'c') {
                cvtColor(colorImg, grayImage, CV_BGR2GRAY);
                Rect roi(0, 3 * grayImage.rows / 4, grayImage.cols, grayImage.rows / 4); //c?t ?nh
                Mat imgROI = grayImage(roi);
                
                cv::threshold(imgROI, imgROI, 160, 255, CV_THRESH_BINARY);
                imshow("My Window", colorImg);
                cv::circle(colorImg, Point(cursor_x, cursor_y), 1, Scalar(0, 0, 255), 5);
                drawSquares(colorImg, mask, squares);
                int n = cutImage(colorImg, mask, squares);
		        strcpy(mess, msg.c_str());
		        sprintf(cPayload,"%s", mess);
		        paramsQOS0.payloadLen = strlen(cPayload);
                msg = "";
                time_t seconds;
                seconds = time (NULL)%10;
                
                if (seconds==0)
                {    
                    if (temp==true)rc = aws_iot_mqtt_publish(&client, "sdkTest/sub", 11, &paramsQOS0);	
                    temp = false;   
                }
                else temp =true;
               // cout <<temp<<endl;
                
                waitKey(1);
			}

		    char key = waitKey(1);

		    if( key == 27 ) break;
				
		
		}
    }

	if(is_save_file )
    {
        depth_videoWriter.release();
        bgr_videoWriter.release();
    }

    depth.stop();
    color.stop();
    depth.destroy();
    color.destroy();
    device.close();
    OpenNI::shutdown();

	aws_iot_mqtt_yield(&client, 100);

	if(SUCCESS != rc) {
		IOT_ERROR("An error occurred in the loop.\n");
	} else {
		IOT_INFO("Publish done\n");
	}
    return 0;
}
