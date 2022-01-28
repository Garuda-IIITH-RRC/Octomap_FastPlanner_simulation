
(cl:in-package :asdf)

(defsystem "global_planner-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PathWithRiskMsg" :depends-on ("_package_PathWithRiskMsg"))
    (:file "_package_PathWithRiskMsg" :depends-on ("_package"))
  ))