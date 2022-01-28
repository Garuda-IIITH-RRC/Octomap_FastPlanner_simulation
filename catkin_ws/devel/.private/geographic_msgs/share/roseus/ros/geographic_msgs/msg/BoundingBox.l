;; Auto-generated. Do not edit!


(when (boundp 'geographic_msgs::BoundingBox)
  (if (not (find-package "GEOGRAPHIC_MSGS"))
    (make-package "GEOGRAPHIC_MSGS"))
  (shadow 'BoundingBox (find-package "GEOGRAPHIC_MSGS")))
(unless (find-package "GEOGRAPHIC_MSGS::BOUNDINGBOX")
  (make-package "GEOGRAPHIC_MSGS::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html


(defclass geographic_msgs::BoundingBox
  :super ros::object
  :slots (_min_pt _max_pt ))

(defmethod geographic_msgs::BoundingBox
  (:init
   (&key
    ((:min_pt __min_pt) (instance geographic_msgs::GeoPoint :init))
    ((:max_pt __max_pt) (instance geographic_msgs::GeoPoint :init))
    )
   (send-super :init)
   (setq _min_pt __min_pt)
   (setq _max_pt __max_pt)
   self)
  (:min_pt
   (&rest __min_pt)
   (if (keywordp (car __min_pt))
       (send* _min_pt __min_pt)
     (progn
       (if __min_pt (setq _min_pt (car __min_pt)))
       _min_pt)))
  (:max_pt
   (&rest __max_pt)
   (if (keywordp (car __max_pt))
       (send* _max_pt __max_pt)
     (progn
       (if __max_pt (setq _max_pt (car __max_pt)))
       _max_pt)))
  (:serialization-length
   ()
   (+
    ;; geographic_msgs/GeoPoint _min_pt
    (send _min_pt :serialization-length)
    ;; geographic_msgs/GeoPoint _max_pt
    (send _max_pt :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geographic_msgs/GeoPoint _min_pt
       (send _min_pt :serialize s)
     ;; geographic_msgs/GeoPoint _max_pt
       (send _max_pt :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geographic_msgs/GeoPoint _min_pt
     (send _min_pt :deserialize buf ptr-) (incf ptr- (send _min_pt :serialization-length))
   ;; geographic_msgs/GeoPoint _max_pt
     (send _max_pt :deserialize buf ptr-) (incf ptr- (send _max_pt :serialization-length))
   ;;
   self)
  )

(setf (get geographic_msgs::BoundingBox :md5sum-) "f62e8b5e390a3ac7603250d46e8f8446")
(setf (get geographic_msgs::BoundingBox :datatype-) "geographic_msgs/BoundingBox")
(setf (get geographic_msgs::BoundingBox :definition-)
      "# Geographic map bounding box. 
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

")



(provide :geographic_msgs/BoundingBox "f62e8b5e390a3ac7603250d46e8f8446")


