// Auto-generated. Do not edit!

// (in-package arm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArmControls {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.command = null;
      this.base_pwm = null;
      this.shoulder_pwm = null;
      this.elbow_pwm = null;
      this.wrist_rot_pwm = null;
      this.wrist_pwm = null;
      this.gripper_pwm = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('base_pwm')) {
        this.base_pwm = initObj.base_pwm
      }
      else {
        this.base_pwm = 0;
      }
      if (initObj.hasOwnProperty('shoulder_pwm')) {
        this.shoulder_pwm = initObj.shoulder_pwm
      }
      else {
        this.shoulder_pwm = 0;
      }
      if (initObj.hasOwnProperty('elbow_pwm')) {
        this.elbow_pwm = initObj.elbow_pwm
      }
      else {
        this.elbow_pwm = 0;
      }
      if (initObj.hasOwnProperty('wrist_rot_pwm')) {
        this.wrist_rot_pwm = initObj.wrist_rot_pwm
      }
      else {
        this.wrist_rot_pwm = 0;
      }
      if (initObj.hasOwnProperty('wrist_pwm')) {
        this.wrist_pwm = initObj.wrist_pwm
      }
      else {
        this.wrist_pwm = 0;
      }
      if (initObj.hasOwnProperty('gripper_pwm')) {
        this.gripper_pwm = initObj.gripper_pwm
      }
      else {
        this.gripper_pwm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmControls
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [base_pwm]
    bufferOffset = _serializer.int32(obj.base_pwm, buffer, bufferOffset);
    // Serialize message field [shoulder_pwm]
    bufferOffset = _serializer.int32(obj.shoulder_pwm, buffer, bufferOffset);
    // Serialize message field [elbow_pwm]
    bufferOffset = _serializer.int32(obj.elbow_pwm, buffer, bufferOffset);
    // Serialize message field [wrist_rot_pwm]
    bufferOffset = _serializer.int32(obj.wrist_rot_pwm, buffer, bufferOffset);
    // Serialize message field [wrist_pwm]
    bufferOffset = _serializer.int32(obj.wrist_pwm, buffer, bufferOffset);
    // Serialize message field [gripper_pwm]
    bufferOffset = _serializer.int32(obj.gripper_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmControls
    let len;
    let data = new ArmControls(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [base_pwm]
    data.base_pwm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shoulder_pwm]
    data.shoulder_pwm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [elbow_pwm]
    data.elbow_pwm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wrist_rot_pwm]
    data.wrist_rot_pwm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [wrist_pwm]
    data.wrist_pwm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gripper_pwm]
    data.gripper_pwm = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.command.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arm/ArmControls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e566e3b29b41e2d2d307d584c85b977';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    
    string command
    
    int32 base_pwm
    int32 shoulder_pwm
    int32 elbow_pwm
    int32 wrist_rot_pwm
    int32 wrist_pwm
    int32 gripper_pwm
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmControls(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.base_pwm !== undefined) {
      resolved.base_pwm = msg.base_pwm;
    }
    else {
      resolved.base_pwm = 0
    }

    if (msg.shoulder_pwm !== undefined) {
      resolved.shoulder_pwm = msg.shoulder_pwm;
    }
    else {
      resolved.shoulder_pwm = 0
    }

    if (msg.elbow_pwm !== undefined) {
      resolved.elbow_pwm = msg.elbow_pwm;
    }
    else {
      resolved.elbow_pwm = 0
    }

    if (msg.wrist_rot_pwm !== undefined) {
      resolved.wrist_rot_pwm = msg.wrist_rot_pwm;
    }
    else {
      resolved.wrist_rot_pwm = 0
    }

    if (msg.wrist_pwm !== undefined) {
      resolved.wrist_pwm = msg.wrist_pwm;
    }
    else {
      resolved.wrist_pwm = 0
    }

    if (msg.gripper_pwm !== undefined) {
      resolved.gripper_pwm = msg.gripper_pwm;
    }
    else {
      resolved.gripper_pwm = 0
    }

    return resolved;
    }
};

module.exports = ArmControls;
