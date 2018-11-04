; Auto-generated. Do not edit!


(cl:in-package isac-msg)


;//! \htmlinclude ArmAngles.msg.html

(cl:defclass <ArmAngles> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (shoulder
    :reader shoulder
    :initarg :shoulder
    :type cl:float
    :initform 0.0)
   (elbow
    :reader elbow
    :initarg :elbow
    :type cl:float
    :initform 0.0)
   (wrist
    :reader wrist
    :initarg :wrist
    :type cl:float
    :initform 0.0)
   (gripper
    :reader gripper
    :initarg :gripper
    :type cl:float
    :initform 0.0)
   (base
    :reader base
    :initarg :base
    :type cl:float
    :initform 0.0)
   (wrist_rot
    :reader wrist_rot
    :initarg :wrist_rot
    :type cl:float
    :initform 0.0))
)

(cl:defclass ArmAngles (<ArmAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-msg:<ArmAngles> is deprecated: use isac-msg:ArmAngles instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:header-val is deprecated.  Use isac-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'shoulder-val :lambda-list '(m))
(cl:defmethod shoulder-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:shoulder-val is deprecated.  Use isac-msg:shoulder instead.")
  (shoulder m))

(cl:ensure-generic-function 'elbow-val :lambda-list '(m))
(cl:defmethod elbow-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:elbow-val is deprecated.  Use isac-msg:elbow instead.")
  (elbow m))

(cl:ensure-generic-function 'wrist-val :lambda-list '(m))
(cl:defmethod wrist-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:wrist-val is deprecated.  Use isac-msg:wrist instead.")
  (wrist m))

(cl:ensure-generic-function 'gripper-val :lambda-list '(m))
(cl:defmethod gripper-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:gripper-val is deprecated.  Use isac-msg:gripper instead.")
  (gripper m))

(cl:ensure-generic-function 'base-val :lambda-list '(m))
(cl:defmethod base-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:base-val is deprecated.  Use isac-msg:base instead.")
  (base m))

(cl:ensure-generic-function 'wrist_rot-val :lambda-list '(m))
(cl:defmethod wrist_rot-val ((m <ArmAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:wrist_rot-val is deprecated.  Use isac-msg:wrist_rot instead.")
  (wrist_rot m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmAngles>) ostream)
  "Serializes a message object of type '<ArmAngles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'shoulder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elbow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wrist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gripper))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'base))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wrist_rot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmAngles>) istream)
  "Deserializes a message object of type '<ArmAngles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'shoulder) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elbow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wrist) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'base) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wrist_rot) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmAngles>)))
  "Returns string type for a message object of type '<ArmAngles>"
  "isac/ArmAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmAngles)))
  "Returns string type for a message object of type 'ArmAngles"
  "isac/ArmAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmAngles>)))
  "Returns md5sum for a message object of type '<ArmAngles>"
  "2c5d832426f47963e7bf2c07138124a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmAngles)))
  "Returns md5sum for a message object of type 'ArmAngles"
  "2c5d832426f47963e7bf2c07138124a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmAngles>)))
  "Returns full string definition for message of type '<ArmAngles>"
  (cl:format cl:nil "Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmAngles)))
  "Returns full string definition for message of type 'ArmAngles"
  (cl:format cl:nil "Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmAngles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmAngles
    (cl:cons ':header (header msg))
    (cl:cons ':shoulder (shoulder msg))
    (cl:cons ':elbow (elbow msg))
    (cl:cons ':wrist (wrist msg))
    (cl:cons ':gripper (gripper msg))
    (cl:cons ':base (base msg))
    (cl:cons ':wrist_rot (wrist_rot msg))
))
