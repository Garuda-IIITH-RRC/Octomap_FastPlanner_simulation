;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::RouteSegment)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'RouteSegment (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::ROUTESEGMENT")
  (make-package "GEOGRAPHIC_MSGS::ROUTESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude RouteSegment.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass geographic_msgs::RouteSegment
  :super ros::object
  :slots (_id _start _end _props ))

(defmethod geographic_msgs::RouteSegment
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:start __start) (instance uuid_msgs::UniqueID :init))
    ((:end __end) (instance uuid_msgs::UniqueID :init))
    ((:props __props) (let (r) (dotimes (i 0) (push (instance geographic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _start __start)
   (setq _end __end)
   (setq _props __props)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
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
    ;; uuid_msgs/UniqueID _id
    (send _id :serialization-length)
    ;; uuid_msgs/UniqueID _start
    (send _start :serialization-length)
    ;; uuid_msgs/UniqueID _end
    (send _end :serialization-length)
    ;; geographic_msgs/KeyValue[] _props
    (apply #'+ (send-all _props :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; uuid_msgs/UniqueID _start
       (send _start :serialize s)
     ;; uuid_msgs/UniqueID _end
       (send _end :serialize s)
     ;; geographic_msgs/KeyValue[] _props
     (write-long (length _props) s)
     (dolist (elem _props)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uuid_msgs/UniqueID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; uuid_msgs/UniqueID _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; uuid_msgs/UniqueID _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
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

(setf (get geographic_msgs::RouteSegment :md5sum-) "8583d1e2ddf1891c3934a5d2ed9a799c")
(setf (get geographic_msgs::RouteSegment :datatype-) "geographic_msgs/RouteSegment")
(setf (get geographic_msgs::RouteSegment :definition-)
      "# Route network segment.
#
# This is one directed edge of a RouteNetwork graph. It represents a
# known path from one way point to another.  If the path is two-way,
# there will be another RouteSegment with \"start\" and \"end\" reversed.

uuid_msgs/UniqueID id           # Unique identifier for this segment

uuid_msgs/UniqueID start        # beginning way point of segment
uuid_msgs/UniqueID end          # ending way point of segment

KeyValue[] props                # segment properties

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



(provide :geographic_msgs/RouteSegment "8583d1e2ddf1891c3934a5d2ed9a799c")


