;; Auto-generated. Do not edit!


(when (boundp 'drive::DriveCommand)
  (if (not (find-package "DRIVE"))
    (make-package "DRIVE"))
  (shadow 'DriveCommand (find-package "DRIVE")))
(unless (find-package "DRIVE::DRIVECOMMAND")
  (make-package "DRIVE::DRIVECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude DriveCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drive::DriveCommand
  :super ros::object
  :slots (_header _command ))

(defmethod drive::DriveCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:command __command) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _command (string __command))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get drive::DriveCommand :md5sum-) "94fafcb7d040f13f0802c9415e70b9f4")
(setf (get drive::DriveCommand :datatype-) "drive/DriveCommand")
(setf (get drive::DriveCommand :definition-)
      "Header header

string command
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



(provide :drive/DriveCommand "94fafcb7d040f13f0802c9415e70b9f4")


