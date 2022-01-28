;; Auto-generated. Do not edit!


(when (boundp 'safe_landing_planner::SLPGridMsg)
  (if (not (find-package "SAFE_LANDING_PLANNER"))
    (make-package "SAFE_LANDING_PLANNER"))
  (shadow 'SLPGridMsg (find-package "SAFE_LANDING_PLANNER")))
(unless (find-package "SAFE_LANDING_PLANNER::SLPGRIDMSG")
  (make-package "SAFE_LANDING_PLANNER::SLPGRIDMSG"))

(in-package "ROS")
;;//! \htmlinclude SLPGridMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass safe_landing_planner::SLPGridMsg
  :super ros::object
  :slots (_header _mean _std_dev _counter _land _grid_size _cell_size _curr_pos_index ))

(defmethod safe_landing_planner::SLPGridMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mean __mean) (instance std_msgs::Float64MultiArray :init))
    ((:std_dev __std_dev) (instance std_msgs::Float64MultiArray :init))
    ((:counter __counter) (instance std_msgs::Int64MultiArray :init))
    ((:land __land) (instance std_msgs::Int64MultiArray :init))
    ((:grid_size __grid_size) 0.0)
    ((:cell_size __cell_size) 0.0)
    ((:curr_pos_index __curr_pos_index) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mean __mean)
   (setq _std_dev __std_dev)
   (setq _counter __counter)
   (setq _land __land)
   (setq _grid_size (float __grid_size))
   (setq _cell_size (float __cell_size))
   (setq _curr_pos_index __curr_pos_index)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mean
   (&rest __mean)
   (if (keywordp (car __mean))
       (send* _mean __mean)
     (progn
       (if __mean (setq _mean (car __mean)))
       _mean)))
  (:std_dev
   (&rest __std_dev)
   (if (keywordp (car __std_dev))
       (send* _std_dev __std_dev)
     (progn
       (if __std_dev (setq _std_dev (car __std_dev)))
       _std_dev)))
  (:counter
   (&rest __counter)
   (if (keywordp (car __counter))
       (send* _counter __counter)
     (progn
       (if __counter (setq _counter (car __counter)))
       _counter)))
  (:land
   (&rest __land)
   (if (keywordp (car __land))
       (send* _land __land)
     (progn
       (if __land (setq _land (car __land)))
       _land)))
  (:grid_size
   (&optional __grid_size)
   (if __grid_size (setq _grid_size __grid_size)) _grid_size)
  (:cell_size
   (&optional __cell_size)
   (if __cell_size (setq _cell_size __cell_size)) _cell_size)
  (:curr_pos_index
   (&rest __curr_pos_index)
   (if (keywordp (car __curr_pos_index))
       (send* _curr_pos_index __curr_pos_index)
     (progn
       (if __curr_pos_index (setq _curr_pos_index (car __curr_pos_index)))
       _curr_pos_index)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64MultiArray _mean
    (send _mean :serialization-length)
    ;; std_msgs/Float64MultiArray _std_dev
    (send _std_dev :serialization-length)
    ;; std_msgs/Int64MultiArray _counter
    (send _counter :serialization-length)
    ;; std_msgs/Int64MultiArray _land
    (send _land :serialization-length)
    ;; float64 _grid_size
    8
    ;; float64 _cell_size
    8
    ;; geometry_msgs/Vector3 _curr_pos_index
    (send _curr_pos_index :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64MultiArray _mean
       (send _mean :serialize s)
     ;; std_msgs/Float64MultiArray _std_dev
       (send _std_dev :serialize s)
     ;; std_msgs/Int64MultiArray _counter
       (send _counter :serialize s)
     ;; std_msgs/Int64MultiArray _land
       (send _land :serialize s)
     ;; float64 _grid_size
       (sys::poke _grid_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cell_size
       (sys::poke _cell_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _curr_pos_index
       (send _curr_pos_index :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64MultiArray _mean
     (send _mean :deserialize buf ptr-) (incf ptr- (send _mean :serialization-length))
   ;; std_msgs/Float64MultiArray _std_dev
     (send _std_dev :deserialize buf ptr-) (incf ptr- (send _std_dev :serialization-length))
   ;; std_msgs/Int64MultiArray _counter
     (send _counter :deserialize buf ptr-) (incf ptr- (send _counter :serialization-length))
   ;; std_msgs/Int64MultiArray _land
     (send _land :deserialize buf ptr-) (incf ptr- (send _land :serialization-length))
   ;; float64 _grid_size
     (setq _grid_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cell_size
     (setq _cell_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _curr_pos_index
     (send _curr_pos_index :deserialize buf ptr-) (incf ptr- (send _curr_pos_index :serialization-length))
   ;;
   self)
  )

(setf (get safe_landing_planner::SLPGridMsg :md5sum-) "ac7dcafe4e3af4e98f04adc7a210b7be")
(setf (get safe_landing_planner::SLPGridMsg :datatype-) "safe_landing_planner/SLPGridMsg")
(setf (get safe_landing_planner::SLPGridMsg :definition-)
      "Header header
std_msgs/Float64MultiArray mean
std_msgs/Float64MultiArray std_dev
std_msgs/Int64MultiArray counter
std_msgs/Int64MultiArray land

float64 grid_size
float64 cell_size

geometry_msgs/Vector3 curr_pos_index

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
================================================================================
MSG: std_msgs/Int64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int64[]           data          # array of data


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :safe_landing_planner/SLPGridMsg "ac7dcafe4e3af4e98f04adc7a210b7be")


