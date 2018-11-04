
(cl:in-package :asdf)

(defsystem "isac-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmAngles" :depends-on ("_package_ArmAngles"))
    (:file "_package_ArmAngles" :depends-on ("_package"))
    (:file "ArmPosition" :depends-on ("_package_ArmPosition"))
    (:file "_package_ArmPosition" :depends-on ("_package"))
  ))