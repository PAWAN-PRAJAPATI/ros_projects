// Generated by gencpp from file arm/ArmControls.msg
// DO NOT EDIT!


#ifndef ARM_MESSAGE_ARMCONTROLS_H
#define ARM_MESSAGE_ARMCONTROLS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace arm
{
template <class ContainerAllocator>
struct ArmControls_
{
  typedef ArmControls_<ContainerAllocator> Type;

  ArmControls_()
    : header()
    , command()
    , base_pwm(0)
    , shoulder_pwm(0)
    , elbow_pwm(0)
    , wrist_rot_pwm(0)
    , wrist_pwm(0)
    , gripper_pwm(0)  {
    }
  ArmControls_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , command(_alloc)
    , base_pwm(0)
    , shoulder_pwm(0)
    , elbow_pwm(0)
    , wrist_rot_pwm(0)
    , wrist_pwm(0)
    , gripper_pwm(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _command_type;
  _command_type command;

   typedef int32_t _base_pwm_type;
  _base_pwm_type base_pwm;

   typedef int32_t _shoulder_pwm_type;
  _shoulder_pwm_type shoulder_pwm;

   typedef int32_t _elbow_pwm_type;
  _elbow_pwm_type elbow_pwm;

   typedef int32_t _wrist_rot_pwm_type;
  _wrist_rot_pwm_type wrist_rot_pwm;

   typedef int32_t _wrist_pwm_type;
  _wrist_pwm_type wrist_pwm;

   typedef int32_t _gripper_pwm_type;
  _gripper_pwm_type gripper_pwm;





  typedef boost::shared_ptr< ::arm::ArmControls_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm::ArmControls_<ContainerAllocator> const> ConstPtr;

}; // struct ArmControls_

typedef ::arm::ArmControls_<std::allocator<void> > ArmControls;

typedef boost::shared_ptr< ::arm::ArmControls > ArmControlsPtr;
typedef boost::shared_ptr< ::arm::ArmControls const> ArmControlsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm::ArmControls_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm::ArmControls_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arm

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'arm': ['/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/arm/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arm::ArmControls_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm::ArmControls_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm::ArmControls_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm::ArmControls_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm::ArmControls_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm::ArmControls_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm::ArmControls_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e566e3b29b41e2d2d307d584c85b977";
  }

  static const char* value(const ::arm::ArmControls_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e566e3b29b41e2dULL;
  static const uint64_t static_value2 = 0x2d307d584c85b977ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm::ArmControls_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm/ArmControls";
  }

  static const char* value(const ::arm::ArmControls_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm::ArmControls_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
\n\
string command\n\
\n\
int32 base_pwm\n\
int32 shoulder_pwm\n\
int32 elbow_pwm\n\
int32 wrist_rot_pwm\n\
int32 wrist_pwm\n\
int32 gripper_pwm\n\
\n\
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

  static const char* value(const ::arm::ArmControls_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm::ArmControls_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.command);
      stream.next(m.base_pwm);
      stream.next(m.shoulder_pwm);
      stream.next(m.elbow_pwm);
      stream.next(m.wrist_rot_pwm);
      stream.next(m.wrist_pwm);
      stream.next(m.gripper_pwm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmControls_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm::ArmControls_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm::ArmControls_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "command: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.command);
    s << indent << "base_pwm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.base_pwm);
    s << indent << "shoulder_pwm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.shoulder_pwm);
    s << indent << "elbow_pwm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.elbow_pwm);
    s << indent << "wrist_rot_pwm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.wrist_rot_pwm);
    s << indent << "wrist_pwm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.wrist_pwm);
    s << indent << "gripper_pwm: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gripper_pwm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_MESSAGE_ARMCONTROLS_H
