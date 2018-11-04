// Auto-generated. Do not edit!

// (in-package isac.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArmAngles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.shoulder = null;
      this.elbow = null;
      this.wrist = null;
      this.gripper = null;
      this.base = null;
      this.wrist_rot = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('shoulder')) {
        this.shoulder = initObj.shoulder
      }
      else {
        this.shoulder = 0.0;
      }
      if (initObj.hasOwnProperty('elbow')) {
        this.elbow = initObj.elbow
      }
      else {
        this.elbow = 0.0;
      }
      if (initObj.hasOwnProperty('wrist')) {
        this.wrist = initObj.wrist
      }
      else {
        this.wrist = 0.0;
      }
      if (initObj.hasOwnProperty('gripper')) {
        this.gripper = initObj.gripper
      }
      else {
        this.gripper = 0.0;
      }
      if (initObj.hasOwnProperty('base')) {
        this.base = initObj.base
      }
      else {
        this.base = 0.0;
      }
      if (initObj.hasOwnProperty('wrist_rot')) {
        this.wrist_rot = initObj.wrist_rot
      }
      else {
        this.wrist_rot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArmAngles
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [shoulder]
    bufferOffset = _serializer.float32(obj.shoulder, buffer, bufferOffset);
    // Serialize message field [elbow]
    bufferOffset = _serializer.float32(obj.elbow, buffer, bufferOffset);
    // Serialize message field [wrist]
    bufferOffset = _serializer.float32(obj.wrist, buffer, bufferOffset);
    // Serialize message field [gripper]
    bufferOffset = _serializer.float32(obj.gripper, buffer, bufferOffset);
    // Serialize message field [base]
    bufferOffset = _serializer.float32(obj.base, buffer, bufferOffset);
    // Serialize message field [wrist_rot]
    bufferOffset = _serializer.float32(obj.wrist_rot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArmAngles
    let len;
    let data = new ArmAngles(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [shoulder]
    data.shoulder = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elbow]
    data.elbow = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wrist]
    data.wrist = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gripper]
    data.gripper = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [base]
    data.base = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wrist_rot]
    data.wrist_rot = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'isac/ArmAngles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c5d832426f47963e7bf2c07138124a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArmAngles(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.shoulder !== undefined) {
      resolved.shoulder = msg.shoulder;
    }
    else {
      resolved.shoulder = 0.0
    }

    if (msg.elbow !== undefined) {
      resolved.elbow = msg.elbow;
    }
    else {
      resolved.elbow = 0.0
    }

    if (msg.wrist !== undefined) {
      resolved.wrist = msg.wrist;
    }
    else {
      resolved.wrist = 0.0
    }

    if (msg.gripper !== undefined) {
      resolved.gripper = msg.gripper;
    }
    else {
      resolved.gripper = 0.0
    }

    if (msg.base !== undefined) {
      resolved.base = msg.base;
    }
    else {
      resolved.base = 0.0
    }

    if (msg.wrist_rot !== undefined) {
      resolved.wrist_rot = msg.wrist_rot;
    }
    else {
      resolved.wrist_rot = 0.0
    }

    return resolved;
    }
};

module.exports = ArmAngles;
