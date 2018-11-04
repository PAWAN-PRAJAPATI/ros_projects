;; Auto-generated. Do not edit!


(when (boundp 'isac::ArmAngles)
  (if (not (find-package "ISAC"))
    (make-package "ISAC"))
  (shadow 'ArmAngles (find-package "ISAC")))
(unless (find-package "ISAC::ARMANGLES")
  (make-package "ISAC::ARMANGLES"))

(in-package "ROS")
;;//! \htmlinclude ArmAngles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass isac::ArmAngles
  :super ros::object
  :slots (_header _shoulder _elbow _wrist _gripper _base _wrist_rot ))

(defmethod isac::ArmAngles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:shoulder __shoulder) 0.0)
    ((:elbow __elbow) 0.0)
    ((:wrist __wrist) 0.0)
    ((:gripper __gripper) 0.0)
    ((:base __base) 0.0)
    ((:wrist_rot __wrist_rot) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _shoulder (float __shoulder))
   (setq _elbow (float __elbow))
   (setq _wrist (float __wrist))
   (setq _gripper (float __gripper))
   (setq _base (float __base))
   (setq _wrist_rot (float __wrist_rot))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:shoulder
   (&optional __shoulder)
   (if __shoulder (setq _shoulder __shoulder)) _shoulder)
  (:elbow
   (&optional __elbow)
   (if __elbow (setq _elbow __elbow)) _elbow)
  (:wrist
   (&optional __wrist)
   (if __wrist (setq _wrist __wrist)) _wrist)
  (:gripper
   (&optional __gripper)
   (if __gripper (setq _gripper __gripper)) _gripper)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:wrist_rot
   (&optional __wrist_rot)
   (if __wrist_rot (setq _wrist_rot __wrist_rot)) _wrist_rot)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _shoulder
    4
    ;; float32 _elbow
    4
    ;; float32 _wrist
    4
    ;; float32 _gripper
    4
    ;; float32 _base
    4
    ;; float32 _wrist_rot
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _shoulder
       (sys::poke _shoulder (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elbow
       (sys::poke _elbow (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wrist
       (sys::poke _wrist (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gripper
       (sys::poke _gripper (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _base
       (sys::poke _base (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wrist_rot
       (sys::poke _wrist_rot (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _shoulder
     (setq _shoulder (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elbow
     (setq _elbow (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wrist
     (setq _wrist (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gripper
     (setq _gripper (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _base
     (setq _base (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wrist_rot
     (setq _wrist_rot (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get isac::ArmAngles :md5sum-) "2c5d832426f47963e7bf2c07138124a7")
(setf (get isac::ArmAngles :datatype-) "isac/ArmAngles")
(setf (get isac::ArmAngles :definition-)
      "Header header

float32 shoulder
float32 elbow
float32 wrist
float32 gripper
float32 base
float32 wrist_rot
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



(provide :isac/ArmAngles "2c5d832426f47963e7bf2c07138124a7")


