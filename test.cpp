#include "opencv2/highgui/highgui.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/photo/photo.hpp"
#include <opencv2/core.hpp>
#include <iostream>
#include <vector>
#include <sstream>
using namespace std;
using namespace cv;
vector<vector<Point> > squares;
vector<Point> approx;
int cursor_x = -1;
int cursor_y = -1;

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
       //   cout << "Right button of the mouse is clicked - position (" << x << ", " << y << ")" << endl;
     }
     else if  ( event == EVENT_MBUTTONDOWN )
     {
         // cout << "Middle button of the mouse is clicked - position (" << x << ", " << y << ")" << endl;
          
     }
     else if ( event == EVENT_MOUSEMOVE )
     {
          //cout << "Mouse move over the window - position (" << x << ", " << y << ")" << endl;
      
     }
}
static void drawSquares( Mat& image, Mat& mask, const vector<vector<Point> >& squares ){
    int count =0 ;
    string str;
    stringstream ss;
    
    for( size_t i = 0; i < squares.size(); i++ )
    {
        const Point* p = &squares[i][0];
        count ++;
        ss << count;
        str = ss.str();
        int n = (int)squares[i].size();
        polylines(image, &p, &n, 1, true, Scalar(0,255,0), 3, LINE_AA);
        fillPoly( mask, &p, &n, 1, Scalar( 255, 255, 255 ), 8 );  
        putText(image, str, Point(p->x,p->y), FONT_HERSHEY_SIMPLEX, 2, Scalar(0, 255, 0));
        
        cv::Mat result;
        cv::bitwise_and(image, mask, result);
        ss.str("");
        imshow("MASK Window", result);
    }
    
}
int main(int argc, char** argv)
{
     // Read image from file 
     Mat img = imread("MyPic.JPG");
     cv::Mat mask(img.rows,img.cols,CV_8UC3, cv::Scalar(0,0,0));
      //if fail to read the image
     if ( img.empty() ) 
     { 
          cout << "Error loading the image" << endl;
          return -1; 
     }
      //Create a window
     namedWindow("My Window", 1);
      //set the callback function for any mouse event
     setMouseCallback("My Window", CallBackFunc, &img);
     
     while (true)
        {
        //cout << "cursor" << cursor_x << ":" << cursor_y << endl;
        imshow("My Window", img);
        waitKey(2);
        cv::circle(img, Point(cursor_x, cursor_y), 1, Scalar(0, 0, 255), 5);
        drawSquares(img, mask, squares);
        }
     
      return 0;

}