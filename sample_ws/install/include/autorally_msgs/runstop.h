// Generated by gencpp from file autorally_msgs/runstop.msg
// DO NOT EDIT!


#ifndef AUTORALLY_MSGS_MESSAGE_RUNSTOP_H
#define AUTORALLY_MSGS_MESSAGE_RUNSTOP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autorally_msgs
{
template <class ContainerAllocator>
struct runstop_
{
  typedef runstop_<ContainerAllocator> Type;

  runstop_()
    : header()
    , sender()
    , motionEnabled(false)  {
    }
  runstop_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sender(_alloc)
    , motionEnabled(false)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _sender_type;
  _sender_type sender;

   typedef uint8_t _motionEnabled_type;
  _motionEnabled_type motionEnabled;





  typedef boost::shared_ptr< ::autorally_msgs::runstop_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autorally_msgs::runstop_<ContainerAllocator> const> ConstPtr;

}; // struct runstop_

typedef ::autorally_msgs::runstop_<std::allocator<void> > runstop;

typedef boost::shared_ptr< ::autorally_msgs::runstop > runstopPtr;
typedef boost::shared_ptr< ::autorally_msgs::runstop const> runstopConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autorally_msgs::runstop_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autorally_msgs::runstop_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace autorally_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'autorally_msgs': ['/home/abeldavid/Data/ignitarium/projects/robotics/dev_bot_v1/sample_ws/src/autorally/autorally_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/kinetic/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::autorally_msgs::runstop_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autorally_msgs::runstop_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autorally_msgs::runstop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autorally_msgs::runstop_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autorally_msgs::runstop_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autorally_msgs::runstop_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autorally_msgs::runstop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "996dff250e70bc8cde0b272375a5684d";
  }

  static const char* value(const ::autorally_msgs::runstop_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x996dff250e70bc8cULL;
  static const uint64_t static_value2 = 0xde0b272375a5684dULL;
};

template<class ContainerAllocator>
struct DataType< ::autorally_msgs::runstop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autorally_msgs/runstop";
  }

  static const char* value(const ::autorally_msgs::runstop_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autorally_msgs::runstop_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
string sender\n\
bool motionEnabled\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::autorally_msgs::runstop_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autorally_msgs::runstop_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sender);
      stream.next(m.motionEnabled);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct runstop_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autorally_msgs::runstop_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autorally_msgs::runstop_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sender: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.sender);
    s << indent << "motionEnabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.motionEnabled);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTORALLY_MSGS_MESSAGE_RUNSTOP_H
