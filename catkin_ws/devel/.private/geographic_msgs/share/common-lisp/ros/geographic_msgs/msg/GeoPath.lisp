; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude GeoPath.msg.html

(cl:defclass <GeoPath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (poses
    :reader poses
    :initarg :poses
    :type (cl:vector geographic_msgs-msg:GeoPoseStamped)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:GeoPoseStamped :initial-element (cl:make-instance 'geographic_msgs-msg:GeoPoseStamped))))
)

(cl:defclass GeoPath (<GeoPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeoPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeoPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<GeoPath> is deprecated: use geographic_msgs-msg:GeoPath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GeoPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:header-val is deprecated.  Use geographic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <GeoPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:poses-val is deprecated.  Use geographic_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeoPath>) ostream)
  "Serializes a message object of type '<GeoPath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeoPath>) istream)
  "Deserializes a message object of type '<GeoPath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geographic_msgs-msg:GeoPoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeoPath>)))
  "Returns string type for a message object of type '<GeoPath>"
  "geographic_msgs/GeoPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeoPath)))
  "Returns string type for a message object of type 'GeoPath"
  "geographic_msgs/GeoPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeoPath>)))
  "Returns md5sum for a message object of type '<GeoPath>"
  "1476008e63041203a89257cfad97308f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeoPath)))
  "Returns md5sum for a message object of type 'GeoPath"
  "1476008e63041203a89257cfad97308f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeoPath>)))
  "Returns full string definition for message of type '<GeoPath>"
  (cl:format cl:nil "std_msgs/Header header~%geographic_msgs/GeoPoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoseStamped~%Header header~%geographic_msgs/GeoPose pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeoPath)))
  "Returns full string definition for message of type 'GeoPath"
  (cl:format cl:nil "std_msgs/Header header~%geographic_msgs/GeoPoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoseStamped~%Header header~%geographic_msgs/GeoPose pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeoPath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeoPath>))
  "Converts a ROS message object to a list"
  (cl:list 'GeoPath
    (cl:cons ':header (header msg))
    (cl:cons ':poses (poses msg))
))
