#include "ros/ros.h"
#include "std_msgs/String.h"
#include <rock_publisher/imgData.h>
#include <rock_publisher/imgDataArray.h>

class RockSubscriber
{
private:
  ros::NodeHandle nh_;
  ros::Subscriber sub ;
public:
  RockSubscriber()
  {
    sub = nh_.subscribe("rockData", 1000, &RockSubscriber::rockCb, this );
  }

  void rockCb(const rock_publisher::imgDataArray::ConstPtr& msg)
  {
    for ( int i = 0 ; i < msg->rockData.size() ; i++ ) {
      const rock_publisher::imgData &data = msg->rockData[i] ;
      ROS_INFO( "x: %d, y: %d, width: %d, height: %d",
		data.x, data.y, data.width, data.height ) ;
    }
  }
};

int main(int argc, char* argv[]) {
  ros::init(argc, argv, "rock_subscriber");
  RockSubscriber rockSubscriber;
  ros::spin();
  return 0;
}
