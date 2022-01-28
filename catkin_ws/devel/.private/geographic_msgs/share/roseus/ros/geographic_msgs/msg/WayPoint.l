;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::WayPoint)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'WayPoint (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::WAYPOINT")
  (make-package "GEOGRAPHIC_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude WayPoint.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass geographic_msgs::WayPoint
  :super ros::object
  :slots (_id _position _props ))

(defmethod geographic_msgs::WayPoint
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:position __position) (instance geographic_msgs::GeoPoint :init))
    ((:props __props) (let (r) (dotimes (i 0) (push (instance geographic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _position __position)
   (setq _props __props)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
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
    ;; geographic_msgs/GeoPoint _position
    (send _position :serialization-length)
    ;; geographic_msgs/KeyValue[] _props
    (apply #'+ (send-all _props :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; geographic_msgs/GeoPoint _position
       (send _position :serialize s)
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
   ;; geographic_msgs/GeoPoint _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
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

(setf (get geographic_msgs::WayPoint :md5sum-) "ef04f823aef332455a49eaec3f1761b7")
(setf (get geographic_msgs::WayPoint :datatype-) "geographic_msgs/WayPoint")
(setf (get geographic_msgs::WayPoint :definition-)
      "# Way-point element for a geographic map.

uuid_msgs/UniqueID id   # Unique way-point identifier
GeoPoint   position     # Position relative to WGS 84 ellipsoid
KeyValue[] props        # Key/value properties for this point

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

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
MSG: geographic_msgs/KeyValue
# Geographic map tag (key, value) pair
#
# This is equivalent to diagnostic_msgs/KeyValue, repeated here to
# avoid introducing a trivial stack dependency.

string key                     # tag label
string value                   # corresponding value

")



(provide :geographic_msgs/WayPoint "ef04f823aef332455a49eaec3f1761b7")


