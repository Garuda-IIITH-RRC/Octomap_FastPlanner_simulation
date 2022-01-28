; Auto-generated. Do not edit!


(cl:in-package controller_msgs-msg)


;//! \htmlinclude FlatTarget.msg.html

(cl:defclass <FlatTarget> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type_mask
    :reader type_mask
    :initarg :type_mask
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (jerk
    :reader jerk
    :initarg :jerk
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (snap
    :reader snap
    :initarg :snap
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass FlatTarget (<FlatTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlatTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlatTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name controller_msgs-msg:<FlatTarget> is deprecated: use controller_msgs-msg:FlatTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:header-val is deprecated.  Use controller_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type_mask-val :lambda-list '(m))
(cl:defmethod type_mask-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:type_mask-val is deprecated.  Use controller_msgs-msg:type_mask instead.")
  (type_mask m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:position-val is deprecated.  Use controller_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:velocity-val is deprecated.  Use controller_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:acceleration-val is deprecated.  Use controller_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:jerk-val is deprecated.  Use controller_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'snap-val :lambda-list '(m))
(cl:defmethod snap-val ((m <FlatTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader controller_msgs-msg:snap-val is deprecated.  Use controller_msgs-msg:snap instead.")
  (snap m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FlatTarget>)))
    "Constants for message type '<FlatTarget>"
  '((:IGNORE_SNAP . 1)
    (:IGNORE_SNAP_JERK . 2)
    (:IGNORE_SNAP_JERK_ACC . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FlatTarget)))
    "Constants for message type 'FlatTarget"
  '((:IGNORE_SNAP . 1)
    (:IGNORE_SNAP_JERK . 2)
    (:IGNORE_SNAP_JERK_ACC . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlatTarget>) ostream)
  "Serializes a message object of type '<FlatTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'snap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlatTarget>) istream)
  "Deserializes a message object of type '<FlatTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type_mask)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'snap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlatTarget>)))
  "Returns string type for a message object of type '<FlatTarget>"
  "controller_msgs/FlatTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlatTarget)))
  "Returns string type for a message object of type 'FlatTarget"
  "controller_msgs/FlatTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlatTarget>)))
  "Returns md5sum for a message object of type '<FlatTarget>"
  "c62e72c40204947fb0e6a39a53afefad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlatTarget)))
  "Returns md5sum for a message object of type 'FlatTarget"
  "c62e72c40204947fb0e6a39a53afefad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlatTarget>)))
  "Returns full string definition for message of type '<FlatTarget>"
  (cl:format cl:nil "# reference for polynomial trajectory tracking~%#~%~%std_msgs/Header header~%~%uint8 type_mask~%uint8 IGNORE_SNAP = 1	# Position Velocity Acceleration Jerk Reference~%uint8 IGNORE_SNAP_JERK = 2	# Position Velocity Acceleration Reference~%uint8 IGNORE_SNAP_JERK_ACC = 4	# Position Reference~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 jerk~%geometry_msgs/Vector3 snap~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlatTarget)))
  "Returns full string definition for message of type 'FlatTarget"
  (cl:format cl:nil "# reference for polynomial trajectory tracking~%#~%~%std_msgs/Header header~%~%uint8 type_mask~%uint8 IGNORE_SNAP = 1	# Position Velocity Acceleration Jerk Reference~%uint8 IGNORE_SNAP_JERK = 2	# Position Velocity Acceleration Reference~%uint8 IGNORE_SNAP_JERK_ACC = 4	# Position Reference~%~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 jerk~%geometry_msgs/Vector3 snap~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlatTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'snap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlatTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'FlatTarget
    (cl:cons ':header (header msg))
    (cl:cons ':type_mask (type_mask msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':snap (snap msg))
))
