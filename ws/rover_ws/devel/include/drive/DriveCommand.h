// Generated by gencpp from file drive/DriveCommand.msg
// DO NOT EDIT!


#ifndef DRIVE_MESSAGE_DRIVECOMMAND_H
#define DRIVE_MESSAGE_DRIVECOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace drive
{
template <class ContainerAllocator>
struct DriveCommand_
{
  typedef DriveCommand_<ContainerAllocator> Type;

  DriveCommand_()
    : header()
    , command()  {
    }
  DriveCommand_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , command(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;





  typedef boost::shared_ptr< ::drive::DriveCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::drive::DriveCommand_<ContainerAllocator> const> ConstPtr;

}; // struct DriveCommand_

typedef ::drive::DriveCommand_<std::allocator<void> > DriveCommand;

typedef boost::shared_ptr< ::drive::DriveCommand > DriveCommandPtr;
typedef boost::shared_ptr< ::drive::DriveCommand const> DriveCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::drive::DriveCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::drive::DriveCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace drive

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'drive': ['/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/drive/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::drive::DriveCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::drive::DriveCommand_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drive::DriveCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::drive::DriveCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drive::DriveCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::drive::DriveCommand_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::drive::DriveCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "94fafcb7d040f13f0802c9415e70b9f4";
  }

  static const char* value(const ::drive::DriveCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x94fafcb7d040f13fULL;
  static const uint64_t static_value2 = 0x0802c9415e70b9f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::drive::DriveCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "drive/DriveCommand";
  }

  static const char* value(const ::drive::DriveCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::drive::DriveCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
string command\n\
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

  static const char* value(const ::drive::DriveCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::drive::DriveCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.command);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DriveCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::drive::DriveCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::drive::DriveCommand_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DRIVE_MESSAGE_DRIVECOMMAND_H
