rock_publisher
==============

msg that describes how detections will be sent to the UI

there's a bunch of crap that eric said he didn't want in here, sorry, 
i'll fix it later, i don't really understand what i am doing
  - adam


also here's alan's readme, because he was the one who actually wrote this stuff:


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
