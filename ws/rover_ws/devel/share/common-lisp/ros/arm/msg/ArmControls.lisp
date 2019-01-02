; Auto-generated. Do not edit!


(cl:in-package arm-msg)


;//! \htmlinclude ArmControls.msg.html

(cl:defclass <ArmControls> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (base_pwm
    :reader base_pwm
    :initarg :base_pwm
    :type cl:integer
    :initform 0)
   (shoulder_pwm
    :reader shoulder_pwm
    :initarg :shoulder_pwm
    :type cl:integer
    :initform 0)
   (elbow_pwm
    :reader elbow_pwm
    :initarg :elbow_pwm
    :type cl:integer
    :initform 0)
   (wrist_rot_pwm
    :reader wrist_rot_pwm
    :initarg :wrist_rot_pwm
    :type cl:integer
    :initform 0)
   (wrist_pwm
    :reader wrist_pwm
    :initarg :wrist_pwm
    :type cl:integer
    :initform 0)
   (gripper_pwm
    :reader gripper_pwm
    :initarg :gripper_pwm
    :type cl:integer
    :initform 0))
)

(cl:defclass ArmControls (<ArmControls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmControls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmControls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm-msg:<ArmControls> is deprecated: use arm-msg:ArmControls instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:header-val is deprecated.  Use arm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:command-val is deprecated.  Use arm-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'base_pwm-val :lambda-list '(m))
(cl:defmethod base_pwm-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:base_pwm-val is deprecated.  Use arm-msg:base_pwm instead.")
  (base_pwm m))

(cl:ensure-generic-function 'shoulder_pwm-val :lambda-list '(m))
(cl:defmethod shoulder_pwm-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:shoulder_pwm-val is deprecated.  Use arm-msg:shoulder_pwm instead.")
  (shoulder_pwm m))

(cl:ensure-generic-function 'elbow_pwm-val :lambda-list '(m))
(cl:defmethod elbow_pwm-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:elbow_pwm-val is deprecated.  Use arm-msg:elbow_pwm instead.")
  (elbow_pwm m))

(cl:ensure-generic-function 'wrist_rot_pwm-val :lambda-list '(m))
(cl:defmethod wrist_rot_pwm-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:wrist_rot_pwm-val is deprecated.  Use arm-msg:wrist_rot_pwm instead.")
  (wrist_rot_pwm m))

(cl:ensure-generic-function 'wrist_pwm-val :lambda-list '(m))
(cl:defmethod wrist_pwm-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:wrist_pwm-val is deprecated.  Use arm-msg:wrist_pwm instead.")
  (wrist_pwm m))

(cl:ensure-generic-function 'gripper_pwm-val :lambda-list '(m))
(cl:defmethod gripper_pwm-val ((m <ArmControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm-msg:gripper_pwm-val is deprecated.  Use arm-msg:gripper_pwm instead.")
  (gripper_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmControls>) ostream)
  "Serializes a message object of type '<ArmControls>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let* ((signed (cl:slot-value msg 'base_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'shoulder_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'elbow_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wrist_rot_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'wrist_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gripper_pwm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmControls>) istream)
  "Deserializes a message object of type '<ArmControls>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_pwm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shoulder_pwm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elbow_pwm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wrist_rot_pwm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wrist_pwm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_pwm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmControls>)))
  "Returns string type for a message object of type '<ArmControls>"
  "arm/ArmControls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmControls)))
  "Returns string type for a message object of type 'ArmControls"
  "arm/ArmControls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmControls>)))
  "Returns md5sum for a message object of type '<ArmControls>"
  "3e566e3b29b41e2d2d307d584c85b977")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmControls)))
  "Returns md5sum for a message object of type 'ArmControls"
  "3e566e3b29b41e2d2d307d584c85b977")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmControls>)))
  "Returns full string definition for message of type '<ArmControls>"
  (cl:format cl:nil "Header header~%~%~%string command~%~%int32 base_pwm~%int32 shoulder_pwm~%int32 elbow_pwm~%int32 wrist_rot_pwm~%int32 wrist_pwm~%int32 gripper_pwm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmControls)))
  "Returns full string definition for message of type 'ArmControls"
  (cl:format cl:nil "Header header~%~%~%string command~%~%int32 base_pwm~%int32 shoulder_pwm~%int32 elbow_pwm~%int32 wrist_rot_pwm~%int32 wrist_pwm~%int32 gripper_pwm~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmControls>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'command))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmControls>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmControls
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
    (cl:cons ':base_pwm (base_pwm msg))
    (cl:cons ':shoulder_pwm (shoulder_pwm msg))
    (cl:cons ':elbow_pwm (elbow_pwm msg))
    (cl:cons ':wrist_rot_pwm (wrist_rot_pwm msg))
    (cl:cons ':wrist_pwm (wrist_pwm msg))
    (cl:cons ':gripper_pwm (gripper_pwm msg))
))
