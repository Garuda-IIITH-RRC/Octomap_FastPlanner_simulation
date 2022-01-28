; Auto-generated. Do not edit!


(cl:in-package msg_check-msg)


;//! \htmlinclude PlotDataMsg.msg.html

(cl:defclass <PlotDataMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sp
    :reader sp
    :initarg :sp
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (sq
    :reader sq
    :initarg :sq
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular_acceleration
    :reader angular_acceleration
    :initarg :angular_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (position_error
    :reader position_error
    :initarg :position_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocity_error
    :reader velocity_error
    :initarg :velocity_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (position_error_integral
    :reader position_error_integral
    :initarg :position_error_integral
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angle_error
    :reader angle_error
    :initarg :angle_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angle_rate_error
    :reader angle_rate_error
    :initarg :angle_rate_error
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Kp_hat
    :reader Kp_hat
    :initarg :Kp_hat
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Kq_hat_0
    :reader Kq_hat_0
    :initarg :Kq_hat_0
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Kq_hat_1
    :reader Kq_hat_1
    :initarg :Kq_hat_1
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (Kq_hat_2
    :reader Kq_hat_2
    :initarg :Kq_hat_2
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rho_p
    :reader rho_p
    :initarg :rho_p
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rho_q
    :reader rho_q
    :initarg :rho_q
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (delTau_p
    :reader delTau_p
    :initarg :delTau_p
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (delTau_q
    :reader delTau_q
    :initarg :delTau_q
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (moments
    :reader moments
    :initarg :moments
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0)
   (M_hat
    :reader M_hat
    :initarg :M_hat
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlotDataMsg (<PlotDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlotDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlotDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msg_check-msg:<PlotDataMsg> is deprecated: use msg_check-msg:PlotDataMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:header-val is deprecated.  Use msg_check-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sp-val :lambda-list '(m))
(cl:defmethod sp-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:sp-val is deprecated.  Use msg_check-msg:sp instead.")
  (sp m))

(cl:ensure-generic-function 'sq-val :lambda-list '(m))
(cl:defmethod sq-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:sq-val is deprecated.  Use msg_check-msg:sq instead.")
  (sq m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:acceleration-val is deprecated.  Use msg_check-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'angular_acceleration-val :lambda-list '(m))
(cl:defmethod angular_acceleration-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:angular_acceleration-val is deprecated.  Use msg_check-msg:angular_acceleration instead.")
  (angular_acceleration m))

(cl:ensure-generic-function 'position_error-val :lambda-list '(m))
(cl:defmethod position_error-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:position_error-val is deprecated.  Use msg_check-msg:position_error instead.")
  (position_error m))

(cl:ensure-generic-function 'velocity_error-val :lambda-list '(m))
(cl:defmethod velocity_error-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:velocity_error-val is deprecated.  Use msg_check-msg:velocity_error instead.")
  (velocity_error m))

(cl:ensure-generic-function 'position_error_integral-val :lambda-list '(m))
(cl:defmethod position_error_integral-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:position_error_integral-val is deprecated.  Use msg_check-msg:position_error_integral instead.")
  (position_error_integral m))

(cl:ensure-generic-function 'angle_error-val :lambda-list '(m))
(cl:defmethod angle_error-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:angle_error-val is deprecated.  Use msg_check-msg:angle_error instead.")
  (angle_error m))

(cl:ensure-generic-function 'angle_rate_error-val :lambda-list '(m))
(cl:defmethod angle_rate_error-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:angle_rate_error-val is deprecated.  Use msg_check-msg:angle_rate_error instead.")
  (angle_rate_error m))

(cl:ensure-generic-function 'Kp_hat-val :lambda-list '(m))
(cl:defmethod Kp_hat-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:Kp_hat-val is deprecated.  Use msg_check-msg:Kp_hat instead.")
  (Kp_hat m))

(cl:ensure-generic-function 'Kq_hat_0-val :lambda-list '(m))
(cl:defmethod Kq_hat_0-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:Kq_hat_0-val is deprecated.  Use msg_check-msg:Kq_hat_0 instead.")
  (Kq_hat_0 m))

(cl:ensure-generic-function 'Kq_hat_1-val :lambda-list '(m))
(cl:defmethod Kq_hat_1-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:Kq_hat_1-val is deprecated.  Use msg_check-msg:Kq_hat_1 instead.")
  (Kq_hat_1 m))

(cl:ensure-generic-function 'Kq_hat_2-val :lambda-list '(m))
(cl:defmethod Kq_hat_2-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:Kq_hat_2-val is deprecated.  Use msg_check-msg:Kq_hat_2 instead.")
  (Kq_hat_2 m))

(cl:ensure-generic-function 'rho_p-val :lambda-list '(m))
(cl:defmethod rho_p-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:rho_p-val is deprecated.  Use msg_check-msg:rho_p instead.")
  (rho_p m))

(cl:ensure-generic-function 'rho_q-val :lambda-list '(m))
(cl:defmethod rho_q-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:rho_q-val is deprecated.  Use msg_check-msg:rho_q instead.")
  (rho_q m))

(cl:ensure-generic-function 'delTau_p-val :lambda-list '(m))
(cl:defmethod delTau_p-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:delTau_p-val is deprecated.  Use msg_check-msg:delTau_p instead.")
  (delTau_p m))

(cl:ensure-generic-function 'delTau_q-val :lambda-list '(m))
(cl:defmethod delTau_q-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:delTau_q-val is deprecated.  Use msg_check-msg:delTau_q instead.")
  (delTau_q m))

(cl:ensure-generic-function 'moments-val :lambda-list '(m))
(cl:defmethod moments-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:moments-val is deprecated.  Use msg_check-msg:moments instead.")
  (moments m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:thrust-val is deprecated.  Use msg_check-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'M_hat-val :lambda-list '(m))
(cl:defmethod M_hat-val ((m <PlotDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msg_check-msg:M_hat-val is deprecated.  Use msg_check-msg:M_hat instead.")
  (M_hat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlotDataMsg>) ostream)
  "Serializes a message object of type '<PlotDataMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sq) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_error_integral) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angle_rate_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Kp_hat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Kq_hat_0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Kq_hat_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Kq_hat_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rho_p) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rho_q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delTau_p) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delTau_q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'moments) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M_hat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlotDataMsg>) istream)
  "Deserializes a message object of type '<PlotDataMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sq) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_error_integral) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angle_rate_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Kp_hat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Kq_hat_0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Kq_hat_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Kq_hat_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rho_p) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rho_q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delTau_p) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delTau_q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'moments) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M_hat) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlotDataMsg>)))
  "Returns string type for a message object of type '<PlotDataMsg>"
  "msg_check/PlotDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlotDataMsg)))
  "Returns string type for a message object of type 'PlotDataMsg"
  "msg_check/PlotDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlotDataMsg>)))
  "Returns md5sum for a message object of type '<PlotDataMsg>"
  "34437636d1c86e0bba868e7bc32517df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlotDataMsg)))
  "Returns md5sum for a message object of type 'PlotDataMsg"
  "34437636d1c86e0bba868e7bc32517df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlotDataMsg>)))
  "Returns full string definition for message of type '<PlotDataMsg>"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 sp~%geometry_msgs/Vector3 sq~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 angular_acceleration~%geometry_msgs/Vector3 position_error~%geometry_msgs/Vector3 velocity_error~%geometry_msgs/Vector3 position_error_integral~%geometry_msgs/Vector3 angle_error~%geometry_msgs/Vector3 angle_rate_error~%geometry_msgs/Vector3 Kp_hat~%geometry_msgs/Vector3 Kq_hat_0~%geometry_msgs/Vector3 Kq_hat_1~%geometry_msgs/Vector3 Kq_hat_2~%geometry_msgs/Vector3 rho_p~%geometry_msgs/Vector3 rho_q~%geometry_msgs/Vector3 delTau_p~%geometry_msgs/Vector3 delTau_q~%geometry_msgs/Vector3 moments~%float64 thrust~%float64 M_hat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlotDataMsg)))
  "Returns full string definition for message of type 'PlotDataMsg"
  (cl:format cl:nil "Header header~%geometry_msgs/Vector3 sp~%geometry_msgs/Vector3 sq~%geometry_msgs/Vector3 acceleration~%geometry_msgs/Vector3 angular_acceleration~%geometry_msgs/Vector3 position_error~%geometry_msgs/Vector3 velocity_error~%geometry_msgs/Vector3 position_error_integral~%geometry_msgs/Vector3 angle_error~%geometry_msgs/Vector3 angle_rate_error~%geometry_msgs/Vector3 Kp_hat~%geometry_msgs/Vector3 Kq_hat_0~%geometry_msgs/Vector3 Kq_hat_1~%geometry_msgs/Vector3 Kq_hat_2~%geometry_msgs/Vector3 rho_p~%geometry_msgs/Vector3 rho_q~%geometry_msgs/Vector3 delTau_p~%geometry_msgs/Vector3 delTau_q~%geometry_msgs/Vector3 moments~%float64 thrust~%float64 M_hat~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlotDataMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sq))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_error_integral))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angle_rate_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Kp_hat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Kq_hat_0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Kq_hat_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Kq_hat_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rho_p))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rho_q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delTau_p))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delTau_q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'moments))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlotDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PlotDataMsg
    (cl:cons ':header (header msg))
    (cl:cons ':sp (sp msg))
    (cl:cons ':sq (sq msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':angular_acceleration (angular_acceleration msg))
    (cl:cons ':position_error (position_error msg))
    (cl:cons ':velocity_error (velocity_error msg))
    (cl:cons ':position_error_integral (position_error_integral msg))
    (cl:cons ':angle_error (angle_error msg))
    (cl:cons ':angle_rate_error (angle_rate_error msg))
    (cl:cons ':Kp_hat (Kp_hat msg))
    (cl:cons ':Kq_hat_0 (Kq_hat_0 msg))
    (cl:cons ':Kq_hat_1 (Kq_hat_1 msg))
    (cl:cons ':Kq_hat_2 (Kq_hat_2 msg))
    (cl:cons ':rho_p (rho_p msg))
    (cl:cons ':rho_q (rho_q msg))
    (cl:cons ':delTau_p (delTau_p msg))
    (cl:cons ':delTau_q (delTau_q msg))
    (cl:cons ':moments (moments msg))
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':M_hat (M_hat msg))
))
