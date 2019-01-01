// Generated by gencpp from file isac/FKsrv.msg
// DO NOT EDIT!


#ifndef ISAC_MESSAGE_FKSRV_H
#define ISAC_MESSAGE_FKSRV_H

#include <ros/service_traits.h>


#include <isac/FKsrvRequest.h>
#include <isac/FKsrvResponse.h>


namespace isac
{

struct FKsrv
{

typedef FKsrvRequest Request;
typedef FKsrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct FKsrv
} // namespace isac


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::isac::FKsrv > {
  static const char* value()
  {
    return "932b734ed40bf214a466ce1001c6d294";
  }

  static const char* value(const ::isac::FKsrv&) { return value(); }
};

template<>
struct DataType< ::isac::FKsrv > {
  static const char* value()
  {
    return "isac/FKsrv";
  }

  static const char* value(const ::isac::FKsrv&) { return value(); }
};


// service_traits::MD5Sum< ::isac::FKsrvRequest> should match 
// service_traits::MD5Sum< ::isac::FKsrv > 
template<>
struct MD5Sum< ::isac::FKsrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::isac::FKsrv >::value();
  }
  static const char* value(const ::isac::FKsrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::isac::FKsrvRequest> should match 
// service_traits::DataType< ::isac::FKsrv > 
template<>
struct DataType< ::isac::FKsrvRequest>
{
  static const char* value()
  {
    return DataType< ::isac::FKsrv >::value();
  }
  static const char* value(const ::isac::FKsrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::isac::FKsrvResponse> should match 
// service_traits::MD5Sum< ::isac::FKsrv > 
template<>
struct MD5Sum< ::isac::FKsrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::isac::FKsrv >::value();
  }
  static const char* value(const ::isac::FKsrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::isac::FKsrvResponse> should match 
// service_traits::DataType< ::isac::FKsrv > 
template<>
struct DataType< ::isac::FKsrvResponse>
{
  static const char* value()
  {
    return DataType< ::isac::FKsrv >::value();
  }
  static const char* value(const ::isac::FKsrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ISAC_MESSAGE_FKSRV_H