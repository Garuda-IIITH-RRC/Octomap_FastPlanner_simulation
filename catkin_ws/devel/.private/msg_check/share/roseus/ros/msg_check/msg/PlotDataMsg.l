;; Auto-generated. Do not edit!


(when (boundp 'msg_check::PlotDataMsg)
  (if (not (find-package "MSG_CHECK"))
    (make-package "MSG_CHECK"))
  (shadow 'PlotDataMsg (find-package "MSG_CHECK")))
(unless (find-package "MSG_CHECK::PLOTDATAMSG")
  (make-package "MSG_CHECK::PLOTDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude PlotDataMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msg_check::PlotDataMsg
  :super ros::object
  :slots (_header _sp _sq _acceleration _angular_acceleration _position_error _velocity_error _position_error_integral _angle_error _angle_rate_error _Kp_hat _Kq_hat_0 _Kq_hat_1 _Kq_hat_2 _rho_p _rho_q _delTau_p _delTau_q _moments _thrust _M_hat ))

(defmethod msg_check::PlotDataMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sp __sp) (instance geometry_msgs::Vector3 :init))
    ((:sq __sq) (instance geometry_msgs::Vector3 :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:angular_acceleration __angular_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:position_error __position_error) (instance geometry_msgs::Vector3 :init))
    ((:velocity_error __velocity_error) (instance geometry_msgs::Vector3 :init))
    ((:position_error_integral __position_error_integral) (instance geometry_msgs::Vector3 :init))
    ((:angle_error __angle_error) (instance geometry_msgs::Vector3 :init))
    ((:angle_rate_error __angle_rate_error) (instance geometry_msgs::Vector3 :init))
    ((:Kp_hat __Kp_hat) (instance geometry_msgs::Vector3 :init))
    ((:Kq_hat_0 __Kq_hat_0) (instance geometry_msgs::Vector3 :init))
    ((:Kq_hat_1 __Kq_hat_1) (instance geometry_msgs::Vector3 :init))
    ((:Kq_hat_2 __Kq_hat_2) (instance geometry_msgs::Vector3 :init))
    ((:rho_p __rho_p) (instance geometry_msgs::Vector3 :init))
    ((:rho_q __rho_q) (instance geometry_msgs::Vector3 :init))
    ((:delTau_p __delTau_p) (instance geometry_msgs::Vector3 :init))
    ((:delTau_q __delTau_q) (instance geometry_msgs::Vector3 :init))
    ((:moments __moments) (instance geometry_msgs::Vector3 :init))
    ((:thrust __thrust) 0.0)
    ((:M_hat __M_hat) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sp __sp)
   (setq _sq __sq)
   (setq _acceleration __acceleration)
   (setq _angular_acceleration __angular_acceleration)
   (setq _position_error __position_error)
   (setq _velocity_error __velocity_error)
   (setq _position_error_integral __position_error_integral)
   (setq _angle_error __angle_error)
   (setq _angle_rate_error __angle_rate_error)
   (setq _Kp_hat __Kp_hat)
   (setq _Kq_hat_0 __Kq_hat_0)
   (setq _Kq_hat_1 __Kq_hat_1)
   (setq _Kq_hat_2 __Kq_hat_2)
   (setq _rho_p __rho_p)
   (setq _rho_q __rho_q)
   (setq _delTau_p __delTau_p)
   (setq _delTau_q __delTau_q)
   (setq _moments __moments)
   (setq _thrust (float __thrust))
   (setq _M_hat (float __M_hat))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sp
   (&rest __sp)
   (if (keywordp (car __sp))
       (send* _sp __sp)
     (progn
       (if __sp (setq _sp (car __sp)))
       _sp)))
  (:sq
   (&rest __sq)
   (if (keywordp (car __sq))
       (send* _sq __sq)
     (progn
       (if __sq (setq _sq (car __sq)))
       _sq)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:angular_acceleration
   (&rest __angular_acceleration)
   (if (keywordp (car __angular_acceleration))
       (send* _angular_acceleration __angular_acceleration)
     (progn
       (if __angular_acceleration (setq _angular_acceleration (car __angular_acceleration)))
       _angular_acceleration)))
  (:position_error
   (&rest __position_error)
   (if (keywordp (car __position_error))
       (send* _position_error __position_error)
     (progn
       (if __position_error (setq _position_error (car __position_error)))
       _position_error)))
  (:velocity_error
   (&rest __velocity_error)
   (if (keywordp (car __velocity_error))
       (send* _velocity_error __velocity_error)
     (progn
       (if __velocity_error (setq _velocity_error (car __velocity_error)))
       _velocity_error)))
  (:position_error_integral
   (&rest __position_error_integral)
   (if (keywordp (car __position_error_integral))
       (send* _position_error_integral __position_error_integral)
     (progn
       (if __position_error_integral (setq _position_error_integral (car __position_error_integral)))
       _position_error_integral)))
  (:angle_error
   (&rest __angle_error)
   (if (keywordp (car __angle_error))
       (send* _angle_error __angle_error)
     (progn
       (if __angle_error (setq _angle_error (car __angle_error)))
       _angle_error)))
  (:angle_rate_error
   (&rest __angle_rate_error)
   (if (keywordp (car __angle_rate_error))
       (send* _angle_rate_error __angle_rate_error)
     (progn
       (if __angle_rate_error (setq _angle_rate_error (car __angle_rate_error)))
       _angle_rate_error)))
  (:Kp_hat
   (&rest __Kp_hat)
   (if (keywordp (car __Kp_hat))
       (send* _Kp_hat __Kp_hat)
     (progn
       (if __Kp_hat (setq _Kp_hat (car __Kp_hat)))
       _Kp_hat)))
  (:Kq_hat_0
   (&rest __Kq_hat_0)
   (if (keywordp (car __Kq_hat_0))
       (send* _Kq_hat_0 __Kq_hat_0)
     (progn
       (if __Kq_hat_0 (setq _Kq_hat_0 (car __Kq_hat_0)))
       _Kq_hat_0)))
  (:Kq_hat_1
   (&rest __Kq_hat_1)
   (if (keywordp (car __Kq_hat_1))
       (send* _Kq_hat_1 __Kq_hat_1)
     (progn
       (if __Kq_hat_1 (setq _Kq_hat_1 (car __Kq_hat_1)))
       _Kq_hat_1)))
  (:Kq_hat_2
   (&rest __Kq_hat_2)
   (if (keywordp (car __Kq_hat_2))
       (send* _Kq_hat_2 __Kq_hat_2)
     (progn
       (if __Kq_hat_2 (setq _Kq_hat_2 (car __Kq_hat_2)))
       _Kq_hat_2)))
  (:rho_p
   (&rest __rho_p)
   (if (keywordp (car __rho_p))
       (send* _rho_p __rho_p)
     (progn
       (if __rho_p (setq _rho_p (car __rho_p)))
       _rho_p)))
  (:rho_q
   (&rest __rho_q)
   (if (keywordp (car __rho_q))
       (send* _rho_q __rho_q)
     (progn
       (if __rho_q (setq _rho_q (car __rho_q)))
       _rho_q)))
  (:delTau_p
   (&rest __delTau_p)
   (if (keywordp (car __delTau_p))
       (send* _delTau_p __delTau_p)
     (progn
       (if __delTau_p (setq _delTau_p (car __delTau_p)))
       _delTau_p)))
  (:delTau_q
   (&rest __delTau_q)
   (if (keywordp (car __delTau_q))
       (send* _delTau_q __delTau_q)
     (progn
       (if __delTau_q (setq _delTau_q (car __delTau_q)))
       _delTau_q)))
  (:moments
   (&rest __moments)
   (if (keywordp (car __moments))
       (send* _moments __moments)
     (progn
       (if __moments (setq _moments (car __moments)))
       _moments)))
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:M_hat
   (&optional __M_hat)
   (if __M_hat (setq _M_hat __M_hat)) _M_hat)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _sp
    (send _sp :serialization-length)
    ;; geometry_msgs/Vector3 _sq
    (send _sq :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _angular_acceleration
    (send _angular_acceleration :serialization-length)
    ;; geometry_msgs/Vector3 _position_error
    (send _position_error :serialization-length)
    ;; geometry_msgs/Vector3 _velocity_error
    (send _velocity_error :serialization-length)
    ;; geometry_msgs/Vector3 _position_error_integral
    (send _position_error_integral :serialization-length)
    ;; geometry_msgs/Vector3 _angle_error
    (send _angle_error :serialization-length)
    ;; geometry_msgs/Vector3 _angle_rate_error
    (send _angle_rate_error :serialization-length)
    ;; geometry_msgs/Vector3 _Kp_hat
    (send _Kp_hat :serialization-length)
    ;; geometry_msgs/Vector3 _Kq_hat_0
    (send _Kq_hat_0 :serialization-length)
    ;; geometry_msgs/Vector3 _Kq_hat_1
    (send _Kq_hat_1 :serialization-length)
    ;; geometry_msgs/Vector3 _Kq_hat_2
    (send _Kq_hat_2 :serialization-length)
    ;; geometry_msgs/Vector3 _rho_p
    (send _rho_p :serialization-length)
    ;; geometry_msgs/Vector3 _rho_q
    (send _rho_q :serialization-length)
    ;; geometry_msgs/Vector3 _delTau_p
    (send _delTau_p :serialization-length)
    ;; geometry_msgs/Vector3 _delTau_q
    (send _delTau_q :serialization-length)
    ;; geometry_msgs/Vector3 _moments
    (send _moments :serialization-length)
    ;; float64 _thrust
    8
    ;; float64 _M_hat
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _sp
       (send _sp :serialize s)
     ;; geometry_msgs/Vector3 _sq
       (send _sq :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; geometry_msgs/Vector3 _angular_acceleration
       (send _angular_acceleration :serialize s)
     ;; geometry_msgs/Vector3 _position_error
       (send _position_error :serialize s)
     ;; geometry_msgs/Vector3 _velocity_error
       (send _velocity_error :serialize s)
     ;; geometry_msgs/Vector3 _position_error_integral
       (send _position_error_integral :serialize s)
     ;; geometry_msgs/Vector3 _angle_error
       (send _angle_error :serialize s)
     ;; geometry_msgs/Vector3 _angle_rate_error
       (send _angle_rate_error :serialize s)
     ;; geometry_msgs/Vector3 _Kp_hat
       (send _Kp_hat :serialize s)
     ;; geometry_msgs/Vector3 _Kq_hat_0
       (send _Kq_hat_0 :serialize s)
     ;; geometry_msgs/Vector3 _Kq_hat_1
       (send _Kq_hat_1 :serialize s)
     ;; geometry_msgs/Vector3 _Kq_hat_2
       (send _Kq_hat_2 :serialize s)
     ;; geometry_msgs/Vector3 _rho_p
       (send _rho_p :serialize s)
     ;; geometry_msgs/Vector3 _rho_q
       (send _rho_q :serialize s)
     ;; geometry_msgs/Vector3 _delTau_p
       (send _delTau_p :serialize s)
     ;; geometry_msgs/Vector3 _delTau_q
       (send _delTau_q :serialize s)
     ;; geometry_msgs/Vector3 _moments
       (send _moments :serialize s)
     ;; float64 _thrust
       (sys::poke _thrust (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _M_hat
       (sys::poke _M_hat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _sp
     (send _sp :deserialize buf ptr-) (incf ptr- (send _sp :serialization-length))
   ;; geometry_msgs/Vector3 _sq
     (send _sq :deserialize buf ptr-) (incf ptr- (send _sq :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _angular_acceleration
     (send _angular_acceleration :deserialize buf ptr-) (incf ptr- (send _angular_acceleration :serialization-length))
   ;; geometry_msgs/Vector3 _position_error
     (send _position_error :deserialize buf ptr-) (incf ptr- (send _position_error :serialization-length))
   ;; geometry_msgs/Vector3 _velocity_error
     (send _velocity_error :deserialize buf ptr-) (incf ptr- (send _velocity_error :serialization-length))
   ;; geometry_msgs/Vector3 _position_error_integral
     (send _position_error_integral :deserialize buf ptr-) (incf ptr- (send _position_error_integral :serialization-length))
   ;; geometry_msgs/Vector3 _angle_error
     (send _angle_error :deserialize buf ptr-) (incf ptr- (send _angle_error :serialization-length))
   ;; geometry_msgs/Vector3 _angle_rate_error
     (send _angle_rate_error :deserialize buf ptr-) (incf ptr- (send _angle_rate_error :serialization-length))
   ;; geometry_msgs/Vector3 _Kp_hat
     (send _Kp_hat :deserialize buf ptr-) (incf ptr- (send _Kp_hat :serialization-length))
   ;; geometry_msgs/Vector3 _Kq_hat_0
     (send _Kq_hat_0 :deserialize buf ptr-) (incf ptr- (send _Kq_hat_0 :serialization-length))
   ;; geometry_msgs/Vector3 _Kq_hat_1
     (send _Kq_hat_1 :deserialize buf ptr-) (incf ptr- (send _Kq_hat_1 :serialization-length))
   ;; geometry_msgs/Vector3 _Kq_hat_2
     (send _Kq_hat_2 :deserialize buf ptr-) (incf ptr- (send _Kq_hat_2 :serialization-length))
   ;; geometry_msgs/Vector3 _rho_p
     (send _rho_p :deserialize buf ptr-) (incf ptr- (send _rho_p :serialization-length))
   ;; geometry_msgs/Vector3 _rho_q
     (send _rho_q :deserialize buf ptr-) (incf ptr- (send _rho_q :serialization-length))
   ;; geometry_msgs/Vector3 _delTau_p
     (send _delTau_p :deserialize buf ptr-) (incf ptr- (send _delTau_p :serialization-length))
   ;; geometry_msgs/Vector3 _delTau_q
     (send _delTau_q :deserialize buf ptr-) (incf ptr- (send _delTau_q :serialization-length))
   ;; geometry_msgs/Vector3 _moments
     (send _moments :deserialize buf ptr-) (incf ptr- (send _moments :serialization-length))
   ;; float64 _thrust
     (setq _thrust (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _M_hat
     (setq _M_hat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get msg_check::PlotDataMsg :md5sum-) "34437636d1c86e0bba868e7bc32517df")
(setf (get msg_check::PlotDataMsg :datatype-) "msg_check/PlotDataMsg")
(setf (get msg_check::PlotDataMsg :definition-)
      "Header header
geometry_msgs/Vector3 sp
geometry_msgs/Vector3 sq
geometry_msgs/Vector3 acceleration
geometry_msgs/Vector3 angular_acceleration
geometry_msgs/Vector3 position_error
geometry_msgs/Vector3 velocity_error
geometry_msgs/Vector3 position_error_integral
geometry_msgs/Vector3 angle_error
geometry_msgs/Vector3 angle_rate_error
geometry_msgs/Vector3 Kp_hat
geometry_msgs/Vector3 Kq_hat_0
geometry_msgs/Vector3 Kq_hat_1
geometry_msgs/Vector3 Kq_hat_2
geometry_msgs/Vector3 rho_p
geometry_msgs/Vector3 rho_q
geometry_msgs/Vector3 delTau_p
geometry_msgs/Vector3 delTau_q
geometry_msgs/Vector3 moments
float64 thrust
float64 M_hat

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



(provide :msg_check/PlotDataMsg "34437636d1c86e0bba868e7bc32517df")


