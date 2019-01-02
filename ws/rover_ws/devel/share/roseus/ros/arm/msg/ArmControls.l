;; Auto-generated. Do not edit!


(when (boundp 'arm::ArmControls)
  (if (not (find-package "ARM"))
    (make-package "ARM"))
  (shadow 'ArmControls (find-package "ARM")))
(unless (find-package "ARM::ARMCONTROLS")
  (make-package "ARM::ARMCONTROLS"))

(in-package "ROS")
;;//! \htmlinclude ArmControls.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass arm::ArmControls
  :super ros::object
  :slots (_header _command _base_pwm _shoulder_pwm _elbow_pwm _wrist_rot_pwm _wrist_pwm _gripper_pwm ))

(defmethod arm::ArmControls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) "")
    ((:base_pwm __base_pwm) 0)
    ((:shoulder_pwm __shoulder_pwm) 0)
    ((:elbow_pwm __elbow_pwm) 0)
    ((:wrist_rot_pwm __wrist_rot_pwm) 0)
    ((:wrist_pwm __wrist_pwm) 0)
    ((:gripper_pwm __gripper_pwm) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _command (string __command))
   (setq _base_pwm (round __base_pwm))
   (setq _shoulder_pwm (round __shoulder_pwm))
   (setq _elbow_pwm (round __elbow_pwm))
   (setq _wrist_rot_pwm (round __wrist_rot_pwm))
   (setq _wrist_pwm (round __wrist_pwm))
   (setq _gripper_pwm (round __gripper_pwm))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:base_pwm
   (&optional __base_pwm)
   (if __base_pwm (setq _base_pwm __base_pwm)) _base_pwm)
  (:shoulder_pwm
   (&optional __shoulder_pwm)
   (if __shoulder_pwm (setq _shoulder_pwm __shoulder_pwm)) _shoulder_pwm)
  (:elbow_pwm
   (&optional __elbow_pwm)
   (if __elbow_pwm (setq _elbow_pwm __elbow_pwm)) _elbow_pwm)
  (:wrist_rot_pwm
   (&optional __wrist_rot_pwm)
   (if __wrist_rot_pwm (setq _wrist_rot_pwm __wrist_rot_pwm)) _wrist_rot_pwm)
  (:wrist_pwm
   (&optional __wrist_pwm)
   (if __wrist_pwm (setq _wrist_pwm __wrist_pwm)) _wrist_pwm)
  (:gripper_pwm
   (&optional __gripper_pwm)
   (if __gripper_pwm (setq _gripper_pwm __gripper_pwm)) _gripper_pwm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _command
    4 (length _command)
    ;; int32 _base_pwm
    4
    ;; int32 _shoulder_pwm
    4
    ;; int32 _elbow_pwm
    4
    ;; int32 _wrist_rot_pwm
    4
    ;; int32 _wrist_pwm
    4
    ;; int32 _gripper_pwm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;; int32 _base_pwm
       (write-long _base_pwm s)
     ;; int32 _shoulder_pwm
       (write-long _shoulder_pwm s)
     ;; int32 _elbow_pwm
       (write-long _elbow_pwm s)
     ;; int32 _wrist_rot_pwm
       (write-long _wrist_rot_pwm s)
     ;; int32 _wrist_pwm
       (write-long _wrist_pwm s)
     ;; int32 _gripper_pwm
       (write-long _gripper_pwm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _base_pwm
     (setq _base_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _shoulder_pwm
     (setq _shoulder_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _elbow_pwm
     (setq _elbow_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wrist_rot_pwm
     (setq _wrist_rot_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wrist_pwm
     (setq _wrist_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gripper_pwm
     (setq _gripper_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get arm::ArmControls :md5sum-) "3e566e3b29b41e2d2d307d584c85b977")
(setf (get arm::ArmControls :datatype-) "arm/ArmControls")
(setf (get arm::ArmControls :definition-)
      "Header header


string command

int32 base_pwm
int32 shoulder_pwm
int32 elbow_pwm
int32 wrist_rot_pwm
int32 wrist_pwm
int32 gripper_pwm

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :arm/ArmControls "3e566e3b29b41e2d2d307d584c85b977")


