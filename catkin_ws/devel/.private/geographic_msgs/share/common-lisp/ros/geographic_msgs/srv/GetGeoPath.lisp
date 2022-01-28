; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-srv)


;//! \htmlinclude GetGeoPath-request.msg.html

(cl:defclass <GetGeoPath-request> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint))
   (goal
    :reader goal
    :initarg :goal
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint)))
)

(cl:defclass GetGeoPath-request (<GetGeoPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGeoPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGeoPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<GetGeoPath-request> is deprecated: use geographic_msgs-srv:GetGeoPath-request instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GetGeoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:start-val is deprecated.  Use geographic_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetGeoPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:goal-val is deprecated.  Use geographic_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGeoPath-request>) ostream)
  "Serializes a message object of type '<GetGeoPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGeoPath-request>) istream)
  "Deserializes a message object of type '<GetGeoPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGeoPath-request>)))
  "Returns string type for a service object of type '<GetGeoPath-request>"
  "geographic_msgs/GetGeoPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeoPath-request)))
  "Returns string type for a service object of type 'GetGeoPath-request"
  "geographic_msgs/GetGeoPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGeoPath-request>)))
  "Returns md5sum for a message object of type '<GetGeoPath-request>"
  "ee0dbd181711a70f823cc5d415fa609b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGeoPath-request)))
  "Returns md5sum for a message object of type 'GetGeoPath-request"
  "ee0dbd181711a70f823cc5d415fa609b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGeoPath-request>)))
  "Returns full string definition for message of type '<GetGeoPath-request>"
  (cl:format cl:nil "# Searches for given start and goal the nearest route segments~%# and determine the path through the RouteNetwork~%~%geographic_msgs/GeoPoint start        # starting point~%geographic_msgs/GeoPoint goal         # goal point~%~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGeoPath-request)))
  "Returns full string definition for message of type 'GetGeoPath-request"
  (cl:format cl:nil "# Searches for given start and goal the nearest route segments~%# and determine the path through the RouteNetwork~%~%geographic_msgs/GeoPoint start        # starting point~%geographic_msgs/GeoPoint goal         # goal point~%~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGeoPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGeoPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGeoPath-request
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude GetGeoPath-response.msg.html

(cl:defclass <GetGeoPath-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (plan
    :reader plan
    :initarg :plan
    :type geographic_msgs-msg:GeoPath
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPath))
   (network
    :reader network
    :initarg :network
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (start_seg
    :reader start_seg
    :initarg :start_seg
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (goal_seg
    :reader goal_seg
    :initarg :goal_seg
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetGeoPath-response (<GetGeoPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGeoPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGeoPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<GetGeoPath-response> is deprecated: use geographic_msgs-srv:GetGeoPath-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:success-val is deprecated.  Use geographic_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:status-val is deprecated.  Use geographic_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:plan-val is deprecated.  Use geographic_msgs-srv:plan instead.")
  (plan m))

(cl:ensure-generic-function 'network-val :lambda-list '(m))
(cl:defmethod network-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:network-val is deprecated.  Use geographic_msgs-srv:network instead.")
  (network m))

(cl:ensure-generic-function 'start_seg-val :lambda-list '(m))
(cl:defmethod start_seg-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:start_seg-val is deprecated.  Use geographic_msgs-srv:start_seg instead.")
  (start_seg m))

(cl:ensure-generic-function 'goal_seg-val :lambda-list '(m))
(cl:defmethod goal_seg-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:goal_seg-val is deprecated.  Use geographic_msgs-srv:goal_seg instead.")
  (goal_seg m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <GetGeoPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:distance-val is deprecated.  Use geographic_msgs-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGeoPath-response>) ostream)
  "Serializes a message object of type '<GetGeoPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'network) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_seg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_seg) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGeoPath-response>) istream)
  "Deserializes a message object of type '<GetGeoPath-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'network) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_seg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_seg) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGeoPath-response>)))
  "Returns string type for a service object of type '<GetGeoPath-response>"
  "geographic_msgs/GetGeoPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeoPath-response)))
  "Returns string type for a service object of type 'GetGeoPath-response"
  "geographic_msgs/GetGeoPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGeoPath-response>)))
  "Returns md5sum for a message object of type '<GetGeoPath-response>"
  "ee0dbd181711a70f823cc5d415fa609b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGeoPath-response)))
  "Returns md5sum for a message object of type 'GetGeoPath-response"
  "ee0dbd181711a70f823cc5d415fa609b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGeoPath-response>)))
  "Returns full string definition for message of type '<GetGeoPath-response>"
  (cl:format cl:nil "~%bool success                          # true if the call succeeded~%string status                         # more details~%~%geographic_msgs/GeoPath plan          # path to follow~%~%uuid_msgs/UniqueID network            # the uuid of the RouteNetwork~%uuid_msgs/UniqueID start_seg          # the uuid of the starting RouteSegment~%uuid_msgs/UniqueID goal_seg           # the uuid of the ending RouteSegment~%float64 distance                      # the length of the plan~%~%~%================================================================================~%MSG: geographic_msgs/GeoPath~%std_msgs/Header header~%geographic_msgs/GeoPoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoseStamped~%Header header~%geographic_msgs/GeoPose pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGeoPath-response)))
  "Returns full string definition for message of type 'GetGeoPath-response"
  (cl:format cl:nil "~%bool success                          # true if the call succeeded~%string status                         # more details~%~%geographic_msgs/GeoPath plan          # path to follow~%~%uuid_msgs/UniqueID network            # the uuid of the RouteNetwork~%uuid_msgs/UniqueID start_seg          # the uuid of the starting RouteSegment~%uuid_msgs/UniqueID goal_seg           # the uuid of the ending RouteSegment~%float64 distance                      # the length of the plan~%~%~%================================================================================~%MSG: geographic_msgs/GeoPath~%std_msgs/Header header~%geographic_msgs/GeoPoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeoPoseStamped~%Header header~%geographic_msgs/GeoPose pose~%~%================================================================================~%MSG: geographic_msgs/GeoPose~%# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGeoPath-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'network))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_seg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_seg))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGeoPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGeoPath-response
    (cl:cons ':success (success msg))
    (cl:cons ':status (status msg))
    (cl:cons ':plan (plan msg))
    (cl:cons ':network (network msg))
    (cl:cons ':start_seg (start_seg msg))
    (cl:cons ':goal_seg (goal_seg msg))
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGeoPath)))
  'GetGeoPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGeoPath)))
  'GetGeoPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGeoPath)))
  "Returns string type for a service object of type '<GetGeoPath>"
  "geographic_msgs/GetGeoPath")