; Auto-generated. Do not edit!


(cl:in-package safe_landing_planner-msg)


;//! \htmlinclude SLPGridMsg.msg.html

(cl:defclass <SLPGridMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mean
    :reader mean
    :initarg :mean
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (std_dev
    :reader std_dev
    :initarg :std_dev
    :type std_msgs-msg:Float64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float64MultiArray))
   (counter
    :reader counter
    :initarg :counter
    :type std_msgs-msg:Int64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int64MultiArray))
   (land
    :reader land
    :initarg :land
    :type std_msgs-msg:Int64MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Int64MultiArray))
   (grid_size
    :reader grid_size
    :initarg :grid_size
    :type cl:float
    :initform 0.0)
   (cell_size
    :reader cell_size
    :initarg :cell_size
    :type cl:float
    :initform 0.0)
   (curr_pos_index
    :reader curr_pos_index
    :initarg :curr_pos_index
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass SLPGridMsg (<SLPGridMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SLPGridMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SLPGridMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name safe_landing_planner-msg:<SLPGridMsg> is deprecated: use safe_landing_planner-msg:SLPGridMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:header-val is deprecated.  Use safe_landing_planner-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mean-val :lambda-list '(m))
(cl:defmethod mean-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:mean-val is deprecated.  Use safe_landing_planner-msg:mean instead.")
  (mean m))

(cl:ensure-generic-function 'std_dev-val :lambda-list '(m))
(cl:defmethod std_dev-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:std_dev-val is deprecated.  Use safe_landing_planner-msg:std_dev instead.")
  (std_dev m))

(cl:ensure-generic-function 'counter-val :lambda-list '(m))
(cl:defmethod counter-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:counter-val is deprecated.  Use safe_landing_planner-msg:counter instead.")
  (counter m))

(cl:ensure-generic-function 'land-val :lambda-list '(m))
(cl:defmethod land-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:land-val is deprecated.  Use safe_landing_planner-msg:land instead.")
  (land m))

(cl:ensure-generic-function 'grid_size-val :lambda-list '(m))
(cl:defmethod grid_size-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:grid_size-val is deprecated.  Use safe_landing_planner-msg:grid_size instead.")
  (grid_size m))

(cl:ensure-generic-function 'cell_size-val :lambda-list '(m))
(cl:defmethod cell_size-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:cell_size-val is deprecated.  Use safe_landing_planner-msg:cell_size instead.")
  (cell_size m))

(cl:ensure-generic-function 'curr_pos_index-val :lambda-list '(m))
(cl:defmethod curr_pos_index-val ((m <SLPGridMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader safe_landing_planner-msg:curr_pos_index-val is deprecated.  Use safe_landing_planner-msg:curr_pos_index instead.")
  (curr_pos_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SLPGridMsg>) ostream)
  "Serializes a message object of type '<SLPGridMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mean) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'std_dev) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'counter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'land) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'grid_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cell_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'curr_pos_index) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SLPGridMsg>) istream)
  "Deserializes a message object of type '<SLPGridMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mean) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'std_dev) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'counter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'land) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cell_size) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'curr_pos_index) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SLPGridMsg>)))
  "Returns string type for a message object of type '<SLPGridMsg>"
  "safe_landing_planner/SLPGridMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SLPGridMsg)))
  "Returns string type for a message object of type 'SLPGridMsg"
  "safe_landing_planner/SLPGridMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SLPGridMsg>)))
  "Returns md5sum for a message object of type '<SLPGridMsg>"
  "ac7dcafe4e3af4e98f04adc7a210b7be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SLPGridMsg)))
  "Returns md5sum for a message object of type 'SLPGridMsg"
  "ac7dcafe4e3af4e98f04adc7a210b7be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SLPGridMsg>)))
  "Returns full string definition for message of type '<SLPGridMsg>"
  (cl:format cl:nil "Header header~%std_msgs/Float64MultiArray mean~%std_msgs/Float64MultiArray std_dev~%std_msgs/Int64MultiArray counter~%std_msgs/Int64MultiArray land~%~%float64 grid_size~%float64 cell_size~%~%geometry_msgs/Vector3 curr_pos_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Int64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int64[]           data          # array of data~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SLPGridMsg)))
  "Returns full string definition for message of type 'SLPGridMsg"
  (cl:format cl:nil "Header header~%std_msgs/Float64MultiArray mean~%std_msgs/Float64MultiArray std_dev~%std_msgs/Int64MultiArray counter~%std_msgs/Int64MultiArray land~%~%float64 grid_size~%float64 cell_size~%~%geometry_msgs/Vector3 curr_pos_index~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float64[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%================================================================================~%MSG: std_msgs/Int64MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%int64[]           data          # array of data~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SLPGridMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mean))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'std_dev))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'counter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'land))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'curr_pos_index))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SLPGridMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'SLPGridMsg
    (cl:cons ':header (header msg))
    (cl:cons ':mean (mean msg))
    (cl:cons ':std_dev (std_dev msg))
    (cl:cons ':counter (counter msg))
    (cl:cons ':land (land msg))
    (cl:cons ':grid_size (grid_size msg))
    (cl:cons ':cell_size (cell_size msg))
    (cl:cons ':curr_pos_index (curr_pos_index msg))
))
