;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::GetGeoPath)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'GetGeoPath (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::GETGEOPATH")
  (make-package "GEOGRAPHIC_MSGS::GETGEOPATH"))
(unless (find-package "GEOGRAPHIC_MSGS::GETGEOPATHREQUEST")
  (make-package "GEOGRAPHIC_MSGS::GETGEOPATHREQUEST"))
(unless (find-package "GEOGRAPHIC_MSGS::GETGEOPATHRESPONSE")
  (make-package "GEOGRAPHIC_MSGS::GETGEOPATHRESPONSE"))

(in-package "ROS")



(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass geographic_msgs::GetGeoPathRequest
  :super ros::object
  :slots (_start _goal ))

(defmethod geographic_msgs::GetGeoPathRequest
  (:init
   (&key
    ((:start __start) (instance geographic_msgs::GeoPoint :init))
    ((:goal __goal) (instance geographic_msgs::GeoPoint :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _goal __goal)
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; geographic_msgs/GeoPoint _start
    (send _start :serialization-length)
    ;; geographic_msgs/GeoPoint _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geographic_msgs/GeoPoint _start
       (send _start :serialize s)
     ;; geographic_msgs/GeoPoint _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geographic_msgs/GeoPoint _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geographic_msgs/GeoPoint _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass geographic_msgs::GetGeoPathResponse
  :super ros::object
  :slots (_success _status _plan _network _start_seg _goal_seg _distance ))

(defmethod geographic_msgs::GetGeoPathResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    ((:plan __plan) (instance geographic_msgs::GeoPath :init))
    ((:network __network) (instance uuid_msgs::UniqueID :init))
    ((:start_seg __start_seg) (instance uuid_msgs::UniqueID :init))
    ((:goal_seg __goal_seg) (instance uuid_msgs::UniqueID :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   (setq _plan __plan)
   (setq _network __network)
   (setq _start_seg __start_seg)
   (setq _goal_seg __goal_seg)
   (setq _distance (float __distance))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:plan
   (&rest __plan)
   (if (keywordp (car __plan))
       (send* _plan __plan)
     (progn
       (if __plan (setq _plan (car __plan)))
       _plan)))
  (:network
   (&rest __network)
   (if (keywordp (car __network))
       (send* _network __network)
     (progn
       (if __network (setq _network (car __network)))
       _network)))
  (:start_seg
   (&rest __start_seg)
   (if (keywordp (car __start_seg))
       (send* _start_seg __start_seg)
     (progn
       (if __start_seg (setq _start_seg (car __start_seg)))
       _start_seg)))
  (:goal_seg
   (&rest __goal_seg)
   (if (keywordp (car __goal_seg))
       (send* _goal_seg __goal_seg)
     (progn
       (if __goal_seg (setq _goal_seg (car __goal_seg)))
       _goal_seg)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ;; geographic_msgs/GeoPath _plan
    (send _plan :serialization-length)
    ;; uuid_msgs/UniqueID _network
    (send _network :serialization-length)
    ;; uuid_msgs/UniqueID _start_seg
    (send _start_seg :serialization-length)
    ;; uuid_msgs/UniqueID _goal_seg
    (send _goal_seg :serialization-length)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; geographic_msgs/GeoPath _plan
       (send _plan :serialize s)
     ;; uuid_msgs/UniqueID _network
       (send _network :serialize s)
     ;; uuid_msgs/UniqueID _start_seg
       (send _start_seg :serialize s)
     ;; uuid_msgs/UniqueID _goal_seg
       (send _goal_seg :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geographic_msgs/GeoPath _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;; uuid_msgs/UniqueID _network
     (send _network :deserialize buf ptr-) (incf ptr- (send _network :serialization-length))
   ;; uuid_msgs/UniqueID _start_seg
     (send _start_seg :deserialize buf ptr-) (incf ptr- (send _start_seg :serialization-length))
   ;; uuid_msgs/UniqueID _goal_seg
     (send _goal_seg :deserialize buf ptr-) (incf ptr- (send _goal_seg :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass geographic_msgs::GetGeoPath
  :super ros::object
  :slots ())

(setf (get geographic_msgs::GetGeoPath :md5sum-) "ee0dbd181711a70f823cc5d415fa609b")
(setf (get geographic_msgs::GetGeoPath :datatype-) "geographic_msgs/GetGeoPath")
(setf (get geographic_msgs::GetGeoPath :request) geographic_msgs::GetGeoPathRequest)
(setf (get geographic_msgs::GetGeoPath :response) geographic_msgs::GetGeoPathResponse)

(defmethod geographic_msgs::GetGeoPathRequest
  (:response () (instance geographic_msgs::GetGeoPathResponse :init)))

(setf (get geographic_msgs::GetGeoPathRequest :md5sum-) "ee0dbd181711a70f823cc5d415fa609b")
(setf (get geographic_msgs::GetGeoPathRequest :datatype-) "geographic_msgs/GetGeoPathRequest")
(setf (get geographic_msgs::GetGeoPathRequest :definition-)
      "# Searches for given start and goal the nearest route segments
# and determine the path through the RouteNetwork

geographic_msgs/GeoPoint start        # starting point
geographic_msgs/GeoPoint goal         # goal point


================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude
---

bool success                          # true if the call succeeded
string status                         # more details

geographic_msgs/GeoPath plan          # path to follow

uuid_msgs/UniqueID network            # the uuid of the RouteNetwork
uuid_msgs/UniqueID start_seg          # the uuid of the starting RouteSegment
uuid_msgs/UniqueID goal_seg           # the uuid of the ending RouteSegment
float64 distance                      # the length of the plan


================================================================================
MSG: geographic_msgs/GeoPath
std_msgs/Header header
geographic_msgs/GeoPoseStamped[] poses

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
MSG: geographic_msgs/GeoPoseStamped
Header header
geographic_msgs/GeoPose pose

================================================================================
MSG: geographic_msgs/GeoPose
# Geographic pose, using the WGS 84 reference ellipsoid.
#
# Orientation uses the East-North-Up (ENU) frame of reference.
# (But, what about singularities at the poles?)

GeoPoint position
geometry_msgs/Quaternion orientation

================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
")

(setf (get geographic_msgs::GetGeoPathResponse :md5sum-) "ee0dbd181711a70f823cc5d415fa609b")
(setf (get geographic_msgs::GetGeoPathResponse :datatype-) "geographic_msgs/GetGeoPathResponse")
(setf (get geographic_msgs::GetGeoPathResponse :definition-)
      "# Searches for given start and goal the nearest route segments
# and determine the path through the RouteNetwork

geographic_msgs/GeoPoint start        # starting point
geographic_msgs/GeoPoint goal         # goal point


================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude
---

bool success                          # true if the call succeeded
string status                         # more details

geographic_msgs/GeoPath plan          # path to follow

uuid_msgs/UniqueID network            # the uuid of the RouteNetwork
uuid_msgs/UniqueID start_seg          # the uuid of the starting RouteSegment
uuid_msgs/UniqueID goal_seg           # the uuid of the ending RouteSegment
float64 distance                      # the length of the plan


================================================================================
MSG: geographic_msgs/GeoPath
std_msgs/Header header
geographic_msgs/GeoPoseStamped[] poses

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
MSG: geographic_msgs/GeoPoseStamped
Header header
geographic_msgs/GeoPose pose

================================================================================
MSG: geographic_msgs/GeoPose
# Geographic pose, using the WGS 84 reference ellipsoid.
#
# Orientation uses the East-North-Up (ENU) frame of reference.
# (But, what about singularities at the poles?)

GeoPoint position
geometry_msgs/Quaternion orientation

================================================================================
MSG: geographic_msgs/GeoPoint
# Geographic point, using the WGS 84 reference ellipsoid.

# Latitude [degrees]. Positive is north of equator; negative is south
# (-90 <= latitude <= +90).
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is
# west (-180 <= longitude <= +180). At the poles, latitude is -90 or
# +90, and longitude is irrelevant, but must be in range.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
float64 altitude

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
")



(provide :geographic_msgs/GetGeoPath "ee0dbd181711a70f823cc5d415fa609b")


