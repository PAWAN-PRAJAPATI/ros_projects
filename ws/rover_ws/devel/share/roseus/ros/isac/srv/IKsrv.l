;; Auto-generated. Do not edit!


(when (boundp 'isac::IKsrv)
  (if (not (find-package "ISAC"))
    (make-package "ISAC"))
  (shadow 'IKsrv (find-package "ISAC")))
(unless (find-package "ISAC::IKSRV")
  (make-package "ISAC::IKSRV"))
(unless (find-package "ISAC::IKSRVREQUEST")
  (make-package "ISAC::IKSRVREQUEST"))
(unless (find-package "ISAC::IKSRVRESPONSE")
  (make-package "ISAC::IKSRVRESPONSE"))

(in-package "ROS")





(defclass isac::IKsrvRequest
  :super ros::object
  :slots (_arm_angle_initial _position ))

(defmethod isac::IKsrvRequest
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

(defclass isac::IKsrvResponse
  :super ros::object
  :slots (_arm_angle_final ))

(defmethod isac::IKsrvResponse
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

(defclass isac::IKsrv
  :super ros::object
  :slots ())

(setf (get isac::IKsrv :md5sum-) "e04c1b58bd7c12bbba9333174a823636")
(setf (get isac::IKsrv :datatype-) "isac/IKsrv")
(setf (get isac::IKsrv :request) isac::IKsrvRequest)
(setf (get isac::IKsrv :response) isac::IKsrvResponse)

(defmethod isac::IKsrvRequest
  (:response () (instance isac::IKsrvResponse :init)))

(setf (get isac::IKsrvRequest :md5sum-) "e04c1b58bd7c12bbba9333174a823636")
(setf (get isac::IKsrvRequest :datatype-) "isac/IKsrvRequest")
(setf (get isac::IKsrvRequest :definition-)
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

(setf (get isac::IKsrvResponse :md5sum-) "e04c1b58bd7c12bbba9333174a823636")
(setf (get isac::IKsrvResponse :datatype-) "isac/IKsrvResponse")
(setf (get isac::IKsrvResponse :definition-)
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



(provide :isac/IKsrv "e04c1b58bd7c12bbba9333174a823636")


