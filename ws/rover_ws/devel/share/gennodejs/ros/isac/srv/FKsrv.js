// Auto-generated. Do not edit!

// (in-package isac.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ArmAngles = require('../msg/ArmAngles.js');

//-----------------------------------------------------------

let ArmPosition = require('../msg/ArmPosition.js');

//-----------------------------------------------------------

class FKsrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_angles = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_angles')) {
        this.arm_angles = initObj.arm_angles
      }
      else {
        this.arm_angles = new ArmAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKsrvRequest
    // Serialize message field [arm_angles]
    bufferOffset = ArmAngles.serialize(obj.arm_angles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKsrvRequest
    let len;
    let data = new FKsrvRequest(null);
    // Deserialize message field [arm_angles]
    data.arm_angles = ArmAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ArmAngles.getMessageSize(object.arm_angles);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'isac/FKsrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '758e6b15ca398f922731616dc45a4010';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmAngles arm_angles
    
    ================================================================================
    MSG: isac/ArmAngles
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
    const resolved = new FKsrvRequest(null);
    if (msg.arm_angles !== undefined) {
      resolved.arm_angles = ArmAngles.Resolve(msg.arm_angles)
    }
    else {
      resolved.arm_angles = new ArmAngles()
    }

    return resolved;
    }
};

class FKsrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_position = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_position')) {
        this.arm_position = initObj.arm_position
      }
      else {
        this.arm_position = new ArmPosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FKsrvResponse
    // Serialize message field [arm_position]
    bufferOffset = ArmPosition.serialize(obj.arm_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FKsrvResponse
    let len;
    let data = new FKsrvResponse(null);
    // Deserialize message field [arm_position]
    data.arm_position = ArmPosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ArmPosition.getMessageSize(object.arm_position);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'isac/FKsrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb16a62d4893ddebee7ead2c91bb2a20';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmPosition arm_position
    
    ================================================================================
    MSG: isac/ArmPosition
    Header header
    
    float32 x
    float32 y
    float32 z
    
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
    const resolved = new FKsrvResponse(null);
    if (msg.arm_position !== undefined) {
      resolved.arm_position = ArmPosition.Resolve(msg.arm_position)
    }
    else {
      resolved.arm_position = new ArmPosition()
    }

    return resolved;
    }
};

module.exports = {
  Request: FKsrvRequest,
  Response: FKsrvResponse,
  md5sum() { return '932b734ed40bf214a466ce1001c6d294'; },
  datatype() { return 'isac/FKsrv'; }
};
