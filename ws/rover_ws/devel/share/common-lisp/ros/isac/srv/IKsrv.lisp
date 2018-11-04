; Auto-generated. Do not edit!


(cl:in-package isac-srv)


;//! \htmlinclude IKsrv-request.msg.html

(cl:defclass <IKsrv-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass IKsrv-request (<IKsrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKsrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKsrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-srv:<IKsrv-request> is deprecated: use isac-srv:IKsrv-request instead.")))

(cl:ensure-generic-function 'arm_angle_initial-val :lambda-list '(m))
(cl:defmethod arm_angle_initial-val ((m <IKsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:arm_angle_initial-val is deprecated.  Use isac-srv:arm_angle_initial instead.")
  (arm_angle_initial m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <IKsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:position-val is deprecated.  Use isac-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKsrv-request>) ostream)
  "Serializes a message object of type '<IKsrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_angle_initial) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKsrv-request>) istream)
  "Deserializes a message object of type '<IKsrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_angle_initial) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKsrv-request>)))
  "Returns string type for a service object of type '<IKsrv-request>"
  "isac/IKsrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKsrv-request)))
  "Returns string type for a service object of type 'IKsrv-request"
  "isac/IKsrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKsrv-request>)))
  "Returns md5sum for a message object of type '<IKsrv-request>"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKsrv-request)))
  "Returns md5sum for a message object of type 'IKsrv-request"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKsrv-request>)))
  "Returns full string definition for message of type '<IKsrv-request>"
  (cl:format cl:nil "ArmAngles arm_angle_initial~%ArmPosition position~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: isac/ArmPosition~%Header header~%~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKsrv-request)))
  "Returns full string definition for message of type 'IKsrv-request"
  (cl:format cl:nil "ArmAngles arm_angle_initial~%ArmPosition position~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: isac/ArmPosition~%Header header~%~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKsrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_angle_initial))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKsrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IKsrv-request
    (cl:cons ':arm_angle_initial (arm_angle_initial msg))
    (cl:cons ':position (position msg))
))
;//! \htmlinclude IKsrv-response.msg.html

(cl:defclass <IKsrv-response> (roslisp-msg-protocol:ros-message)
  ((arm_angle_final
    :reader arm_angle_final
    :initarg :arm_angle_final
    :type isac-msg:ArmAngles
    :initform (cl:make-instance 'isac-msg:ArmAngles)))
)

(cl:defclass IKsrv-response (<IKsrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IKsrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IKsrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-srv:<IKsrv-response> is deprecated: use isac-srv:IKsrv-response instead.")))

(cl:ensure-generic-function 'arm_angle_final-val :lambda-list '(m))
(cl:defmethod arm_angle_final-val ((m <IKsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:arm_angle_final-val is deprecated.  Use isac-srv:arm_angle_final instead.")
  (arm_angle_final m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IKsrv-response>) ostream)
  "Serializes a message object of type '<IKsrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_angle_final) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IKsrv-response>) istream)
  "Deserializes a message object of type '<IKsrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_angle_final) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IKsrv-response>)))
  "Returns string type for a service object of type '<IKsrv-response>"
  "isac/IKsrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKsrv-response)))
  "Returns string type for a service object of type 'IKsrv-response"
  "isac/IKsrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IKsrv-response>)))
  "Returns md5sum for a message object of type '<IKsrv-response>"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IKsrv-response)))
  "Returns md5sum for a message object of type 'IKsrv-response"
  "e04c1b58bd7c12bbba9333174a823636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IKsrv-response>)))
  "Returns full string definition for message of type '<IKsrv-response>"
  (cl:format cl:nil "ArmAngles arm_angle_final~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IKsrv-response)))
  "Returns full string definition for message of type 'IKsrv-response"
  (cl:format cl:nil "ArmAngles arm_angle_final~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IKsrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_angle_final))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IKsrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IKsrv-response
    (cl:cons ':arm_angle_final (arm_angle_final msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IKsrv)))
  'IKsrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IKsrv)))
  'IKsrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IKsrv)))
  "Returns string type for a service object of type '<IKsrv>"
  "isac/IKsrv")