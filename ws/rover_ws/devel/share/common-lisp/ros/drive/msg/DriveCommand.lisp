; Auto-generated. Do not edit!


(cl:in-package drive-msg)


;//! \htmlinclude DriveCommand.msg.html

(cl:defclass <DriveCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass DriveCommand (<DriveCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drive-msg:<DriveCommand> is deprecated: use drive-msg:DriveCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive-msg:header-val is deprecated.  Use drive-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <DriveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drive-msg:command-val is deprecated.  Use drive-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveCommand>) ostream)
  "Serializes a message object of type '<DriveCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveCommand>) istream)
  "Deserializes a message object of type '<DriveCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveCommand>)))
  "Returns string type for a message object of type '<DriveCommand>"
  "drive/DriveCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveCommand)))
  "Returns string type for a message object of type 'DriveCommand"
  "drive/DriveCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveCommand>)))
  "Returns md5sum for a message object of type '<DriveCommand>"
  "94fafcb7d040f13f0802c9415e70b9f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveCommand)))
  "Returns md5sum for a message object of type 'DriveCommand"
  "94fafcb7d040f13f0802c9415e70b9f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveCommand>)))
  "Returns full string definition for message of type '<DriveCommand>"
  (cl:format cl:nil "Header header~%~%string command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveCommand)))
  "Returns full string definition for message of type 'DriveCommand"
  (cl:format cl:nil "Header header~%~%string command~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveCommand
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
))
