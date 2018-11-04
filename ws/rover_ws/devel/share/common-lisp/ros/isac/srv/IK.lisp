; Auto-generated. Do not edit!


(cl:in-package isac-srv)


;//! \htmlinclude IK-request.msg.html

(cl:defclass <IK-request> (roslisp-msg-protocol:ros-message)
  ((arm_angle_initial
    :reader arm_angle_initial
    :initarg :arm_angle_initial
    :type isac-msg:ArmAngles
    :initform (cl:make-instance 'isac-msg:ArmAngles))
   (position
    :reader position
    :initarg :position
    :type isac-msg:ArmPosition
    :initform (cl:make-instance 'isac-msg:ArmPosition)))
)

(cl:defclass IK-request (<IK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-srv:<IK-request> is deprecated: use isac-srv:IK-request instead.")))

(cl:ensure-generic-function 'arm_angle_initial-val :lambda-list '(m))
(cl:defmethod arm_angle_initial-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:arm_angle_initial-val is deprecated.  Use isac-srv:arm_angle_initial instead.")
  (arm_angle_initial m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <IK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:position-val is deprecated.  Use isac-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-request>) ostream)
  "Serializes a message object of type '<IK-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_angle_initial) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-request>) istream)
  "Deserializes a message object of type '<IK-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_angle_initial) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-request>)))
  "Returns string type for a service object of type '<IK-request>"
  "isac/IKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-request)))
  "Returns string type for a service object of type 'IK-request"
  "isac/IKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-request>)))
  "Returns md5sum for a message object of type '<IK-request>"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-request)))
  "Returns md5sum for a message object of type 'IK-request"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-request>)))
  "Returns full string definition for message of type '<IK-request>"
  (cl:format cl:nil "ArmAngles arm_angle_initial~%ArmPosition position~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: isac/ArmPosition~%Header header~%~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-request)))
  "Returns full string definition for message of type 'IK-request"
  (cl:format cl:nil "ArmAngles arm_angle_initial~%ArmPosition position~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: isac/ArmPosition~%Header header~%~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_angle_initial))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-request
    (cl:cons ':arm_angle_initial (arm_angle_initial msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude IK-response.msg.html

(cl:defclass <IK-response> (roslisp-msg-protocol:ros-message)
  ((arm_angle_final
    :reader arm_angle_final
    :initarg :arm_angle_final
    :type isac-msg:ArmAngles
    :initform (cl:make-instance 'isac-msg:ArmAngles)))
)

(cl:defclass IK-response (<IK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-srv:<IK-response> is deprecated: use isac-srv:IK-response instead.")))

(cl:ensure-generic-function 'arm_angle_final-val :lambda-list '(m))
(cl:defmethod arm_angle_final-val ((m <IK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:arm_angle_final-val is deprecated.  Use isac-srv:arm_angle_final instead.")
  (arm_angle_final m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IK-response>) ostream)
  "Serializes a message object of type '<IK-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_angle_final) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IK-response>) istream)
  "Deserializes a message object of type '<IK-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_angle_final) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IK-response>)))
  "Returns string type for a service object of type '<IK-response>"
  "isac/IKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK-response)))
  "Returns string type for a service object of type 'IK-response"
  "isac/IKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IK-response>)))
  "Returns md5sum for a message object of type '<IK-response>"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IK-response)))
  "Returns md5sum for a message object of type 'IK-response"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IK-response>)))
  "Returns full string definition for message of type '<IK-response>"
  (cl:format cl:nil "ArmAngles arm_angle_final~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IK-response)))
  "Returns full string definition for message of type 'IK-response"
  (cl:format cl:nil "ArmAngles arm_angle_final~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IK-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_angle_final))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IK-response
    (cl:cons ':arm_angle_final (arm_angle_final msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IK)))
  'IK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IK)))
  'IK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IK)))
  "Returns string type for a service object of type '<IK>"
  "isac/IK")