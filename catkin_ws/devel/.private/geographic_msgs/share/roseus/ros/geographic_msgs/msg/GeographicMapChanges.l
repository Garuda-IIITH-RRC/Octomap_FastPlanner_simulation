;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::GeographicMapChanges)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'GeographicMapChanges (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::GEOGRAPHICMAPCHANGES")
  (make-package "GEOGRAPHIC_MSGS::GEOGRAPHICMAPCHANGES"))

(in-package "ROS")
;;//! \htmlinclude GeographicMapChanges.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass geographic_msgs::GeographicMapChanges
  :super ros::object
  :slots (_header _diffs _deletes ))

(defmethod geographic_msgs::GeographicMapChanges
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:diffs __diffs) (instance geographic_msgs::GeographicMap :init))
    ((:deletes __deletes) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _diffs __diffs)
   (setq _deletes __deletes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:diffs
   (&rest __diffs)
   (if (keywordp (car __diffs))
       (send* _diffs __diffs)
     (progn
       (if __diffs (setq _diffs (car __diffs)))
       _diffs)))
  (:deletes
   (&rest __deletes)
   (if (keywordp (car __deletes))
       (send* _deletes __deletes)
     (progn
       (if __deletes (setq _deletes (car __deletes)))
       _deletes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geographic_msgs/GeographicMap _diffs
    (send _diffs :serialization-length)
    ;; uuid_msgs/UniqueID[] _deletes
    (apply #'+ (send-all _deletes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geographic_msgs/GeographicMap _diffs
       (send _diffs :serialize s)
     ;; uuid_msgs/UniqueID[] _deletes
     (write-long (length _deletes) s)
     (dolist (elem _deletes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geographic_msgs/GeographicMap _diffs
     (send _diffs :deserialize buf ptr-) (incf ptr- (send _diffs :serialization-length))
   ;; uuid_msgs/UniqueID[] _deletes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deletes (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _deletes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get geographic_msgs::GeographicMapChanges :md5sum-) "4fd027f54298203ec12aa1c4b20e6cb8")
(setf (get geographic_msgs::GeographicMapChanges :datatype-) "geographic_msgs/GeographicMapChanges")
(setf (get geographic_msgs::GeographicMapChanges :definition-)
      "# A list of geographic map changes.

Header header                   # stamp specifies time of change
                                # frame_id (normally /map)

GeographicMap diffs             # new and changed points and features
uuid_msgs/UniqueID[] deletes    # deleted map components

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
MSG: geographic_msgs/GeographicMap
# Geographic map for a specified region.

Header header            # stamp specifies time
                         # frame_id (normally /map)

uuid_msgs/UniqueID id    # identifier for this map
BoundingBox  bounds      # 2D bounding box containing map

WayPoint[]   points      # way-points
MapFeature[] features    # map features
KeyValue[]   props       # map properties

================================================================================
MSG: uuid_msgs/UniqueID
# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

================================================================================
MSG: geographic_msgs/BoundingBox
# Geographic map bounding box. 
#
# The two GeoPoints denote diagonally opposite corners of the box.
#
# If min_pt.latitude is NaN, the bounding box is \"global\", matching
# any valid latitude, longitude and altitude.
#
# If min_pt.altitude is NaN, the bounding box is two-dimensional and
# matches any altitude within the specified latitude and longitude
# range.

GeoPoint min_pt         # lowest and most Southwestern corner
GeoPoint max_pt         # highest and most Northeastern corner

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
MSG: geographic_msgs/WayPoint
# Way-point element for a geographic map.

uuid_msgs/UniqueID id   # Unique way-point identifier
GeoPoint   position     # Position relative to WGS 84 ellipsoid
KeyValue[] props        # Key/value properties for this point

================================================================================
MSG: geographic_msgs/KeyValue
# Geographic map tag (key, value) pair
#
# This is equivalent to diagnostic_msgs/KeyValue, repeated here to
# avoid introducing a trivial stack dependency.

string key                     # tag label
string value                   # corresponding value

================================================================================
MSG: geographic_msgs/MapFeature
# Geographic map feature.
#
# A list of WayPoint IDs for features like streets, highways, hiking
# trails, the outlines of buildings and parking lots in sequential
# order.
#
# Feature lists may also contain other feature lists as members.

uuid_msgs/UniqueID   id         # Unique feature identifier
uuid_msgs/UniqueID[] components # Sequence of feature components
KeyValue[] props                # Key/value properties for this feature

")



(provide :geographic_msgs/GeographicMapChanges "4fd027f54298203ec12aa1c4b20e6cb8")


