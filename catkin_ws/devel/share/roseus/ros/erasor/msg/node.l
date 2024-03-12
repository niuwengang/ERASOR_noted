;; Auto-generated. Do not edit!


(when (boundp 'erasor::node)
  (if (not (find-package "ERASOR"))
    (make-package "ERASOR"))
  (shadow 'node (find-package "ERASOR")))
(unless (find-package "ERASOR::NODE")
  (make-package "ERASOR::NODE"))

(in-package "ROS")
;;//! \htmlinclude node.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass erasor::node
  :super ros::object
  :slots (_header _odom _odomCov _lidar _lidarOdom _image _g ))

(defmethod erasor::node
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:odom __odom) (instance geometry_msgs::Pose :init))
    ((:odomCov __odomCov) (make-array 36 :initial-element 0.0 :element-type :float))
    ((:lidar __lidar) (instance sensor_msgs::PointCloud2 :init))
    ((:lidarOdom __lidarOdom) (instance geometry_msgs::Pose :init))
    ((:image __image) (instance sensor_msgs::CompressedImage :init))
    ((:g __g) (instance sensor_msgs::NavSatFix :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _odom __odom)
   (setq _odomCov __odomCov)
   (setq _lidar __lidar)
   (setq _lidarOdom __lidarOdom)
   (setq _image __image)
   (setq _g __g)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:odom
   (&rest __odom)
   (if (keywordp (car __odom))
       (send* _odom __odom)
     (progn
       (if __odom (setq _odom (car __odom)))
       _odom)))
  (:odomCov
   (&optional __odomCov)
   (if __odomCov (setq _odomCov __odomCov)) _odomCov)
  (:lidar
   (&rest __lidar)
   (if (keywordp (car __lidar))
       (send* _lidar __lidar)
     (progn
       (if __lidar (setq _lidar (car __lidar)))
       _lidar)))
  (:lidarOdom
   (&rest __lidarOdom)
   (if (keywordp (car __lidarOdom))
       (send* _lidarOdom __lidarOdom)
     (progn
       (if __lidarOdom (setq _lidarOdom (car __lidarOdom)))
       _lidarOdom)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:g
   (&rest __g)
   (if (keywordp (car __g))
       (send* _g __g)
     (progn
       (if __g (setq _g (car __g)))
       _g)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _odom
    (send _odom :serialization-length)
    ;; float64[36] _odomCov
    (* 8    36)
    ;; sensor_msgs/PointCloud2 _lidar
    (send _lidar :serialization-length)
    ;; geometry_msgs/Pose _lidarOdom
    (send _lidarOdom :serialization-length)
    ;; sensor_msgs/CompressedImage _image
    (send _image :serialization-length)
    ;; sensor_msgs/NavSatFix _g
    (send _g :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _odom
       (send _odom :serialize s)
     ;; float64[36] _odomCov
     (dotimes (i 36)
       (sys::poke (elt _odomCov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; sensor_msgs/PointCloud2 _lidar
       (send _lidar :serialize s)
     ;; geometry_msgs/Pose _lidarOdom
       (send _lidarOdom :serialize s)
     ;; sensor_msgs/CompressedImage _image
       (send _image :serialize s)
     ;; sensor_msgs/NavSatFix _g
       (send _g :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _odom
     (send _odom :deserialize buf ptr-) (incf ptr- (send _odom :serialization-length))
   ;; float64[36] _odomCov
   (dotimes (i (length _odomCov))
     (setf (elt _odomCov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; sensor_msgs/PointCloud2 _lidar
     (send _lidar :deserialize buf ptr-) (incf ptr- (send _lidar :serialization-length))
   ;; geometry_msgs/Pose _lidarOdom
     (send _lidarOdom :deserialize buf ptr-) (incf ptr- (send _lidarOdom :serialization-length))
   ;; sensor_msgs/CompressedImage _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; sensor_msgs/NavSatFix _g
     (send _g :deserialize buf ptr-) (incf ptr- (send _g :serialization-length))
   ;;
   self)
  )

(setf (get erasor::node :md5sum-) "0570ad233487d687f47841824e86c07e")
(setf (get erasor::node :datatype-) "erasor/node")
(setf (get erasor::node :definition-)
      "std_msgs/Header header
geometry_msgs/Pose odom
float64[36] odomCov
sensor_msgs/PointCloud2 lidar
geometry_msgs/Pose lidarOdom
sensor_msgs/CompressedImage image
sensor_msgs/NavSatFix g
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :erasor/node "0570ad233487d687f47841824e86c07e")


