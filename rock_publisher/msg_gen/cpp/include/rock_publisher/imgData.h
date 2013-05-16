/* Auto-generated by genmsg_cpp for file /home/aramus/fuerte_workspace/sandbox/rock_publisher/msg/imgData.msg */
#ifndef ROCK_PUBLISHER_MESSAGE_IMGDATA_H
#define ROCK_PUBLISHER_MESSAGE_IMGDATA_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace rock_publisher
{
template <class ContainerAllocator>
struct imgData_ {
  typedef imgData_<ContainerAllocator> Type;

  imgData_()
  : x(0)
  , y(0)
  , width(0)
  , height(0)
  , color()
  , cameraID()
  {
  }

  imgData_(const ContainerAllocator& _alloc)
  : x(0)
  , y(0)
  , width(0)
  , height(0)
  , color(_alloc)
  , cameraID(_alloc)
  {
  }

  typedef int32_t _x_type;
  int32_t x;

  typedef int32_t _y_type;
  int32_t y;

  typedef int32_t _width_type;
  int32_t width;

  typedef int32_t _height_type;
  int32_t height;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _color_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  color;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cameraID_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  cameraID;


  typedef boost::shared_ptr< ::rock_publisher::imgData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rock_publisher::imgData_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct imgData
typedef  ::rock_publisher::imgData_<std::allocator<void> > imgData;

typedef boost::shared_ptr< ::rock_publisher::imgData> imgDataPtr;
typedef boost::shared_ptr< ::rock_publisher::imgData const> imgDataConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::rock_publisher::imgData_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::rock_publisher::imgData_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace rock_publisher

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::rock_publisher::imgData_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::rock_publisher::imgData_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::rock_publisher::imgData_<ContainerAllocator> > {
  static const char* value() 
  {
    return "309b5933a1eb0d60807fbae024f5c23d";
  }

  static const char* value(const  ::rock_publisher::imgData_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x309b5933a1eb0d60ULL;
  static const uint64_t static_value2 = 0x807fbae024f5c23dULL;
};

template<class ContainerAllocator>
struct DataType< ::rock_publisher::imgData_<ContainerAllocator> > {
  static const char* value() 
  {
    return "rock_publisher/imgData";
  }

  static const char* value(const  ::rock_publisher::imgData_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::rock_publisher::imgData_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 x\n\
int32 y\n\
int32 width\n\
int32 height\n\
string color\n\
string cameraID\n\
";
  }

  static const char* value(const  ::rock_publisher::imgData_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::rock_publisher::imgData_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.width);
    stream.next(m.height);
    stream.next(m.color);
    stream.next(m.cameraID);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct imgData_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rock_publisher::imgData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::rock_publisher::imgData_<ContainerAllocator> & v) 
  {
    s << indent << "x: ";
    Printer<int32_t>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<int32_t>::stream(s, indent + "  ", v.y);
    s << indent << "width: ";
    Printer<int32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<int32_t>::stream(s, indent + "  ", v.height);
    s << indent << "color: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.color);
    s << indent << "cameraID: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cameraID);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ROCK_PUBLISHER_MESSAGE_IMGDATA_H

