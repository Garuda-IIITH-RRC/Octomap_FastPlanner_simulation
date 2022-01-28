;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::MapFeature)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'MapFeature (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::MAPFEATURE")
  (make-package "GEOGRAPHIC_MSGS::MAPFEATURE"))

(in-package "ROS")
;;//! \htmlinclude MapFeature.msg.html
(if (not (find-package "UUID_MSGS"))
  (ros::roseus-add-msgs "uuid_msgs"))


(defclass geographic_msgs::MapFeature
  :super ros::object
  :slots (_id _components _props ))

(defmethod geographic_msgs::MapFeature
  (:init
   (&key
    ((:id __id) (instance uuid_msgs::UniqueID :init))
    ((:components __components) (let (r) (dotimes (i 0) (push (instance uuid_msgs::UniqueID :init) r)) r))
    ((:props __props) (let (r) (dotimes (i 0) (push (instance geographic_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _id __id)
   (setq _components __components)
   (setq _props __props)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:components
   (&rest __components)
   (if (keywordp (car __components))
       (send* _components __components)
     (progn
       (if __components (setq _components (car __components)))
       _components)))
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
    ;; uuid_msgs/UniqueID[] _components
    (apply #'+ (send-all _components :serialization-length)) 4
    ;; geographic_msgs/KeyValue[] _props
    (apply #'+ (send-all _props :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uuid_msgs/UniqueID _id
       (send _id :serialize s)
     ;; uuid_msgs/UniqueID[] _components
     (write-long (length _components) s)
     (dolist (elem _components)
       (send elem :serialize s)
       )
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
   ;; uuid_msgs/UniqueID[] _components
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _components (let (r) (dotimes (i n) (push (instance uuid_msgs::UniqueID :init) r)) r))
     (dolist (elem- _components)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(setf (get geographic_msgs::MapFeature :md5sum-) "e2505ace5e8da8a15b610eaf62bdefae")
(setf (get geographic_msgs::MapFeature :datatype-) "geographic_msgs/MapFeature")
(setf (get geographic_msgs::MapFeature :definition-)
      "# Geographic map feature.
#
# A list of WayPoint IDs for features like streets, highways, hiking
# trails, the outlines of buildings and parking lots in sequential
# order.
#
# Feature lists may also contain other feature lists as members.

uuid_msgs/UniqueID   id         # Unique feature identifier
uuid_msgs/UniqueID[] components # Sequence of feature components
KeyValue[] props                # Key/value properties for this feature

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



(provide :geographic_msgs/MapFeature "e2505ace5e8da8a15b610eaf62bdefae")


