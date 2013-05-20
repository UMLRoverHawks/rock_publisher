rock_publisher
==============

The rock_publisher package works in concordance with a rock detection program that 
finds rocks in an image and shows their locations by putting a box around it. If 
there are multiple rocks in a box, there will be multiple boxes as well. 

Each imgData structure represents a location of one of these boxes.
imgData.msg: 
  int32 x :		the x coordinate of the top left corner of the box
  int32 y : 		the y coordinate of the top left corner of the box
  int32 width : 	the width of the box
  int32 height : 	the height of the box
  colorRGBA color:  	the color of the rock 
  string cameraID : 	the name of the camera where the rock was detected 

imgDataArray.msg:
  imgData[] rockData :	array containing all the imgData's that have all the rock locations

How to Run rock_publisher:
  1. Untar the file into a ROS workspace. It will create a package called rock_publisher.

  2. To run the publisher, use:
    rosrun rock_publisher rock_publisher

  3. To run the subscriber, use:
    rosrun rock_subscriber rock_subscriber
    
To use the custom messages:
  1. Uncomment this line from your CMakeLists.txt
    - #rosbuild_genmsg()
  2. Copy the msg directory and the files in it into your package.
     If your package name is my_package, the msg directory should be in my_package/msg

  3. Use these include statements:
    - #include <your_package_name::imgData.h>
    - #include <your_package_name::imgDataArray.h>

