; Auto-generated. Do not edit!


(cl:in-package uuid_msgs-msg)


;//! \htmlinclude UniqueID.msg.html

(cl:defclass <UniqueID> (roslisp-msg-protocol:ros-message)
  ((uuid
    :reader uuid
    :initarg :uuid
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UniqueID (<UniqueID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UniqueID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UniqueID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uuid_msgs-msg:<UniqueID> is deprecated: use uuid_msgs-msg:UniqueID instead.")))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <UniqueID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uuid_msgs-msg:uuid-val is deprecated.  Use uuid_msgs-msg:uuid instead.")
  (uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UniqueID>) ostream)
  "Serializes a message object of type '<UniqueID>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UniqueID>) istream)
  "Deserializes a message object of type '<UniqueID>"
  (cl:setf (cl:slot-value msg 'uuid) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'uuid)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UniqueID>)))
  "Returns string type for a message object of type '<UniqueID>"
  "uuid_msgs/UniqueID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UniqueID)))
  "Returns string type for a message object of type 'UniqueID"
  "uuid_msgs/UniqueID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UniqueID>)))
  "Returns md5sum for a message object of type '<UniqueID>"
  "fec2a93b6f5367ee8112c9c0b41ff310")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UniqueID)))
  "Returns md5sum for a message object of type 'UniqueID"
  "fec2a93b6f5367ee8112c9c0b41ff310")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UniqueID>)))
  "Returns full string definition for message of type '<UniqueID>"
  (cl:format cl:nil "# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UniqueID)))
  "Returns full string definition for message of type 'UniqueID"
  (cl:format cl:nil "# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UniqueID>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UniqueID>))
  "Converts a ROS message object to a list"
  (cl:list 'UniqueID
    (cl:cons ':uuid (uuid msg))
))
