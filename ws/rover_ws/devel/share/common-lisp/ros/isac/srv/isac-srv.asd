
(cl:in-package :asdf)

(defsystem "isac-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :isac-msg
)
  :components ((:file "_package")
    (:file "IKsrv" :depends-on ("_package_IKsrv"))
    (:file "_package_IKsrv" :depends-on ("_package"))
  ))