;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::RoutePath)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'RoutePath (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::ROUTEPATH")
  (make-package "GEOGRAPHIC_MSGS::ROUTEPATH"))

(in-package "ROS")
;;//! \htmlinclude RoutePath.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass geographic_msgs::RoutePath
  :super ros::object
  :slots (_header _network _segments _props ))

(defmethod geographic_msgs::RoutePath
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:network __network) (instance uuid_msgs::UniqueID :init))
    ((:segments __segments) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    ((:props __props) (let (r) (dotimes (i 0) (push (instance geographic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _network __network)
   (setq _segments __segments)
   (setq _props __props)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:network
   (&rest __network)
   (if (keywordp (car __network))
       (send* _network __network)
     (progn
       (if __network (setq _network (car __network)))
       _network)))
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:props
   (&rest __props)
   (if (keywordp (car __props))
       (send* _props __props)
     (progn
       (if __props (setq _props (car __props)))
       _props)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uuid_msgs/UniqueID _network
    (send _network :serialization-length)
    ;; uuid_msgs/UniqueID[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ;; geographic_msgs/KeyValue[] _props
    (apply #'+ (send-all _props :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uuid_msgs/UniqueID _network
       (send _network :serialize s)
     ;; uuid_msgs/UniqueID[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;; geographic_msgs/KeyValue[] _props
     (write-long (length _props) s)
     (dolist (elem _props)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uuid_msgs/UniqueID _network
     (send _network :deserialize buf ptr-) (incf ptr- (send _network :serialization-length))
   ;; uuid_msgs/UniqueID[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geographic_msgs/KeyValue[] _props
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _props (let (r) (dotimes (i n) (push (instance geographic_msgs::KeyValue :init) r)) r))
     (dolist (elem- _props)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get geographic_msgs::RoutePath :md5sum-) "0aa2dd809a8091bdb4466dfefecbb8cf")
(setf (get geographic_msgs::RoutePath :datatype-) "geographic_msgs/RoutePath")
(setf (get geographic_msgs::RoutePath :definition-)
      "# Path through a route network.
#
# A path is a sequence of RouteSegment edges.  This information is
# extracted from a RouteNetwork graph.  A RoutePath lists the route
# segments needed to reach some chosen goal.

Header header

uuid_msgs/UniqueID   network    # Route network containing this path
uuid_msgs/UniqueID[] segments   # Sequence of RouteSegment IDs
KeyValue[]           props      # Key/value properties

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
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: geographic_msgs/KeyValue
# Geographic map tag (key, value) pair
#
# This is equivalent to diagnostic_msgs/KeyValue, repeated here to
# avoid introducing a trivial stack dependency.

string key                     # tag label
string value                   # corresponding value

")



(provide :geographic_msgs/RoutePath "0aa2dd809a8091bdb4466dfefecbb8cf")


