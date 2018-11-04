// Generated by gencpp from file isac/IKRequest.msg
// DO NOT EDIT!


#ifndef ISAC_MESSAGE_IKREQUEST_H
#define ISAC_MESSAGE_IKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <isac/ArmAngles.h>
#include <isac/ArmPosition.h>

namespace isac
{
template <class ContainerAllocator>
struct IKRequest_
{
  typedef IKRequest_<ContainerAllocator> Type;

  IKRequest_()
    : arm_angle_initial()
    , position()  {
    }
  IKRequest_(const ContainerAllocator& _alloc)
    : arm_angle_initial(_alloc)
    , position(_alloc)  {
  (void)_alloc;
    }



   typedef  ::isac::ArmAngles_<ContainerAllocator>  _arm_angle_initial_type;
  _arm_angle_initial_type arm_angle_initial;

   typedef  ::isac::ArmPosition_<ContainerAllocator>  _position_type;
  _position_type position;





  typedef boost::shared_ptr< ::isac::IKRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::isac::IKRequest_<ContainerAllocator> const> ConstPtr;

}; // struct IKRequest_

typedef ::isac::IKRequest_<std::allocator<void> > IKRequest;

typedef boost::shared_ptr< ::isac::IKRequest > IKRequestPtr;
typedef boost::shared_ptr< ::isac::IKRequest const> IKRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::isac::IKRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::isac::IKRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace isac

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'isac': ['/home/pawan/Desktop/UD/ROS/ws/rover_ws/src/isac/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::isac::IKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::isac::IKRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::isac::IKRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::isac::IKRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::isac::IKRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::isac::IKRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::isac::IKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b0255036ee48d2ab6aae02ed3b772509";
  }

  static const char* value(const ::isac::IKRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb0255036ee48d2abULL;
  static const uint64_t static_value2 = 0x6aae02ed3b772509ULL;
};

template<class ContainerAllocator>
struct DataType< ::isac::IKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "isac/IKRequest";
  }

  static const char* value(const ::isac::IKRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::isac::IKRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ArmAngles arm_angle_initial\n\
ArmPosition position\n\
\n\
================================================================================\n\
MSG: isac/ArmAngles\n\
Header header\n\
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
\n\
================================================================================\n\
MSG: isac/ArmPosition\n\
Header header\n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::isac::IKRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::isac::IKRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arm_angle_initial);
      stream.next(m.position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IKRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::isac::IKRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::isac::IKRequest_<ContainerAllocator>& v)
  {
    s << indent << "arm_angle_initial: ";
    s << std::endl;
    Printer< ::isac::ArmAngles_<ContainerAllocator> >::stream(s, indent + "  ", v.arm_angle_initial);
    s << indent << "position: ";
    s << std::endl;
    Printer< ::isac::ArmPosition_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ISAC_MESSAGE_IKREQUEST_H
