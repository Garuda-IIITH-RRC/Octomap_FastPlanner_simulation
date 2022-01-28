; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude MapFeature.msg.html

(cl:defclass <MapFeature> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (components
    :reader components
    :initarg :components
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID)))
   (props
    :reader props
    :initarg :props
    :type (cl:vector geographic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:KeyValue :initial-element (cl:make-instance 'geographic_msgs-msg:KeyValue))))
)

(cl:defclass MapFeature (<MapFeature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapFeature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapFeature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<MapFeature> is deprecated: use geographic_msgs-msg:MapFeature instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MapFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:id-val is deprecated.  Use geographic_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'components-val :lambda-list '(m))
(cl:defmethod components-val ((m <MapFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:components-val is deprecated.  Use geographic_msgs-msg:components instead.")
  (components m))

(cl:ensure-generic-function 'props-val :lambda-list '(m))
(cl:defmethod props-val ((m <MapFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:props-val is deprecated.  Use geographic_msgs-msg:props instead.")
  (props m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapFeature>) ostream)
  "Serializes a message object of type '<MapFeature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'components))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'components))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'props))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'props))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapFeature>) istream)
  "Deserializes a message object of type '<MapFeature>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'components) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'components)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapFeature>)))
  "Returns string type for a message object of type '<MapFeature>"
  "geographic_msgs/MapFeature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapFeature)))
  "Returns string type for a message object of type 'MapFeature"
  "geographic_msgs/MapFeature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapFeature>)))
  "Returns md5sum for a message object of type '<MapFeature>"
  "e2505ace5e8da8a15b610eaf62bdefae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapFeature)))
  "Returns md5sum for a message object of type 'MapFeature"
  "e2505ace5e8da8a15b610eaf62bdefae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapFeature>)))
  "Returns full string definition for message of type '<MapFeature>"
  (cl:format cl:nil "# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapFeature)))
  "Returns full string definition for message of type 'MapFeature"
  (cl:format cl:nil "# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapFeature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'components) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'props) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapFeature>))
  "Converts a ROS message object to a list"
  (cl:list 'MapFeature
    (cl:cons ':id (id msg))
    (cl:cons ':components (components msg))
    (cl:cons ':props (props msg))
))
