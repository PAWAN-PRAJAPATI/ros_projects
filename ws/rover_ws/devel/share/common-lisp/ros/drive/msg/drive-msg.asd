
(cl:in-package :asdf)

(defsystem "drive-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DriveCommand" :depends-on ("_package_DriveCommand"))
    (:file "_package_DriveCommand" :depends-on ("_package"))
  ))