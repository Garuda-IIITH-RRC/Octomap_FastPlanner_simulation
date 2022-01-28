; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude GeographicMapChanges.msg.html

(cl:defclass <GeographicMapChanges> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (diffs
    :reader diffs
    :initarg :diffs
    :type geographic_msgs-msg:GeographicMap
    :initform (cl:make-instance 'geographic_msgs-msg:GeographicMap))
   (deletes
    :reader deletes
    :initarg :deletes
    :type (cl:vector uuid_msgs-msg:UniqueID)
   :initform (cl:make-array 0 :element-type 'uuid_msgs-msg:UniqueID :initial-element (cl:make-instance 'uuid_msgs-msg:UniqueID))))
)

(cl:defclass GeographicMapChanges (<GeographicMapChanges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeographicMapChanges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeographicMapChanges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<GeographicMapChanges> is deprecated: use geographic_msgs-msg:GeographicMapChanges instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GeographicMapChanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:header-val is deprecated.  Use geographic_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'diffs-val :lambda-list '(m))
(cl:defmethod diffs-val ((m <GeographicMapChanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:diffs-val is deprecated.  Use geographic_msgs-msg:diffs instead.")
  (diffs m))

(cl:ensure-generic-function 'deletes-val :lambda-list '(m))
(cl:defmethod deletes-val ((m <GeographicMapChanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:deletes-val is deprecated.  Use geographic_msgs-msg:deletes instead.")
  (deletes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeographicMapChanges>) ostream)
  "Serializes a message object of type '<GeographicMapChanges>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diffs) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'deletes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'deletes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeographicMapChanges>) istream)
  "Deserializes a message object of type '<GeographicMapChanges>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diffs) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'deletes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'deletes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'uuid_msgs-msg:UniqueID))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeographicMapChanges>)))
  "Returns string type for a message object of type '<GeographicMapChanges>"
  "geographic_msgs/GeographicMapChanges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeographicMapChanges)))
  "Returns string type for a message object of type 'GeographicMapChanges"
  "geographic_msgs/GeographicMapChanges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeographicMapChanges>)))
  "Returns md5sum for a message object of type '<GeographicMapChanges>"
  "4fd027f54298203ec12aa1c4b20e6cb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeographicMapChanges)))
  "Returns md5sum for a message object of type 'GeographicMapChanges"
  "4fd027f54298203ec12aa1c4b20e6cb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeographicMapChanges>)))
  "Returns full string definition for message of type '<GeographicMapChanges>"
  (cl:format cl:nil "# A list of geographic map changes.~%~%Header header                   # stamp specifies time of change~%                                # frame_id (normally /map)~%~%GeographicMap diffs             # new and changed points and features~%uuid_msgs/UniqueID[] deletes    # deleted map components~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeographicMap~%# Geographic map for a specified region.~%~%Header header            # stamp specifies time~%                         # frame_id (normally /map)~%~%uuid_msgs/UniqueID id    # identifier for this map~%BoundingBox  bounds      # 2D bounding box containing map~%~%WayPoint[]   points      # way-points~%MapFeature[] features    # map features~%KeyValue[]   props       # map properties~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/BoundingBox~%# Geographic map bounding box. ~%#~%# The two GeoPoints denote diagonally opposite corners of the box.~%#~%# If min_pt.latitude is NaN, the bounding box is \"global\", matching~%# any valid latitude, longitude and altitude.~%#~%# If min_pt.altitude is NaN, the bounding box is two-dimensional and~%# matches any altitude within the specified latitude and longitude~%# range.~%~%GeoPoint min_pt         # lowest and most Southwestern corner~%GeoPoint max_pt         # highest and most Northeastern corner~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geographic_msgs/WayPoint~%# Way-point element for a geographic map.~%~%uuid_msgs/UniqueID id   # Unique way-point identifier~%GeoPoint   position     # Position relative to WGS 84 ellipsoid~%KeyValue[] props        # Key/value properties for this point~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%================================================================================~%MSG: geographic_msgs/MapFeature~%# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeographicMapChanges)))
  "Returns full string definition for message of type 'GeographicMapChanges"
  (cl:format cl:nil "# A list of geographic map changes.~%~%Header header                   # stamp specifies time of change~%                                # frame_id (normally /map)~%~%GeographicMap diffs             # new and changed points and features~%uuid_msgs/UniqueID[] deletes    # deleted map components~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeographicMap~%# Geographic map for a specified region.~%~%Header header            # stamp specifies time~%                         # frame_id (normally /map)~%~%uuid_msgs/UniqueID id    # identifier for this map~%BoundingBox  bounds      # 2D bounding box containing map~%~%WayPoint[]   points      # way-points~%MapFeature[] features    # map features~%KeyValue[]   props       # map properties~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/BoundingBox~%# Geographic map bounding box. ~%#~%# The two GeoPoints denote diagonally opposite corners of the box.~%#~%# If min_pt.latitude is NaN, the bounding box is \"global\", matching~%# any valid latitude, longitude and altitude.~%#~%# If min_pt.altitude is NaN, the bounding box is two-dimensional and~%# matches any altitude within the specified latitude and longitude~%# range.~%~%GeoPoint min_pt         # lowest and most Southwestern corner~%GeoPoint max_pt         # highest and most Northeastern corner~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geographic_msgs/WayPoint~%# Way-point element for a geographic map.~%~%uuid_msgs/UniqueID id   # Unique way-point identifier~%GeoPoint   position     # Position relative to WGS 84 ellipsoid~%KeyValue[] props        # Key/value properties for this point~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%================================================================================~%MSG: geographic_msgs/MapFeature~%# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeographicMapChanges>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diffs))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'deletes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeographicMapChanges>))
  "Converts a ROS message object to a list"
  (cl:list 'GeographicMapChanges
    (cl:cons ':header (header msg))
    (cl:cons ':diffs (diffs msg))
    (cl:cons ':deletes (deletes msg))
))
