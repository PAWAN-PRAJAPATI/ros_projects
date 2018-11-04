
(cl:in-package :asdf)

(defsystem "isac-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :isac-msg
)
  :components ((:file "_package")
    (:file "IK" :depends-on ("_package_IK"))
    (:file "_package_IK" :depends-on ("_package"))
  ))