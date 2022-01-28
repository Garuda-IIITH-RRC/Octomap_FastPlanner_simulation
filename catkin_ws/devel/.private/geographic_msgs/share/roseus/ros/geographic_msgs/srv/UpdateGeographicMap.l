;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::UpdateGeographicMap)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'UpdateGeographicMap (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::UPDATEGEOGRAPHICMAP")
  (make-package "GEOGRAPHIC_MSGS::UPDATEGEOGRAPHICMAP"))
(unless (find-package "GEOGRAPHIC_MSGS::UPDATEGEOGRAPHICMAPREQUEST")
  (make-package "GEOGRAPHIC_MSGS::UPDATEGEOGRAPHICMAPREQUEST"))
(unless (find-package "GEOGRAPHIC_MSGS::UPDATEGEOGRAPHICMAPRESPONSE")
  (make-package "GEOGRAPHIC_MSGS::UPDATEGEOGRAPHICMAPRESPONSE"))

(in-package "ROS")





(defclass geographic_msgs::UpdateGeographicMapRequest
  :super ros::object
  :slots (_updates ))

(defmethod geographic_msgs::UpdateGeographicMapRequest
  (:init
   (&key
    ((:updates __updates) (instance geographic_msgs::GeographicMapChanges :init))
    )
   (send-super :init)
   (setq _updates __updates)
   self)
  (:updates
   (&rest __updates)
   (if (keywordp (car __updates))
       (send* _updates __updates)
     (progn
       (if __updates (setq _updates (car __updates)))
       _updates)))
  (:serialization-length
   ()
   (+
    ;; geographic_msgs/GeographicMapChanges _updates
    (send _updates :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geographic_msgs/GeographicMapChanges _updates
       (send _updates :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geographic_msgs/GeographicMapChanges _updates
     (send _updates :deserialize buf ptr-) (incf ptr- (send _updates :serialization-length))
   ;;
   self)
  )

(defclass geographic_msgs::UpdateGeographicMapResponse
  :super ros::object
  :slots (_success _status ))

(defmethod geographic_msgs::UpdateGeographicMapResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status (string __status))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass geographic_msgs::UpdateGeographicMap
  :super ros::object
  :slots ())

(setf (get geographic_msgs::UpdateGeographicMap :md5sum-) "93db3f1ec099e9f1b7e442d7d397e244")
(setf (get geographic_msgs::UpdateGeographicMap :datatype-) "geographic_msgs/UpdateGeographicMap")
(setf (get geographic_msgs::UpdateGeographicMap :request) geographic_msgs::UpdateGeographicMapRequest)
(setf (get geographic_msgs::UpdateGeographicMap :response) geographic_msgs::UpdateGeographicMapResponse)

(defmethod geographic_msgs::UpdateGeographicMapRequest
  (:response () (instance geographic_msgs::UpdateGeographicMapResponse :init)))

(setf (get geographic_msgs::UpdateGeographicMapRequest :md5sum-) "93db3f1ec099e9f1b7e442d7d397e244")
(setf (get geographic_msgs::UpdateGeographicMapRequest :datatype-) "geographic_msgs/UpdateGeographicMapRequest")
(setf (get geographic_msgs::UpdateGeographicMapRequest :definition-)
      "# This service updates a geographic map.

# Changes to geographic map.
GeographicMapChanges updates


================================================================================
MSG: geographic_msgs/GeographicMapChanges
# A list of geographic map changes.

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
---

bool   success        # true if the call succeeded
string status         # more details

")

(setf (get geographic_msgs::UpdateGeographicMapResponse :md5sum-) "93db3f1ec099e9f1b7e442d7d397e244")
(setf (get geographic_msgs::UpdateGeographicMapResponse :datatype-) "geographic_msgs/UpdateGeographicMapResponse")
(setf (get geographic_msgs::UpdateGeographicMapResponse :definition-)
      "# This service updates a geographic map.

# Changes to geographic map.
GeographicMapChanges updates


================================================================================
MSG: geographic_msgs/GeographicMapChanges
# A list of geographic map changes.

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
---

bool   success        # true if the call succeeded
string status         # more details

")



(provide :geographic_msgs/UpdateGeographicMap "93db3f1ec099e9f1b7e442d7d397e244")


