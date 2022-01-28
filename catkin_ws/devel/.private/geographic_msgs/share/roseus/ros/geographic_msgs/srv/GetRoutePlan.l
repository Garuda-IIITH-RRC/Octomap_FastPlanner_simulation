;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::GetRoutePlan)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'GetRoutePlan (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::GETROUTEPLAN")
  (make-package "GEOGRAPHIC_MSGS::GETROUTEPLAN"))
(unless (find-package "GEOGRAPHIC_MSGS::GETROUTEPLANREQUEST")
  (make-package "GEOGRAPHIC_MSGS::GETROUTEPLANREQUEST"))
(unless (find-package "GEOGRAPHIC_MSGS::GETROUTEPLANRESPONSE")
  (make-package "GEOGRAPHIC_MSGS::GETROUTEPLANRESPONSE"))

(in-package "ROS")

(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))




(defclass geographic_msgs::GetRoutePlanRequest
  :super ros::object
  :slots (_network _start _goal ))

(defmethod geographic_msgs::GetRoutePlanRequest
  (:init
   (&key
    ((:network __network) (instance uuid_msgs::UniqueID :init))
    ((:start __start) (instance uuid_msgs::UniqueID :init))
    ((:goal __goal) (instance uuid_msgs::UniqueID :init))
    )
   (send-super :init)
   (setq _network __network)
   (setq _start __start)
   (setq _goal __goal)
   self)
  (:network
   (&rest __network)
   (if (keywordp (car __network))
       (send* _network __network)
     (progn
       (if __network (setq _network (car __network)))
       _network)))
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
    ;; uuid_msgs/UniqueID _network
    (send _network :serialization-length)
    ;; uuid_msgs/UniqueID _start
    (send _start :serialization-length)
    ;; uuid_msgs/UniqueID _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _network
       (send _network :serialize s)
     ;; uuid_msgs/UniqueID _start
       (send _start :serialize s)
     ;; uuid_msgs/UniqueID _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID _network
     (send _network :deserialize buf ptr-) (incf ptr- (send _network :serialization-length))
   ;; uuid_msgs/UniqueID _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; uuid_msgs/UniqueID _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(defclass geographic_msgs::GetRoutePlanResponse
  :super ros::object
  :slots (_success _status _plan ))

(defmethod geographic_msgs::GetRoutePlanResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    ((:plan __plan) (instance geographic_msgs::RoutePath :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   (setq _plan __plan)
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
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ;; geographic_msgs/RoutePath _plan
    (send _plan :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; geographic_msgs/RoutePath _plan
       (send _plan :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geographic_msgs/RoutePath _plan
     (send _plan :deserialize buf ptr-) (incf ptr- (send _plan :serialization-length))
   ;;
   self)
  )

(defclass geographic_msgs::GetRoutePlan
  :super ros::object
  :slots ())

(setf (get geographic_msgs::GetRoutePlan :md5sum-) "04479050c4f2a58d915ceec419e70b4e")
(setf (get geographic_msgs::GetRoutePlan :datatype-) "geographic_msgs/GetRoutePlan")
(setf (get geographic_msgs::GetRoutePlan :request) geographic_msgs::GetRoutePlanRequest)
(setf (get geographic_msgs::GetRoutePlan :response) geographic_msgs::GetRoutePlanResponse)

(defmethod geographic_msgs::GetRoutePlanRequest
  (:response () (instance geographic_msgs::GetRoutePlanResponse :init)))

(setf (get geographic_msgs::GetRoutePlanRequest :md5sum-) "04479050c4f2a58d915ceec419e70b4e")
(setf (get geographic_msgs::GetRoutePlanRequest :datatype-) "geographic_msgs/GetRoutePlanRequest")
(setf (get geographic_msgs::GetRoutePlanRequest :definition-)
      "# Get a plan to traverse a route network from start to goal.
#
# Similar to nav_msgs/GetPlan, but constrained to use the route network.

uuid_msgs/UniqueID network      # route network to use
uuid_msgs/UniqueID start        # starting way point
uuid_msgs/UniqueID goal         # goal way point


================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
---

bool            success         # true if the call succeeded
string          status          # more details

RoutePath       plan            # path to follow


================================================================================
MSG: geographic_msgs/RoutePath
# Path through a route network.
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

(setf (get geographic_msgs::GetRoutePlanResponse :md5sum-) "04479050c4f2a58d915ceec419e70b4e")
(setf (get geographic_msgs::GetRoutePlanResponse :datatype-) "geographic_msgs/GetRoutePlanResponse")
(setf (get geographic_msgs::GetRoutePlanResponse :definition-)
      "# Get a plan to traverse a route network from start to goal.
#
# Similar to nav_msgs/GetPlan, but constrained to use the route network.

uuid_msgs/UniqueID network      # route network to use
uuid_msgs/UniqueID start        # starting way point
uuid_msgs/UniqueID goal         # goal way point


================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid
---

bool            success         # true if the call succeeded
string          status          # more details

RoutePath       plan            # path to follow


================================================================================
MSG: geographic_msgs/RoutePath
# Path through a route network.
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



(provide :geographic_msgs/GetRoutePlan "04479050c4f2a58d915ceec419e70b4e")


