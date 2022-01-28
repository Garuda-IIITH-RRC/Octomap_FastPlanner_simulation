
(cl:in-package :asdf)

(defsystem "safe_landing_planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SLPGridMsg" :depends-on ("_package_SLPGridMsg"))
    (:file "_package_SLPGridMsg" :depends-on ("_package"))
  ))