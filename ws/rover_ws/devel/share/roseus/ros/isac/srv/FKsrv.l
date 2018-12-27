;; Auto-generated. Do not edit!


(when (boundp 'isac::FKsrv)
  (if (not (find-package "ISAC"))
    (make-package "ISAC"))
  (shadow 'FKsrv (find-package "ISAC")))
(unless (find-package "ISAC::FKSRV")
  (make-package "ISAC::FKSRV"))
(unless (find-package "ISAC::FKSRVREQUEST")
  (make-package "ISAC::FKSRVREQUEST"))
(unless (find-package "ISAC::FKSRVRESPONSE")
  (make-package "ISAC::FKSRVRESPONSE"))

(in-package "ROS")





(defclass isac::FKsrvRequest
  :super ros::object
  :slots (_arm_angles ))

(defmethod isac::FKsrvRequest
  (:init
   (&key
    ((:arm_angles __arm_angles) (instance isac::ArmAngles :init))
    )
   (send-super :init)
   (setq _arm_angles __arm_angles)
   self)
  (:arm_angles
   (&rest __arm_angles)
   (if (keywordp (car __arm_angles))
       (send* _arm_angles __arm_angles)
     (progn
       (if __arm_angles (setq _arm_angles (car __arm_angles)))
       _arm_angles)))
  (:serialization-length
   ()
   (+
    ;; isac/ArmAngles _arm_angles
    (send _arm_angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; isac/ArmAngles _arm_angles
       (send _arm_angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; isac/ArmAngles _arm_angles
     (send _arm_angles :deserialize buf ptr-) (incf ptr- (send _arm_angles :serialization-length))
   ;;
   self)
  )

(defclass isac::FKsrvResponse
  :super ros::object
  :slots (_arm_position ))

(defmethod isac::FKsrvResponse
  (:init
   (&key
    ((:arm_position __arm_position) (instance isac::ArmPosition :init))
    )
   (send-super :init)
   (setq _arm_position __arm_position)
   self)
  (:arm_position
   (&rest __arm_position)
   (if (keywordp (car __arm_position))
       (send* _arm_position __arm_position)
     (progn
       (if __arm_position (setq _arm_position (car __arm_position)))
       _arm_position)))
  (:serialization-length
   ()
   (+
    ;; isac/ArmPosition _arm_position
    (send _arm_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; isac/ArmPosition _arm_position
       (send _arm_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; isac/ArmPosition _arm_position
     (send _arm_position :deserialize buf ptr-) (incf ptr- (send _arm_position :serialization-length))
   ;;
   self)
  )

(defclass isac::FKsrv
  :super ros::object
  :slots ())

(setf (get isac::FKsrv :md5sum-) "932b734ed40bf214a466ce1001c6d294")
(setf (get isac::FKsrv :datatype-) "isac/FKsrv")
(setf (get isac::FKsrv :request) isac::FKsrvRequest)
(setf (get isac::FKsrv :response) isac::FKsrvResponse)

(defmethod isac::FKsrvRequest
  (:response () (instance isac::FKsrvResponse :init)))

(setf (get isac::FKsrvRequest :md5sum-) "932b734ed40bf214a466ce1001c6d294")
(setf (get isac::FKsrvRequest :datatype-) "isac/FKsrvRequest")
(setf (get isac::FKsrvRequest :definition-)
      "ArmAngles arm_angles

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
---
ArmPosition arm_position

================================================================================
MSG: isac/ArmPosition
Header header

float32 x
float32 y
float32 z

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

(setf (get isac::FKsrvResponse :md5sum-) "932b734ed40bf214a466ce1001c6d294")
(setf (get isac::FKsrvResponse :datatype-) "isac/FKsrvResponse")
(setf (get isac::FKsrvResponse :definition-)
      "ArmAngles arm_angles

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
---
ArmPosition arm_position

================================================================================
MSG: isac/ArmPosition
Header header

float32 x
float32 y
float32 z

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



(provide :isac/FKsrv "932b734ed40bf214a466ce1001c6d294")


