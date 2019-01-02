
(cl:in-package :asdf)

(defsystem "arm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArmControls" :depends-on ("_package_ArmControls"))
    (:file "_package_ArmControls" :depends-on ("_package"))
  ))