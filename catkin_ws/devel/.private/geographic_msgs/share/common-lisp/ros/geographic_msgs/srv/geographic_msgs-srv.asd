
(cl:in-package :asdf)

(defsystem "geographic_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geographic_msgs-msg
               :uuid_msgs-msg
)
  :components ((:file "_package")
    (:file "GetGeoPath" :depends-on ("_package_GetGeoPath"))
    (:file "_package_GetGeoPath" :depends-on ("_package"))
    (:file "GetGeographicMap" :depends-on ("_package_GetGeographicMap"))
    (:file "_package_GetGeographicMap" :depends-on ("_package"))
    (:file "GetRoutePlan" :depends-on ("_package_GetRoutePlan"))
    (:file "_package_GetRoutePlan" :depends-on ("_package"))
    (:file "UpdateGeographicMap" :depends-on ("_package_UpdateGeographicMap"))
    (:file "_package_UpdateGeographicMap" :depends-on ("_package"))
  ))