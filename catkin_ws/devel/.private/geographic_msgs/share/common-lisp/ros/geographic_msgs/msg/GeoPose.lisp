; Auto-generated. Do not edit!


(cl:in-package geographic_msgs-msg)


;//! \htmlinclude GeoPose.msg.html

(cl:defclass <GeoPose> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geographic_msgs-msg:GeoPoint
    :initform (cl:make-instance 'geographic_msgs-msg:GeoPoint))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass GeoPose (<GeoPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeoPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeoPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name geographic_msgs-msg:<GeoPose> is deprecated: use geographic_msgs-msg:GeoPose instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GeoPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:position-val is deprecated.  Use geographic_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <GeoPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader geographic_msgs-msg:orientation-val is deprecated.  Use geographic_msgs-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeoPose>) ostream)
  "Serializes a message object of type '<GeoPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeoPose>) istream)
  "Deserializes a message object of type '<GeoPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeoPose>)))
  "Returns string type for a message object of type '<GeoPose>"
  "geographic_msgs/GeoPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeoPose)))
  "Returns string type for a message object of type 'GeoPose"
  "geographic_msgs/GeoPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeoPose>)))
  "Returns md5sum for a message object of type '<GeoPose>"
  "778680b5172de58b7c057d973576c784")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeoPose)))
  "Returns md5sum for a message object of type 'GeoPose"
  "778680b5172de58b7c057d973576c784")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeoPose>)))
  "Returns full string definition for message of type '<GeoPose>"
  (cl:format cl:nil "# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeoPose)))
  "Returns full string definition for message of type 'GeoPose"
  (cl:format cl:nil "# Geographic pose, using the WGS 84 reference ellipsoid.~%#~%# Orientation uses the East-North-Up (ENU) frame of reference.~%# (But, what about singularities at the poles?)~%~%GeoPoint position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: geographic_msgs/GeoPoint~%# Geographic point, using the WGS 84 reference ellipsoid.~%~%# Latitude [degrees]. Positive is north of equator; negative is south~%# (-90 <= latitude <= +90).~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is~%# west (-180 <= longitude <= +180). At the poles, latitude is -90 or~%# +90, and longitude is irrelevant, but must be in range.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).~%float64 altitude~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeoPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeoPose>))
  "Converts a ROS message object to a list"
  (cl:list 'GeoPose
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
))
