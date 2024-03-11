// Generated by gencpp from file erasor/node.msg
// DO NOT EDIT!


#ifndef ERASOR_MESSAGE_NODE_H
#define ERASOR_MESSAGE_NODE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose.h>
#include <sensor_msgs/PointCloud2.h>
#include <geometry_msgs/Pose.h>
#include <sensor_msgs/CompressedImage.h>
#include <sensor_msgs/NavSatFix.h>

namespace erasor
{
template <class ContainerAllocator>
struct node_
{
  typedef node_<ContainerAllocator> Type;

  node_()
    : header()
    , odom()
    , odomCov()
    , lidar()
    , lidarOdom()
    , image()
    , gps()  {
      odomCov.assign(0.0);
  }
  node_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , odom(_alloc)
    , odomCov()
    , lidar(_alloc)
    , lidarOdom(_alloc)
    , image(_alloc)
    , gps(_alloc)  {
  (void)_alloc;
      odomCov.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _odom_type;
  _odom_type odom;

   typedef boost::array<double, 36>  _odomCov_type;
  _odomCov_type odomCov;

   typedef  ::sensor_msgs::PointCloud2_<ContainerAllocator>  _lidar_type;
  _lidar_type lidar;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _lidarOdom_type;
  _lidarOdom_type lidarOdom;

   typedef  ::sensor_msgs::CompressedImage_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef  ::sensor_msgs::NavSatFix_<ContainerAllocator>  _gps_type;
  _gps_type gps;





  typedef boost::shared_ptr< ::erasor::node_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::erasor::node_<ContainerAllocator> const> ConstPtr;

}; // struct node_

typedef ::erasor::node_<std::allocator<void> > node;

typedef boost::shared_ptr< ::erasor::node > nodePtr;
typedef boost::shared_ptr< ::erasor::node const> nodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::erasor::node_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::erasor::node_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::erasor::node_<ContainerAllocator1> & lhs, const ::erasor::node_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.odom == rhs.odom &&
    lhs.odomCov == rhs.odomCov &&
    lhs.lidar == rhs.lidar &&
    lhs.lidarOdom == rhs.lidarOdom &&
    lhs.image == rhs.image &&
    lhs.gps == rhs.gps;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::erasor::node_<ContainerAllocator1> & lhs, const ::erasor::node_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace erasor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::erasor::node_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::erasor::node_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::erasor::node_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::erasor::node_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::erasor::node_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::erasor::node_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::erasor::node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "369562eda9795c55aa23013a6af260da";
  }

  static const char* value(const ::erasor::node_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x369562eda9795c55ULL;
  static const uint64_t static_value2 = 0xaa23013a6af260daULL;
};

template<class ContainerAllocator>
struct DataType< ::erasor::node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "erasor/node";
  }

  static const char* value(const ::erasor::node_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::erasor::node_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"geometry_msgs/Pose odom\n"
"float64[36] odomCov\n"
"sensor_msgs/PointCloud2 lidar\n"
"geometry_msgs/Pose lidarOdom\n"
"sensor_msgs/CompressedImage image\n"
"sensor_msgs/NavSatFix gps\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointCloud2\n"
"# This message holds a collection of N-dimensional points, which may\n"
"# contain additional information such as normals, intensity, etc. The\n"
"# point data is stored as a binary blob, its layout described by the\n"
"# contents of the \"fields\" array.\n"
"\n"
"# The point cloud data may be organized 2d (image-like) or 1d\n"
"# (unordered). Point clouds organized as 2d images may be produced by\n"
"# camera depth sensors such as stereo or time-of-flight.\n"
"\n"
"# Time of sensor data acquisition, and the coordinate frame ID (for 3d\n"
"# points).\n"
"Header header\n"
"\n"
"# 2D structure of the point cloud. If the cloud is unordered, height is\n"
"# 1 and width is the length of the point cloud.\n"
"uint32 height\n"
"uint32 width\n"
"\n"
"# Describes the channels and their layout in the binary data blob.\n"
"PointField[] fields\n"
"\n"
"bool    is_bigendian # Is this data bigendian?\n"
"uint32  point_step   # Length of a point in bytes\n"
"uint32  row_step     # Length of a row in bytes\n"
"uint8[] data         # Actual point data, size is (row_step*height)\n"
"\n"
"bool is_dense        # True if there are no invalid points\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/PointField\n"
"# This message holds the description of one point entry in the\n"
"# PointCloud2 message format.\n"
"uint8 INT8    = 1\n"
"uint8 UINT8   = 2\n"
"uint8 INT16   = 3\n"
"uint8 UINT16  = 4\n"
"uint8 INT32   = 5\n"
"uint8 UINT32  = 6\n"
"uint8 FLOAT32 = 7\n"
"uint8 FLOAT64 = 8\n"
"\n"
"string name      # Name of field\n"
"uint32 offset    # Offset from start of point struct\n"
"uint8  datatype  # Datatype enumeration, see above\n"
"uint32 count     # How many elements in the field\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/CompressedImage\n"
"# This message contains a compressed image\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"\n"
"string format        # Specifies the format of the data\n"
"                     #   Acceptable values:\n"
"                     #     jpeg, png\n"
"uint8[] data         # Compressed image buffer\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/NavSatFix\n"
"# Navigation Satellite fix for any Global Navigation Satellite System\n"
"#\n"
"# Specified using the WGS 84 reference ellipsoid\n"
"\n"
"# header.stamp specifies the ROS time for this measurement (the\n"
"#        corresponding satellite time may be reported using the\n"
"#        sensor_msgs/TimeReference message).\n"
"#\n"
"# header.frame_id is the frame of reference reported by the satellite\n"
"#        receiver, usually the location of the antenna.  This is a\n"
"#        Euclidean frame relative to the vehicle, not a reference\n"
"#        ellipsoid.\n"
"Header header\n"
"\n"
"# satellite fix status information\n"
"NavSatStatus status\n"
"\n"
"# Latitude [degrees]. Positive is north of equator; negative is south.\n"
"float64 latitude\n"
"\n"
"# Longitude [degrees]. Positive is east of prime meridian; negative is west.\n"
"float64 longitude\n"
"\n"
"# Altitude [m]. Positive is above the WGS 84 ellipsoid\n"
"# (quiet NaN if no altitude is available).\n"
"float64 altitude\n"
"\n"
"# Position covariance [m^2] defined relative to a tangential plane\n"
"# through the reported position. The components are East, North, and\n"
"# Up (ENU), in row-major order.\n"
"#\n"
"# Beware: this coordinate system exhibits singularities at the poles.\n"
"\n"
"float64[9] position_covariance\n"
"\n"
"# If the covariance of the fix is known, fill it in completely. If the\n"
"# GPS receiver provides the variance of each measurement, put them\n"
"# along the diagonal. If only Dilution of Precision is available,\n"
"# estimate an approximate covariance from that.\n"
"\n"
"uint8 COVARIANCE_TYPE_UNKNOWN = 0\n"
"uint8 COVARIANCE_TYPE_APPROXIMATED = 1\n"
"uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2\n"
"uint8 COVARIANCE_TYPE_KNOWN = 3\n"
"\n"
"uint8 position_covariance_type\n"
"\n"
"================================================================================\n"
"MSG: sensor_msgs/NavSatStatus\n"
"# Navigation Satellite fix status for any Global Navigation Satellite System\n"
"\n"
"# Whether to output an augmented fix is determined by both the fix\n"
"# type and the last time differential corrections were received.  A\n"
"# fix is valid when status >= STATUS_FIX.\n"
"\n"
"int8 STATUS_NO_FIX =  -1        # unable to fix position\n"
"int8 STATUS_FIX =      0        # unaugmented fix\n"
"int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation\n"
"int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation\n"
"\n"
"int8 status\n"
"\n"
"# Bits defining which Global Navigation Satellite System signals were\n"
"# used by the receiver.\n"
"\n"
"uint16 SERVICE_GPS =     1\n"
"uint16 SERVICE_GLONASS = 2\n"
"uint16 SERVICE_COMPASS = 4      # includes BeiDou.\n"
"uint16 SERVICE_GALILEO = 8\n"
"\n"
"uint16 service\n"
;
  }

  static const char* value(const ::erasor::node_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::erasor::node_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.odom);
      stream.next(m.odomCov);
      stream.next(m.lidar);
      stream.next(m.lidarOdom);
      stream.next(m.image);
      stream.next(m.gps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::erasor::node_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::erasor::node_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "odom: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.odom);
    s << indent << "odomCov[]" << std::endl;
    for (size_t i = 0; i < v.odomCov.size(); ++i)
    {
      s << indent << "  odomCov[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.odomCov[i]);
    }
    s << indent << "lidar: ";
    s << std::endl;
    Printer< ::sensor_msgs::PointCloud2_<ContainerAllocator> >::stream(s, indent + "  ", v.lidar);
    s << indent << "lidarOdom: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.lidarOdom);
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::CompressedImage_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "gps: ";
    s << std::endl;
    Printer< ::sensor_msgs::NavSatFix_<ContainerAllocator> >::stream(s, indent + "  ", v.gps);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ERASOR_MESSAGE_NODE_H
