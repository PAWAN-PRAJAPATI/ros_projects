; Auto-generated. Do not edit!


(cl:in-package isac-srv)


;//! \htmlinclude FKsrv-request.msg.html

(cl:defclass <FKsrv-request> (roslisp-msg-protocol:ros-message)
  ((arm_angles
    :reader arm_angles
    :initarg :arm_angles
    :type isac-msg:ArmAngles
    :initform (cl:make-instance 'isac-msg:ArmAngles)))
)

(cl:defclass FKsrv-request (<FKsrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FKsrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FKsrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-srv:<FKsrv-request> is deprecated: use isac-srv:FKsrv-request instead.")))

(cl:ensure-generic-function 'arm_angles-val :lambda-list '(m))
(cl:defmethod arm_angles-val ((m <FKsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:arm_angles-val is deprecated.  Use isac-srv:arm_angles instead.")
  (arm_angles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FKsrv-request>) ostream)
  "Serializes a message object of type '<FKsrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_angles) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FKsrv-request>) istream)
  "Deserializes a message object of type '<FKsrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_angles) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FKsrv-request>)))
  "Returns string type for a service object of type '<FKsrv-request>"
  "isac/FKsrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FKsrv-request)))
  "Returns string type for a service object of type 'FKsrv-request"
  "isac/FKsrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FKsrv-request>)))
  "Returns md5sum for a message object of type '<FKsrv-request>"
  "932b734ed40bf214a466ce1001c6d294")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FKsrv-request)))
  "Returns md5sum for a message object of type 'FKsrv-request"
  "932b734ed40bf214a466ce1001c6d294")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FKsrv-request>)))
  "Returns full string definition for message of type '<FKsrv-request>"
  (cl:format cl:nil "ArmAngles arm_angles~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FKsrv-request)))
  "Returns full string definition for message of type 'FKsrv-request"
  (cl:format cl:nil "ArmAngles arm_angles~%~%================================================================================~%MSG: isac/ArmAngles~%Header header~%~%float32 shoulder~%float32 elbow~%float32 wrist~%float32 gripper~%float32 base~%float32 wrist_rot~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FKsrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_angles))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FKsrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FKsrv-request
    (cl:cons ':arm_angles (arm_angles msg))
))
;//! \htmlinclude FKsrv-response.msg.html

(cl:defclass <FKsrv-response> (roslisp-msg-protocol:ros-message)
  ((arm_position
    :reader arm_position
    :initarg :arm_position
    :type isac-msg:ArmPosition
    :initform (cl:make-instance 'isac-msg:ArmPosition)))
)

(cl:defclass FKsrv-response (<FKsrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FKsrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FKsrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-srv:<FKsrv-response> is deprecated: use isac-srv:FKsrv-response instead.")))

(cl:ensure-generic-function 'arm_position-val :lambda-list '(m))
(cl:defmethod arm_position-val ((m <FKsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-srv:arm_position-val is deprecated.  Use isac-srv:arm_position instead.")
  (arm_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FKsrv-response>) ostream)
  "Serializes a message object of type '<FKsrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arm_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FKsrv-response>) istream)
  "Deserializes a message object of type '<FKsrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arm_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FKsrv-response>)))
  "Returns string type for a service object of type '<FKsrv-response>"
  "isac/FKsrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FKsrv-response)))
  "Returns string type for a service object of type 'FKsrv-response"
  "isac/FKsrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FKsrv-response>)))
  "Returns md5sum for a message object of type '<FKsrv-response>"
  "932b734ed40bf214a466ce1001c6d294")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FKsrv-response)))
  "Returns md5sum for a message object of type 'FKsrv-response"
  "932b734ed40bf214a466ce1001c6d294")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FKsrv-response>)))
  "Returns full string definition for message of type '<FKsrv-response>"
  (cl:format cl:nil "ArmPosition arm_position~%~%================================================================================~%MSG: isac/ArmPosition~%Header header~%~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FKsrv-response)))
  "Returns full string definition for message of type 'FKsrv-response"
  (cl:format cl:nil "ArmPosition arm_position~%~%================================================================================~%MSG: isac/ArmPosition~%Header header~%~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FKsrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arm_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FKsrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FKsrv-response
    (cl:cons ':arm_position (arm_position msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FKsrv)))
  'FKsrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FKsrv)))
  'FKsrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FKsrv)))
  "Returns string type for a service object of type '<FKsrv>"
  "isac/FKsrv")