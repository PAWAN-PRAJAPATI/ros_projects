; Auto-generated. Do not edit!


(cl:in-package isac-msg)


;//! \htmlinclude arm_angles.msg.html

(cl:defclass <arm_angles> (roslisp-msg-protocol:ros-message)
  ((shoulder
    :reader shoulder
    :initarg :shoulder
    :type cl:string
    :initform "")
   (elbow
    :reader elbow
    :initarg :elbow
    :type cl:string
    :initform ""))
)

(cl:defclass arm_angles (<arm_angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name isac-msg:<arm_angles> is deprecated: use isac-msg:arm_angles instead.")))

(cl:ensure-generic-function 'shoulder-val :lambda-list '(m))
(cl:defmethod shoulder-val ((m <arm_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:shoulder-val is deprecated.  Use isac-msg:shoulder instead.")
  (shoulder m))

(cl:ensure-generic-function 'elbow-val :lambda-list '(m))
(cl:defmethod elbow-val ((m <arm_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader isac-msg:elbow-val is deprecated.  Use isac-msg:elbow instead.")
  (elbow m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_angles>) ostream)
  "Serializes a message object of type '<arm_angles>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shoulder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shoulder))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'elbow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'elbow))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_angles>) istream)
  "Deserializes a message object of type '<arm_angles>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shoulder) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shoulder) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'elbow) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'elbow) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_angles>)))
  "Returns string type for a message object of type '<arm_angles>"
  "isac/arm_angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_angles)))
  "Returns string type for a message object of type 'arm_angles"
  "isac/arm_angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_angles>)))
  "Returns md5sum for a message object of type '<arm_angles>"
  "900f93719af8356dfbf506bb017b797f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_angles)))
  "Returns md5sum for a message object of type 'arm_angles"
  "900f93719af8356dfbf506bb017b797f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_angles>)))
  "Returns full string definition for message of type '<arm_angles>"
  (cl:format cl:nil "string shoulder~%string elbow~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_angles)))
  "Returns full string definition for message of type 'arm_angles"
  (cl:format cl:nil "string shoulder~%string elbow~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_angles>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shoulder))
     4 (cl:length (cl:slot-value msg 'elbow))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_angles>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_angles
    (cl:cons ':shoulder (shoulder msg))
    (cl:cons ':elbow (elbow msg))
))
