;; Auto-generated. Do not edit!


(when (boundp 'controller_msgs::FlatTarget)
  (if (not (find-package "CONTROLLER_MSGS"))
    (make-package "CONTROLLER_MSGS"))
  (shadow 'FlatTarget (find-package "CONTROLLER_MSGS")))
(unless (find-package "CONTROLLER_MSGS::FLATTARGET")
  (make-package "CONTROLLER_MSGS::FLATTARGET"))

(in-package "ROS")
;;//! \htmlinclude FlatTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*IGNORE_SNAP*" (find-package "CONTROLLER_MSGS::FLATTARGET"))
(shadow '*IGNORE_SNAP* (find-package "CONTROLLER_MSGS::FLATTARGET"))
(defconstant controller_msgs::FlatTarget::*IGNORE_SNAP* 1)
(intern "*IGNORE_SNAP_JERK*" (find-package "CONTROLLER_MSGS::FLATTARGET"))
(shadow '*IGNORE_SNAP_JERK* (find-package "CONTROLLER_MSGS::FLATTARGET"))
(defconstant controller_msgs::FlatTarget::*IGNORE_SNAP_JERK* 2)
(intern "*IGNORE_SNAP_JERK_ACC*" (find-package "CONTROLLER_MSGS::FLATTARGET"))
(shadow '*IGNORE_SNAP_JERK_ACC* (find-package "CONTROLLER_MSGS::FLATTARGET"))
(defconstant controller_msgs::FlatTarget::*IGNORE_SNAP_JERK_ACC* 4)
(defclass controller_msgs::FlatTarget
  :super ros::object
  :slots (_header _type_mask _position _velocity _acceleration _jerk _snap ))

(defmethod controller_msgs::FlatTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type_mask __type_mask) 0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:velocity __velocity) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:jerk __jerk) (instance geometry_msgs::Vector3 :init))
    ((:snap __snap) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type_mask (round __type_mask))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _jerk __jerk)
   (setq _snap __snap)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type_mask
   (&optional __type_mask)
   (if __type_mask (setq _type_mask __type_mask)) _type_mask)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:jerk
   (&rest __jerk)
   (if (keywordp (car __jerk))
       (send* _jerk __jerk)
     (progn
       (if __jerk (setq _jerk (car __jerk)))
       _jerk)))
  (:snap
   (&rest __snap)
   (if (keywordp (car __snap))
       (send* _snap __snap)
     (progn
       (if __snap (setq _snap (car __snap)))
       _snap)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type_mask
    1
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _jerk
    (send _jerk :serialization-length)
    ;; geometry_msgs/Vector3 _snap
    (send _snap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type_mask
       (write-byte _type_mask s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _jerk
       (send _jerk :serialize s)
     ;; geometry_msgs/Vector3 _snap
       (send _snap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type_mask
     (setq _type_mask (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _jerk
     (send _jerk :deserialize buf ptr-) (incf ptr- (send _jerk :serialization-length))
   ;; geometry_msgs/Vector3 _snap
     (send _snap :deserialize buf ptr-) (incf ptr- (send _snap :serialization-length))
   ;;
   self)
  )

(setf (get controller_msgs::FlatTarget :md5sum-) "c62e72c40204947fb0e6a39a53afefad")
(setf (get controller_msgs::FlatTarget :datatype-) "controller_msgs/FlatTarget")
(setf (get controller_msgs::FlatTarget :definition-)
      "# reference for polynomial trajectory tracking
#

std_msgs/Header header

uint8 type_mask
uint8 IGNORE_SNAP = 1	# Position Velocity Acceleration Jerk Reference
uint8 IGNORE_SNAP_JERK = 2	# Position Velocity Acceleration Reference
uint8 IGNORE_SNAP_JERK_ACC = 4	# Position Reference

geometry_msgs/Vector3 position
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 jerk
geometry_msgs/Vector3 snap
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



(provide :controller_msgs/FlatTarget "c62e72c40204947fb0e6a39a53afefad")


