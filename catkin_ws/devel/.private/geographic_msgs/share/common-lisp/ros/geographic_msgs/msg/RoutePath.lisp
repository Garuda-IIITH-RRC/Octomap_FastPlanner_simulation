; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude RoutePath.msg.html

(cl:defclass <RoutePath> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (network
    :reader network
    :initarg :network
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (segments
    :reader segments
    :initarg :segments
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID)))
   (props
    :reader props
    :initarg :props
    :type (cl:vector geographic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:KeyValue :initial-element (cl:make-instance 'geographic_msgs-msg:KeyValue))))
)

(cl:defclass RoutePath (<RoutePath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutePath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutePath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<RoutePath> is deprecated: use geographic_msgs-msg:RoutePath instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RoutePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:header-val is deprecated.  Use geographic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'network-val :lambda-list '(m))
(cl:defmethod network-val ((m <RoutePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:network-val is deprecated.  Use geographic_msgs-msg:network instead.")
  (network m))

(cl:ensure-generic-function 'segments-val :lambda-list '(m))
(cl:defmethod segments-val ((m <RoutePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:segments-val is deprecated.  Use geographic_msgs-msg:segments instead.")
  (segments m))

(cl:ensure-generic-function 'props-val :lambda-list '(m))
(cl:defmethod props-val ((m <RoutePath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:props-val is deprecated.  Use geographic_msgs-msg:props instead.")
  (props m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutePath>) ostream)
  "Serializes a message object of type '<RoutePath>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'network) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segments))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segments))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'props))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'props))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutePath>) istream)
  "Deserializes a message object of type '<RoutePath>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'network) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segments) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segments)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'uuid_msgs-msg:UniqueID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'props) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'props)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geographic_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutePath>)))
  "Returns string type for a message object of type '<RoutePath>"
  "geographic_msgs/RoutePath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutePath)))
  "Returns string type for a message object of type 'RoutePath"
  "geographic_msgs/RoutePath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutePath>)))
  "Returns md5sum for a message object of type '<RoutePath>"
  "0aa2dd809a8091bdb4466dfefecbb8cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutePath)))
  "Returns md5sum for a message object of type 'RoutePath"
  "0aa2dd809a8091bdb4466dfefecbb8cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutePath>)))
  "Returns full string definition for message of type '<RoutePath>"
  (cl:format cl:nil "# Path through a route network.~%#~%# A path is a sequence of RouteSegment edges.  This information is~%# extracted from a RouteNetwork graph.  A RoutePath lists the route~%# segments needed to reach some chosen goal.~%~%Header header~%~%uuid_msgs/UniqueID   network    # Route network containing this path~%uuid_msgs/UniqueID[] segments   # Sequence of RouteSegment IDs~%KeyValue[]           props      # Key/value properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutePath)))
  "Returns full string definition for message of type 'RoutePath"
  (cl:format cl:nil "# Path through a route network.~%#~%# A path is a sequence of RouteSegment edges.  This information is~%# extracted from a RouteNetwork graph.  A RoutePath lists the route~%# segments needed to reach some chosen goal.~%~%Header header~%~%uuid_msgs/UniqueID   network    # Route network containing this path~%uuid_msgs/UniqueID[] segments   # Sequence of RouteSegment IDs~%KeyValue[]           props      # Key/value properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutePath>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'network))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segments) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'props) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutePath>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutePath
    (cl:cons ':header (header msg))
    (cl:cons ':network (network msg))
    (cl:cons ':segments (segments msg))
    (cl:cons ':props (props msg))
))
