#include "ros/ros.h"
#include "std_msgs/String.h"
#include <rock_publisher/imgData.h>
#include <rock_publisher/imgDataArray.h>
#include <sstream>
#include <cstdlib>

/**
 * This tutorial simulates a camera sending imgData msgs over the ROS system.
 */
int main(int argc, char **argv)
{

  ros::init(argc, argv, "rock_publisher");
  ros::NodeHandle n;
  ros::Publisher pub = n.advertise<rock_publisher::imgDataArray>( "rockData", 1000 ) ;
  ros::Rate loop_rate(10);

  if ( argc != 2 ) {
    ROS_INFO( "Usage: ./rock_publisher_instance cameraID" ) ;
    return -1 ;
  }
    
  int count = 0;
  while (ros::ok()) {

    rock_publisher::imgData rockData ;
    rock_publisher::imgDataArray rocksMsg ;

    for ( int i = 0 ; i < count % 5 ; i++ ) {
      rockData.x = count ;
      rockData.y = count + 1 ;
      rockData.width = count + 2 ;
      rockData.height = count + 3 ;
      rockData.color.r = ( count * std::rand()) % 255; 
      rockData.color.g = ( (count + 1) * std::rand()) % 255; 
      rockData.color.b = ( (count + 2) * std::rand()) % 255; 
      rockData.color.a = ( (count + 3) * std::rand()) % 255; 
      rockData.cameraID = count % 4;
      rocksMsg.rockData.push_back(rockData) ;
    }
    pub.publish(rocksMsg) ;

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
