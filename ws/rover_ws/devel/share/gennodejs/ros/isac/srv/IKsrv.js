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
let ArmPosition = require('../msg/ArmPosition.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class IKsrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_angle_initial = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_angle_initial')) {
        this.arm_angle_initial = initObj.arm_angle_initial
      }
      else {
        this.arm_angle_initial = new ArmAngles();
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new ArmPosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKsrvRequest
    // Serialize message field [arm_angle_initial]
    bufferOffset = ArmAngles.serialize(obj.arm_angle_initial, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = ArmPosition.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKsrvRequest
    let len;
    let data = new IKsrvRequest(null);
    // Deserialize message field [arm_angle_initial]
    data.arm_angle_initial = ArmAngles.deserialize(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = ArmPosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ArmAngles.getMessageSize(object.arm_angle_initial);
    length += ArmPosition.getMessageSize(object.position);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'isac/IKsrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b0255036ee48d2ab6aae02ed3b772509';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmAngles arm_angle_initial
    ArmPosition position
    
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
    
    ================================================================================
    MSG: isac/ArmPosition
    Header header
    
    float32 x
    float32 y
    float32 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IKsrvRequest(null);
    if (msg.arm_angle_initial !== undefined) {
      resolved.arm_angle_initial = ArmAngles.Resolve(msg.arm_angle_initial)
    }
    else {
      resolved.arm_angle_initial = new ArmAngles()
    }

    if (msg.position !== undefined) {
      resolved.position = ArmPosition.Resolve(msg.position)
    }
    else {
      resolved.position = new ArmPosition()
    }

    return resolved;
    }
};

class IKsrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.arm_angle_final = null;
    }
    else {
      if (initObj.hasOwnProperty('arm_angle_final')) {
        this.arm_angle_final = initObj.arm_angle_final
      }
      else {
        this.arm_angle_final = new ArmAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IKsrvResponse
    // Serialize message field [arm_angle_final]
    bufferOffset = ArmAngles.serialize(obj.arm_angle_final, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IKsrvResponse
    let len;
    let data = new IKsrvResponse(null);
    // Deserialize message field [arm_angle_final]
    data.arm_angle_final = ArmAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ArmAngles.getMessageSize(object.arm_angle_final);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'isac/IKsrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a56790ec5944d063a1e86e682138c9c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ArmAngles arm_angle_final
    
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
    const resolved = new IKsrvResponse(null);
    if (msg.arm_angle_final !== undefined) {
      resolved.arm_angle_final = ArmAngles.Resolve(msg.arm_angle_final)
    }
    else {
      resolved.arm_angle_final = new ArmAngles()
    }

    return resolved;
    }
};

module.exports = {
  Request: IKsrvRequest,
  Response: IKsrvResponse,
  md5sum() { return 'e04c1b58bd7c12bbba9333174a823636'; },
  datatype() { return 'isac/IKsrv'; }
};
