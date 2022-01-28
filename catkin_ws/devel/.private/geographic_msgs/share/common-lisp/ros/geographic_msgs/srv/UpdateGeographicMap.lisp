; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-srv)


;//! \htmlinclude UpdateGeographicMap-request.msg.html

(cl:defclass <UpdateGeographicMap-request> (roslisp-msg-protocol:ros-message)
  ((updates
    :reader updates
    :initarg :updates
    :type geographic_msgs-msg:GeographicMapChanges
    :initform (cl:make-instance 'geographic_msgs-msg:GeographicMapChanges)))
)

(cl:defclass UpdateGeographicMap-request (<UpdateGeographicMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateGeographicMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateGeographicMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<UpdateGeographicMap-request> is deprecated: use geographic_msgs-srv:UpdateGeographicMap-request instead.")))

(cl:ensure-generic-function 'updates-val :lambda-list '(m))
(cl:defmethod updates-val ((m <UpdateGeographicMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:updates-val is deprecated.  Use geographic_msgs-srv:updates instead.")
  (updates m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateGeographicMap-request>) ostream)
  "Serializes a message object of type '<UpdateGeographicMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'updates) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateGeographicMap-request>) istream)
  "Deserializes a message object of type '<UpdateGeographicMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'updates) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateGeographicMap-request>)))
  "Returns string type for a service object of type '<UpdateGeographicMap-request>"
  "geographic_msgs/UpdateGeographicMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGeographicMap-request)))
  "Returns string type for a service object of type 'UpdateGeographicMap-request"
  "geographic_msgs/UpdateGeographicMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateGeographicMap-request>)))
  "Returns md5sum for a message object of type '<UpdateGeographicMap-request>"
  "93db3f1ec099e9f1b7e442d7d397e244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateGeographicMap-request)))
  "Returns md5sum for a message object of type 'UpdateGeographicMap-request"
  "93db3f1ec099e9f1b7e442d7d397e244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateGeographicMap-request>)))
  "Returns full string definition for message of type '<UpdateGeographicMap-request>"
  (cl:format cl:nil "# This service updates a geographic map.~%~%# Changes to geographic map.~%GeographicMapChanges updates~%~%~%================================================================================~%MSG: geographic_msgs/GeographicMapChanges~%# A list of geographic map changes.~%~%Header header                   # stamp specifies time of change~%                                # frame_id (normally /map)~%~%GeographicMap diffs             # new and changed points and features~%uuid_msgs/UniqueID[] deletes    # deleted map components~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeographicMap~%# Geographic map for a specified region.~%~%Header header            # stamp specifies time~%                         # frame_id (normally /map)~%~%uuid_msgs/UniqueID id    # identifier for this map~%BoundingBox  bounds      # 2D bounding box containing map~%~%WayPoint[]   points      # way-points~%MapFeature[] features    # map features~%KeyValue[]   props       # map properties~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/BoundingBox~%# Geographic map bounding box. ~%#~%# The two GeoPoints denote diagonally opposite corners of the box.~%#~%# If min_pt.latitude is NaN, the bounding box is \"global\", matching~%# any valid latitude, longitude and altitude.~%#~%# If min_pt.altitude is NaN, the bounding box is two-dimensional and~%# matches any altitude within the specified latitude and longitude~%# range.~%~%GeoPoint min_pt         # lowest and most Southwestern corner~%GeoPoint max_pt         # highest and most Northeastern corner~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geographic_msgs/WayPoint~%# Way-point element for a geographic map.~%~%uuid_msgs/UniqueID id   # Unique way-point identifier~%GeoPoint   position     # Position relative to WGS 84 ellipsoid~%KeyValue[] props        # Key/value properties for this point~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%================================================================================~%MSG: geographic_msgs/MapFeature~%# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateGeographicMap-request)))
  "Returns full string definition for message of type 'UpdateGeographicMap-request"
  (cl:format cl:nil "# This service updates a geographic map.~%~%# Changes to geographic map.~%GeographicMapChanges updates~%~%~%================================================================================~%MSG: geographic_msgs/GeographicMapChanges~%# A list of geographic map changes.~%~%Header header                   # stamp specifies time of change~%                                # frame_id (normally /map)~%~%GeographicMap diffs             # new and changed points and features~%uuid_msgs/UniqueID[] deletes    # deleted map components~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geographic_msgs/GeographicMap~%# Geographic map for a specified region.~%~%Header header            # stamp specifies time~%                         # frame_id (normally /map)~%~%uuid_msgs/UniqueID id    # identifier for this map~%BoundingBox  bounds      # 2D bounding box containing map~%~%WayPoint[]   points      # way-points~%MapFeature[] features    # map features~%KeyValue[]   props       # map properties~%~%================================================================================~%MSG: uuid_msgs/UniqueID~%# A universally unique identifier (UUID).~%#~%#  http://en.wikipedia.org/wiki/Universally_unique_identifier~%#  http://tools.ietf.org/html/rfc4122.html~%~%uint8[16] uuid~%~%================================================================================~%MSG: geographic_msgs/BoundingBox~%# Geographic map bounding box. ~%#~%# The two GeoPoints denote diagonally opposite corners of the box.~%#~%# If min_pt.latitude is NaN, the bounding box is \"global\", matching~%# any valid latitude, longitude and altitude.~%#~%# If min_pt.altitude is NaN, the bounding box is two-dimensional and~%# matches any altitude within the specified latitude and longitude~%# range.~%~%GeoPoint min_pt         # lowest and most Southwestern corner~%GeoPoint max_pt         # highest and most Northeastern corner~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geographic_msgs/WayPoint~%# Way-point element for a geographic map.~%~%uuid_msgs/UniqueID id   # Unique way-point identifier~%GeoPoint   position     # Position relative to WGS 84 ellipsoid~%KeyValue[] props        # Key/value properties for this point~%~%================================================================================~%MSG: geographic_msgs/KeyValue~%# Geographic map tag (key, value) pair~%#~%# This is equivalent to diagnostic_msgs/KeyValue, repeated here to~%# avoid introducing a trivial stack dependency.~%~%string key                     # tag label~%string value                   # corresponding value~%~%================================================================================~%MSG: geographic_msgs/MapFeature~%# Geographic map feature.~%#~%# A list of WayPoint IDs for features like streets, highways, hiking~%# trails, the outlines of buildings and parking lots in sequential~%# order.~%#~%# Feature lists may also contain other feature lists as members.~%~%uuid_msgs/UniqueID   id         # Unique feature identifier~%uuid_msgs/UniqueID[] components # Sequence of feature components~%KeyValue[] props                # Key/value properties for this feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateGeographicMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'updates))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateGeographicMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateGeographicMap-request
    (cl:cons ':updates (updates msg))
))
;//! \htmlinclude UpdateGeographicMap-response.msg.html

(cl:defclass <UpdateGeographicMap-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass UpdateGeographicMap-response (<UpdateGeographicMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateGeographicMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateGeographicMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-srv:<UpdateGeographicMap-response> is deprecated: use geographic_msgs-srv:UpdateGeographicMap-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateGeographicMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:success-val is deprecated.  Use geographic_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UpdateGeographicMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-srv:status-val is deprecated.  Use geographic_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateGeographicMap-response>) ostream)
  "Serializes a message object of type '<UpdateGeographicMap-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateGeographicMap-response>) istream)
  "Deserializes a message object of type '<UpdateGeographicMap-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateGeographicMap-response>)))
  "Returns string type for a service object of type '<UpdateGeographicMap-response>"
  "geographic_msgs/UpdateGeographicMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGeographicMap-response)))
  "Returns string type for a service object of type 'UpdateGeographicMap-response"
  "geographic_msgs/UpdateGeographicMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateGeographicMap-response>)))
  "Returns md5sum for a message object of type '<UpdateGeographicMap-response>"
  "93db3f1ec099e9f1b7e442d7d397e244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateGeographicMap-response)))
  "Returns md5sum for a message object of type 'UpdateGeographicMap-response"
  "93db3f1ec099e9f1b7e442d7d397e244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateGeographicMap-response>)))
  "Returns full string definition for message of type '<UpdateGeographicMap-response>"
  (cl:format cl:nil "~%bool   success        # true if the call succeeded~%string status         # more details~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateGeographicMap-response)))
  "Returns full string definition for message of type 'UpdateGeographicMap-response"
  (cl:format cl:nil "~%bool   success        # true if the call succeeded~%string status         # more details~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateGeographicMap-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateGeographicMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateGeographicMap-response
    (cl:cons ':success (success msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateGeographicMap)))
  'UpdateGeographicMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateGeographicMap)))
  'UpdateGeographicMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateGeographicMap)))
  "Returns string type for a service object of type '<UpdateGeographicMap>"
  "geographic_msgs/UpdateGeographicMap")