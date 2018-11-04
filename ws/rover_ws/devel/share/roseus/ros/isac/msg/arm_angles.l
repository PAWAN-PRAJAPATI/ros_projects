;; Auto-generated. Do not edit!


(when (boundp 'isac::arm_angles)
  (if (not (find-package "ISAC"))
    (make-package "ISAC"))
  (shadow 'arm_angles (find-package "ISAC")))
(unless (find-package "ISAC::ARM_ANGLES")
  (make-package "ISAC::ARM_ANGLES"))

(in-package "ROS")
;;//! \htmlinclude arm_angles.msg.html


(defclass isac::arm_angles
  :super ros::object
  :slots (_shoulder _elbow ))

(defmethod isac::arm_angles
  (:init
   (&key
    ((:shoulder __shoulder) "")
    ((:elbow __elbow) "")
    )
   (send-super :init)
   (setq _shoulder (string __shoulder))
   (setq _elbow (string __elbow))
   self)
  (:shoulder
   (&optional __shoulder)
   (if __shoulder (setq _shoulder __shoulder)) _shoulder)
  (:elbow
   (&optional __elbow)
   (if __elbow (setq _elbow __elbow)) _elbow)
  (:serialization-length
   ()
   (+
    ;; string _shoulder
    4 (length _shoulder)
    ;; string _elbow
    4 (length _elbow)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shoulder
       (write-long (length _shoulder) s) (princ _shoulder s)
     ;; string _elbow
       (write-long (length _elbow) s) (princ _elbow s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shoulder
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shoulder (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _elbow
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _elbow (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get isac::arm_angles :md5sum-) "900f93719af8356dfbf506bb017b797f")
(setf (get isac::arm_angles :datatype-) "isac/arm_angles")
(setf (get isac::arm_angles :definition-)
      "string shoulder
string elbow
")



(provide :isac/arm_angles "900f93719af8356dfbf506bb017b797f")


