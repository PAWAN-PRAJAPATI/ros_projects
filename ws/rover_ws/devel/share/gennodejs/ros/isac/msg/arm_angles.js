// Auto-generated. Do not edit!

// (in-package isac.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class arm_angles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shoulder = null;
      this.elbow = null;
    }
    else {
      if (initObj.hasOwnProperty('shoulder')) {
        this.shoulder = initObj.shoulder
      }
      else {
        this.shoulder = '';
      }
      if (initObj.hasOwnProperty('elbow')) {
        this.elbow = initObj.elbow
      }
      else {
        this.elbow = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arm_angles
    // Serialize message field [shoulder]
    bufferOffset = _serializer.string(obj.shoulder, buffer, bufferOffset);
    // Serialize message field [elbow]
    bufferOffset = _serializer.string(obj.elbow, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arm_angles
    let len;
    let data = new arm_angles(null);
    // Deserialize message field [shoulder]
    data.shoulder = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [elbow]
    data.elbow = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shoulder.length;
    length += object.elbow.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'isac/arm_angles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '900f93719af8356dfbf506bb017b797f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string shoulder
    string elbow
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arm_angles(null);
    if (msg.shoulder !== undefined) {
      resolved.shoulder = msg.shoulder;
    }
    else {
      resolved.shoulder = ''
    }

    if (msg.elbow !== undefined) {
      resolved.elbow = msg.elbow;
    }
    else {
      resolved.elbow = ''
    }

    return resolved;
    }
};

module.exports = arm_angles;
