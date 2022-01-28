; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-srv)


;//! \htmlinclude GetRoutePlan-request.msg.html

(cl:defclass <GetRoutePlan-request> (roslisp-msg-protocol:ros-message)
  ((network
    :reader network
    :initarg :network
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (start
    :reader start
    :initarg :start
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (goal
    :reader goal
    :initarg :goal
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID)))
)

(cl:defclass GetRoutePlan-request (<GetRoutePlan-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoutePlan-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoutePlan-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<GetRoutePlan-request> is deprecated: use geographic_msgs-srv:GetRoutePlan-request instead.")))

(cl:ensure-generic-function 'network-val :lambda-list '(m))
(cl:defmethod network-val ((m <GetRoutePlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:network-val is deprecated.  Use geographic_msgs-srv:network instead.")
  (network m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GetRoutePlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:start-val is deprecated.  Use geographic_msgs-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <GetRoutePlan-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:goal-val is deprecated.  Use geographic_msgs-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoutePlan-request>) ostream)
  "Serializes a message object of type '<GetRoutePlan-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'network) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoutePlan-request>) istream)
  "Deserializes a message object of type '<GetRoutePlan-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'network) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoutePlan-request>)))
  "Returns string type for a service object of type '<GetRoutePlan-request>"
  "geographic_msgs/GetRoutePlanRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoutePlan-request)))
  "Returns string type for a service object of type 'GetRoutePlan-request"
  "geographic_msgs/GetRoutePlanRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoutePlan-request>)))
  "Returns md5sum for a message object of type '<GetRoutePlan-request>"
  "04479050c4f2a58d915ceec419e70b4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoutePlan-request)))
  "Returns md5sum for a message object of type 'GetRoutePlan-request"
  "04479050c4f2a58d915ceec419e70b4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoutePlan-request>)))
  "Returns full string definition for message of type '<GetRoutePlan-request>"
  (cl:format cl:nil "# Get a plan to traverse a route network from start to goal.~%#~%# Similar to nav_msgs/GetPlan, but constrained to use the route network.~%~%uuid_msgs/UniqueID network      # route network to use~%uuid_msgs/UniqueID start        # starting way point~%uuid_msgs/UniqueID goal         # goal way point~%~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoutePlan-request)))
  "Returns full string definition for message of type 'GetRoutePlan-request"
  (cl:format cl:nil "# Get a plan to traverse a route network from start to goal.~%#~%# Similar to nav_msgs/GetPlan, but constrained to use the route network.~%~%uuid_msgs/UniqueID network      # route network to use~%uuid_msgs/UniqueID start        # starting way point~%uuid_msgs/UniqueID goal         # goal way point~%~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoutePlan-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'network))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoutePlan-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoutePlan-request
    (cl:cons ':network (network msg))
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude GetRoutePlan-response.msg.html

(cl:defclass <GetRoutePlan-response> (roslisp-msg-protocol:ros-message)
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
    :type geographic_msgs-msg:RoutePath
    :initform (cl:make-instance 'geographic_msgs-msg:RoutePath)))
)

(cl:defclass GetRoutePlan-response (<GetRoutePlan-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoutePlan-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoutePlan-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<GetRoutePlan-response> is deprecated: use geographic_msgs-srv:GetRoutePlan-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetRoutePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:success-val is deprecated.  Use geographic_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GetRoutePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:status-val is deprecated.  Use geographic_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <GetRoutePlan-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:plan-val is deprecated.  Use geographic_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoutePlan-response>) ostream)
  "Serializes a message object of type '<GetRoutePlan-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoutePlan-response>) istream)
  "Deserializes a message object of type '<GetRoutePlan-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoutePlan-response>)))
  "Returns string type for a service object of type '<GetRoutePlan-response>"
  "geographic_msgs/GetRoutePlanResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoutePlan-response)))
  "Returns string type for a service object of type 'GetRoutePlan-response"
  "geographic_msgs/GetRoutePlanResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoutePlan-response>)))
  "Returns md5sum for a message object of type '<GetRoutePlan-response>"
  "04479050c4f2a58d915ceec419e70b4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoutePlan-response)))
  "Returns md5sum for a message object of type 'GetRoutePlan-response"
  "04479050c4f2a58d915ceec419e70b4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoutePlan-response>)))
  "Returns full string definition for message of type '<GetRoutePlan-response>"
  (cl:format cl:nil "~%bool            success         # true if the call succeeded~%string          status          # more details~%~%RoutePath       plan            # path to follow~%~%~%================================================================================~%MSG: geographic_msgs/RoutePath~%# Path through a route network.~%#~%# A path is a sequence of RouteSegment edges.  This information is~%# extracted from a RouteNetwork graph.  A RoutePath lists the route~%# segments needed to reach some chosen goal.~%~%Header header~%~%uuid_msgs/UniqueID   network    # Route network containing this path~%uuid_msgs/UniqueID[] segments   # Sequence of RouteSegment IDs~%KeyValue[]           props      # Key/value properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoutePlan-response)))
  "Returns full string definition for message of type 'GetRoutePlan-response"
  (cl:format cl:nil "~%bool            success         # true if the call succeeded~%string          status          # more details~%~%RoutePath       plan            # path to follow~%~%~%================================================================================~%MSG: geographic_msgs/RoutePath~%# Path through a route network.~%#~%# A path is a sequence of RouteSegment edges.  This information is~%# extracted from a RouteNetwork graph.  A RoutePath lists the route~%# segments needed to reach some chosen goal.~%~%Header header~%~%uuid_msgs/UniqueID   network    # Route network containing this path~%uuid_msgs/UniqueID[] segments   # Sequence of RouteSegment IDs~%KeyValue[]           props      # Key/value properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoutePlan-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoutePlan-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoutePlan-response
    (cl:cons ':success (success msg))
    (cl:cons ':status (status msg))
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRoutePlan)))
  'GetRoutePlan-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRoutePlan)))
  'GetRoutePlan-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoutePlan)))
  "Returns string type for a service object of type '<GetRoutePlan>"
  "geographic_msgs/GetRoutePlan")