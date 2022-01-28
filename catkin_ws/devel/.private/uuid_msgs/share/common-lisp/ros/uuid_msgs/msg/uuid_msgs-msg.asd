
(cl:in-package :asdf)

(defsystem "uuid_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UniqueID" :depends-on ("_package_UniqueID"))
    (:file "_package_UniqueID" :depends-on ("_package"))
  ))