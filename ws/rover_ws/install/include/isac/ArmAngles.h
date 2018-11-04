// Generated by gencpp from file isac/ArmAngles.msg
// DO NOT EDIT!


#ifndef ISAC_MESSAGE_ARMANGLES_H
#define ISAC_MESSAGE_ARMANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace isac
{
template <class ContainerAllocator>
struct ArmAngles_
{
  typedef ArmAngles_<ContainerAllocator> Type;

  ArmAngles_()
    : header()
    , shoulder(0.0)
    , elbow(0.0)
    , wrist(0.0)
    , gripper(0.0)
    , base(0.0)
    , wrist_rot(0.0)  {
    }
  ArmAngles_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , shoulder(0.0)
    , elbow(0.0)
    , wrist(0.0)
    , gripper(0.0)
    , base(0.0)
    , wrist_rot(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _shoulder_type;
  _shoulder_type shoulder;

   typedef float _elbow_type;
  _elbow_type elbow;

   typedef float _wrist_type;
  _wrist_type wrist;

   typedef float _gripper_type;
  _gripper_type gripper;

   typedef float _base_type;
  _base_type base;

   typedef float _wrist_rot_type;
  _wrist_rot_type wrist_rot;





  typedef boost::shared_ptr< ::isac::ArmAngles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::isac::ArmAngles_<ContainerAllocator> const> ConstPtr;

}; // struct ArmAngles_

typedef ::isac::ArmAngles_<std::allocator<void> > ArmAngles;

typedef boost::shared_ptr< ::isac::ArmAngles > ArmAnglesPtr;
typedef boost::shared_ptr< ::isac::ArmAngles const> ArmAnglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::isac::ArmAngles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::isac::ArmAngles_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace isac

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'isac': ['/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::isac::ArmAngles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::isac::ArmAngles_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::isac::ArmAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::isac::ArmAngles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::isac::ArmAngles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::isac::ArmAngles_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::isac::ArmAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2c5d832426f47963e7bf2c07138124a7";
  }

  static const char* value(const ::isac::ArmAngles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2c5d832426f47963ULL;
  static const uint64_t static_value2 = 0xe7bf2c07138124a7ULL;
};

template<class ContainerAllocator>
struct DataType< ::isac::ArmAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "isac/ArmAngles";
  }

  static const char* value(const ::isac::ArmAngles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::isac::ArmAngles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
float32 shoulder\n\
float32 elbow\n\
float32 wrist\n\
float32 gripper\n\
float32 base\n\
float32 wrist_rot\n\
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

  static const char* value(const ::isac::ArmAngles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::isac::ArmAngles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.shoulder);
      stream.next(m.elbow);
      stream.next(m.wrist);
      stream.next(m.gripper);
      stream.next(m.base);
      stream.next(m.wrist_rot);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ArmAngles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::isac::ArmAngles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::isac::ArmAngles_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "shoulder: ";
    Printer<float>::stream(s, indent + "  ", v.shoulder);
    s << indent << "elbow: ";
    Printer<float>::stream(s, indent + "  ", v.elbow);
    s << indent << "wrist: ";
    Printer<float>::stream(s, indent + "  ", v.wrist);
    s << indent << "gripper: ";
    Printer<float>::stream(s, indent + "  ", v.gripper);
    s << indent << "base: ";
    Printer<float>::stream(s, indent + "  ", v.base);
    s << indent << "wrist_rot: ";
    Printer<float>::stream(s, indent + "  ", v.wrist_rot);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISAC_MESSAGE_ARMANGLES_H
