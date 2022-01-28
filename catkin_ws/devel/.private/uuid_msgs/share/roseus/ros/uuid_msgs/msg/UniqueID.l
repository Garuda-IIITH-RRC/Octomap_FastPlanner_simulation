;; Auto-generated. Do not edit!


(when (boundp 'uuid_msgs::UniqueID)
  (if (not (find-package "UUID_MSGS"))
    (make-package "UUID_MSGS"))
  (shadow 'UniqueID (find-package "UUID_MSGS")))
(unless (find-package "UUID_MSGS::UNIQUEID")
  (make-package "UUID_MSGS::UNIQUEID"))

(in-package "ROS")
;;//! \htmlinclude UniqueID.msg.html


(defclass uuid_msgs::UniqueID
  :super ros::object
  :slots (_uuid ))

(defmethod uuid_msgs::UniqueID
  (:init
   (&key
    ((:uuid __uuid) (make-array 16 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _uuid __uuid)
   self)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:serialization-length
   ()
   (+
    ;; uint8[16] _uuid
    (* 1    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[16] _uuid
     (princ _uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[16] _uuid
   (setq _uuid (make-array 16 :element-type :char))
   (replace _uuid buf :start2 ptr-) (incf ptr- 16)
   ;;
   self)
  )

(setf (get uuid_msgs::UniqueID :md5sum-) "fec2a93b6f5367ee8112c9c0b41ff310")
(setf (get uuid_msgs::UniqueID :datatype-) "uuid_msgs/UniqueID")
(setf (get uuid_msgs::UniqueID :definition-)
      "# A universally unique identifier (UUID).
#
#  http://en.wikipedia.org/wiki/Universally_unique_identifier
#  http://tools.ietf.org/html/rfc4122.html

uint8[16] uuid

")



(provide :uuid_msgs/UniqueID "fec2a93b6f5367ee8112c9c0b41ff310")


