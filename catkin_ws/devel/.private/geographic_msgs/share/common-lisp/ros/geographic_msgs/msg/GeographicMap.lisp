; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude GeographicMap.msg.html

(cl:defclass <GeographicMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type uuid_msgs-msg:UniqueID
    :initform (cl:make-instance 'uuid_msgs-msg:UniqueID))
   (bounds
    :reader bounds
    :initarg :bounds
    :type geographic_msgs-msg:BoundingBox
    :initform (cl:make-instance 'geographic_msgs-msg:BoundingBox))
   (points
    :reader points
    :initarg :points
    :type (cl:vector geographic_msgs-msg:WayPoint)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:WayPoint :initial-element (cl:make-instance 'geographic_msgs-msg:WayPoint)))
   (features
    :reader features
    :initarg :features
    :type (cl:vector geographic_msgs-msg:MapFeature)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:MapFeature :initial-element (cl:make-instance 'geographic_msgs-msg:MapFeature)))
   (props
    :reader props
    :initarg :props
    :type (cl:vector geographic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'geographic_msgs-msg:KeyValue :initial-element (cl:make-instance 'geographic_msgs-msg:KeyValue))))
)

(cl:defclass GeographicMap (<GeographicMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeographicMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeographicMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<GeographicMap> is deprecated: use geographic_msgs-msg:GeographicMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GeographicMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:header-val is deprecated.  Use geographic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GeographicMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:id-val is deprecated.  Use geographic_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'bounds-val :lambda-list '(m))
(cl:defmethod bounds-val ((m <GeographicMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:bounds-val is deprecated.  Use geographic_msgs-msg:bounds instead.")
  (bounds m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <GeographicMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:points-val is deprecated.  Use geographic_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <GeographicMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:features-val is deprecated.  Use geographic_msgs-msg:features instead.")
  (features m))

(cl:ensure-generic-function 'props-val :lambda-list '(m))
(cl:defmethod props-val ((m <GeographicMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:props-val is deprecated.  Use geographic_msgs-msg:props instead.")
  (props m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeographicMap>) ostream)
  "Serializes a message object of type '<GeographicMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounds) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'features))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'props))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'props))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeographicMap>) istream)
  "Deserializes a message object of type '<GeographicMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounds) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geographic_msgs-msg:WayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geographic_msgs-msg:MapFeature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'props) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'props)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geographic_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeographicMap>)))
  "Returns string type for a message object of type '<GeographicMap>"
  "geographic_msgs/GeographicMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeographicMap)))
  "Returns string type for a message object of type 'GeographicMap"
  "geographic_msgs/GeographicMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeographicMap>)))
  "Returns md5sum for a message object of type '<GeographicMap>"
  "0f4ce6d2ebf9ac9c7c4f3308f6ae0731")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeographicMap)))
  "Returns md5sum for a message object of type 'GeographicMap"
  "0f4ce6d2ebf9ac9c7c4f3308f6ae0731")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeographicMap>)))
  "Returns full string definition for message of type '<GeographicMap>"
  (cl:format cl:nil "# Geographic map for a specified region.~%~%Header header            # stamp specifies time~%                         # frame_id (normally /map)~%~%uuid_msgs/UniqueID id    # identifier for this map~%BoundingBox  bounds      # 2D bounding box containing map~%~%WayPoint[]   points      # way-points~%MapFeature[] features    # map features~%KeyValue[]   props       # map properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/BoundingBox~%# Geographic map bounding box. ~%#~%# The two GeoPoints denote diagonally opposite corners of the box.~%#~%# If min_pt.latitude is NaN, the bounding box is \"global\", matching~%# any valid latitude, longitude and altitude.~%#~%# If min_pt.altitude is NaN, the bounding box is two-dimensional and~%# matches any altitude within the specified latitude and longitude~%# range.~%~%GeoPoint min_pt         # lowest and most Southwestern corner~%GeoPoint max_pt         # highest and most Northeastern corner~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geographic_msgs/WayPoint~%# Way-point element for a geographic map.~%~%uuid_msgs/UniqueID id   # Unique way-point identifier~%GeoPoint   position     # Position relative to WGS 84 ellipsoid~%KeyValue[] props        # Key/value properties for this point~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%================================================================================~%MSG: geographic_msgs/MapFeature~%# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeographicMap)))
  "Returns full string definition for message of type 'GeographicMap"
  (cl:format cl:nil "# Geographic map for a specified region.~%~%Header header            # stamp specifies time~%                         # frame_id (normally /map)~%~%uuid_msgs/UniqueID id    # identifier for this map~%BoundingBox  bounds      # 2D bounding box containing map~%~%WayPoint[]   points      # way-points~%MapFeature[] features    # map features~%KeyValue[]   props       # map properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/BoundingBox~%# Geographic map bounding box. ~%#~%# The two GeoPoints denote diagonally opposite corners of the box.~%#~%# If min_pt.latitude is NaN, the bounding box is \"global\", matching~%# any valid latitude, longitude and altitude.~%#~%# If min_pt.altitude is NaN, the bounding box is two-dimensional and~%# matches any altitude within the specified latitude and longitude~%# range.~%~%GeoPoint min_pt         # lowest and most Southwestern corner~%GeoPoint max_pt         # highest and most Northeastern corner~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geographic_msgs/WayPoint~%# Way-point element for a geographic map.~%~%uuid_msgs/UniqueID id   # Unique way-point identifier~%GeoPoint   position     # Position relative to WGS 84 ellipsoid~%KeyValue[] props        # Key/value properties for this point~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%================================================================================~%MSG: geographic_msgs/MapFeature~%# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeographicMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounds))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'props) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeographicMap>))
  "Converts a ROS message object to a list"
  (cl:list 'GeographicMap
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':bounds (bounds msg))
    (cl:cons ':points (points msg))
    (cl:cons ':features (features msg))
    (cl:cons ':props (props msg))
))
