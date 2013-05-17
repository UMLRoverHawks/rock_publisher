#include "ros/ros.h"
#include "std_msgs/String.h"
#include <rock_publisher/imgData.h>
#include <rock_publisher/imgDataArray.h>
#include <sstream>

/**
 * This tutorial demonstrates simple sending of imgData msg over the ROS system.
 */
int main(int argc, char **argv)
{

  ros::init(argc, argv, "talker");
  ros::NodeHandle n;

  ros::Publisher pub = n.advertise<rock_publisher::imgDataArray>( "rockData", 1000 ) ;

  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok()) {

    rock_publisher::imgData rockData ;
    rock_publisher::imgDataArray rocksMsg ;

    rockData.x = count ;
    rockData.y = count + 1 ;
    rockData.width = count + 2 ;
    rockData.height = count + 3 ;
    rockData.color = "red" ;
    rocksMsg.rockData.push_back(rockData) ;

    pub.publish(rocksMsg) ;

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
