; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude RouteSegment.msg.html

(cl:defclass <RouteSegment> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (start
    :reader start
    :initarg :start
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (end
    :reader end
    :initarg :end
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (props
    :reader props
    :initarg :props
    :type (cl:vector geographic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:KeyValue :initial-element (cl:make-instance 'geographic_msgs-msg:KeyValue))))
)

(cl:defclass RouteSegment (<RouteSegment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteSegment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteSegment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<RouteSegment> is deprecated: use geographic_msgs-msg:RouteSegment instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:id-val is deprecated.  Use geographic_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:start-val is deprecated.  Use geographic_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:end-val is deprecated.  Use geographic_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'props-val :lambda-list '(m))
(cl:defmethod props-val ((m <RouteSegment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:props-val is deprecated.  Use geographic_msgs-msg:props instead.")
  (props m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteSegment>) ostream)
  "Serializes a message object of type '<RouteSegment>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'props))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'props))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteSegment>) istream)
  "Deserializes a message object of type '<RouteSegment>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteSegment>)))
  "Returns string type for a message object of type '<RouteSegment>"
  "geographic_msgs/RouteSegment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteSegment)))
  "Returns string type for a message object of type 'RouteSegment"
  "geographic_msgs/RouteSegment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteSegment>)))
  "Returns md5sum for a message object of type '<RouteSegment>"
  "8583d1e2ddf1891c3934a5d2ed9a799c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteSegment)))
  "Returns md5sum for a message object of type 'RouteSegment"
  "8583d1e2ddf1891c3934a5d2ed9a799c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteSegment>)))
  "Returns full string definition for message of type '<RouteSegment>"
  (cl:format cl:nil "# Route network segment.~%#~%# This is one directed edge of a RouteNetwork graph. It represents a~%# known path from one way point to another.  If the path is two-way,~%# there will be another RouteSegment with \"start\" and \"end\" reversed.~%~%uuid_msgs/UniqueID id           # Unique identifier for this segment~%~%uuid_msgs/UniqueID start        # beginning way point of segment~%uuid_msgs/UniqueID end          # ending way point of segment~%~%KeyValue[] props                # segment properties~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteSegment)))
  "Returns full string definition for message of type 'RouteSegment"
  (cl:format cl:nil "# Route network segment.~%#~%# This is one directed edge of a RouteNetwork graph. It represents a~%# known path from one way point to another.  If the path is two-way,~%# there will be another RouteSegment with \"start\" and \"end\" reversed.~%~%uuid_msgs/UniqueID id           # Unique identifier for this segment~%~%uuid_msgs/UniqueID start        # beginning way point of segment~%uuid_msgs/UniqueID end          # ending way point of segment~%~%KeyValue[] props                # segment properties~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteSegment>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'props) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteSegment>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteSegment
    (cl:cons ':id (id msg))
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':props (props msg))
))
