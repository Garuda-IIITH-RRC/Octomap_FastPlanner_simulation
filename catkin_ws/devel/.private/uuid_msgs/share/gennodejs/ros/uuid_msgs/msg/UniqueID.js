// Auto-generated. Do not edit!

// (in-package uuid_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class UniqueID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = new Array(16).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UniqueID
    // Check that the constant length array field [uuid] has the right length
    if (obj.uuid.length !== 16) {
      throw new Error('Unable to serialize array field uuid - length must be 16')
    }
    // Serialize message field [uuid]
    bufferOffset = _arraySerializer.uint8(obj.uuid, buffer, bufferOffset, 16);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UniqueID
    let len;
    let data = new UniqueID(null);
    // Deserialize message field [uuid]
    data.uuid = _arrayDeserializer.uint8(buffer, bufferOffset, 16)
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'uuid_msgs/UniqueID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fec2a93b6f5367ee8112c9c0b41ff310';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UniqueID(null);
    if (msg.uuid !== undefined) {
      resolved.uuid = msg.uuid;
    }
    else {
      resolved.uuid = new Array(16).fill(0)
    }

    return resolved;
    }
};

module.exports = UniqueID;
