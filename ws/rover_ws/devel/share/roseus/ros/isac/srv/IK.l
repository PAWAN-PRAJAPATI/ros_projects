;; Auto-generated. Do not edit!


(when (boundp 'isac::IK)
  (if (not (find-package "ISAC"))
    (make-package "ISAC"))
  (shadow 'IK (find-package "ISAC")))
(unless (find-package "ISAC::IK")
  (make-package "ISAC::IK"))
(unless (find-package "ISAC::IKREQUEST")
  (make-package "ISAC::IKREQUEST"))
(unless (find-package "ISAC::IKRESPONSE")
  (make-package "ISAC::IKRESPONSE"))

(in-package "ROS")





(defclass isac::IKRequest
  :super ros::object
  :slots (_arm_angle_initial _position ))

(defmethod isac::IKRequest
  (:init
   (&key
    ((:arm_angle_initial __arm_angle_initial) (instance isac::ArmAngles :init))
    ((:position __position) (instance isac::ArmPosition :init))
    )
   (send-super :init)
   (setq _arm_angle_initial __arm_angle_initial)
   (setq _position __position)
   self)
  (:arm_angle_initial
   (&rest __arm_angle_initial)
   (if (keywordp (car __arm_angle_initial))
       (send* _arm_angle_initial __arm_angle_initial)
     (progn
       (if __arm_angle_initial (setq _arm_angle_initial (car __arm_angle_initial)))
       _arm_angle_initial)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; isac/ArmAngles _arm_angle_initial
    (send _arm_angle_initial :serialization-length)
    ;; isac/ArmPosition _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; isac/ArmAngles _arm_angle_initial
       (send _arm_angle_initial :serialize s)
     ;; isac/ArmPosition _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; isac/ArmAngles _arm_angle_initial
     (send _arm_angle_initial :deserialize buf ptr-) (incf ptr- (send _arm_angle_initial :serialization-length))
   ;; isac/ArmPosition _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass isac::IKResponse
  :super ros::object
  :slots (_arm_angle_final ))

(defmethod isac::IKResponse
  (:init
   (&key
    ((:arm_angle_final __arm_angle_final) (instance isac::ArmAngles :init))
    )
   (send-super :init)
   (setq _arm_angle_final __arm_angle_final)
   self)
  (:arm_angle_final
   (&rest __arm_angle_final)
   (if (keywordp (car __arm_angle_final))
       (send* _arm_angle_final __arm_angle_final)
     (progn
       (if __arm_angle_final (setq _arm_angle_final (car __arm_angle_final)))
       _arm_angle_final)))
  (:serialization-length
   ()
   (+
    ;; isac/ArmAngles _arm_angle_final
    (send _arm_angle_final :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; isac/ArmAngles _arm_angle_final
       (send _arm_angle_final :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; isac/ArmAngles _arm_angle_final
     (send _arm_angle_final :deserialize buf ptr-) (incf ptr- (send _arm_angle_final :serialization-length))
   ;;
   self)
  )

(defclass isac::IK
  :super ros::object
  :slots ())

(setf (get isac::IK :md5sum-) "e04c1b58bd7c12bbba9333174a823636")
(setf (get isac::IK :datatype-) "isac/IK")
(setf (get isac::IK :request) isac::IKRequest)
(setf (get isac::IK :response) isac::IKResponse)

(defmethod isac::IKRequest
  (:response () (instance isac::IKResponse :init)))

(setf (get isac::IKRequest :md5sum-) "e04c1b58bd7c12bbba9333174a823636")
(setf (get isac::IKRequest :datatype-) "isac/IKRequest")
(setf (get isac::IKRequest :definition-)
      "ArmAngles arm_angle_initial
ArmPosition position

================================================================================
MSG: isac/ArmAngles
Header header

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

================================================================================
MSG: isac/ArmPosition
Header header

float32 x
float32 y
float32 z
---
ArmAngles arm_angle_final

================================================================================
MSG: isac/ArmAngles
Header header

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

(setf (get isac::IKResponse :md5sum-) "e04c1b58bd7c12bbba9333174a823636")
(setf (get isac::IKResponse :datatype-) "isac/IKResponse")
(setf (get isac::IKResponse :definition-)
      "ArmAngles arm_angle_initial
ArmPosition position

================================================================================
MSG: isac/ArmAngles
Header header

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

================================================================================
MSG: isac/ArmPosition
Header header

float32 x
float32 y
float32 z
---
ArmAngles arm_angle_final

================================================================================
MSG: isac/ArmAngles
Header header

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



(provide :isac/IK "e04c1b58bd7c12bbba9333174a823636")


