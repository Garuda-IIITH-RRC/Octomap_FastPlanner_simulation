// Auto-generated. Do not edit!

// (in-package geographic_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyValue = require('./KeyValue.js');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class RouteSegment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.start = null;
      this.end = null;
      this.props = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('props')) {
        this.props = initObj.props
      }
      else {
        this.props = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteSegment
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.end, buffer, bufferOffset);
    // Serialize message field [props]
    // Serialize the length for message field [props]
    bufferOffset = _serializer.uint32(obj.props.length, buffer, bufferOffset);
    obj.props.forEach((val) => {
      bufferOffset = KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteSegment
    let len;
    let data = new RouteSegment(null);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [props]
    // Deserialize array length for message field [props]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.props = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.props[i] = KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.props.forEach((val) => {
      length += KeyValue.getMessageSize(val);
    });
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geographic_msgs/RouteSegment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8583d1e2ddf1891c3934a5d2ed9a799c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Route network segment.
    #
    # This is one directed edge of a RouteNetwork graph. It represents a
    # known path from one way point to another.  If the path is two-way,
    # there will be another RouteSegment with "start" and "end" reversed.
    
    uuid_msgs/UniqueID id           # Unique identifier for this segment
    
    uuid_msgs/UniqueID start        # beginning way point of segment
    uuid_msgs/UniqueID end          # ending way point of segment
    
    KeyValue[] props                # segment properties
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
    # A universally unique identifier (UUID).
    #
    #  http://en.wikipedia.org/wiki/Universally_unique_identifier
    #  http://tools.ietf.org/html/rfc4122.html
    
    uint8[16] uuid
    
    ================================================================================
    MSG: geographic_msgs/KeyValue
    # Geographic map tag (key, value) pair
    #
    # This is equivalent to diagnostic_msgs/KeyValue, repeated here to
    # avoid introducing a trivial stack dependency.
    
    string key                     # tag label
    string value                   # corresponding value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteSegment(null);
    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.start !== undefined) {
      resolved.start = uuid_msgs.msg.UniqueID.Resolve(msg.start)
    }
    else {
      resolved.start = new uuid_msgs.msg.UniqueID()
    }

    if (msg.end !== undefined) {
      resolved.end = uuid_msgs.msg.UniqueID.Resolve(msg.end)
    }
    else {
      resolved.end = new uuid_msgs.msg.UniqueID()
    }

    if (msg.props !== undefined) {
      resolved.props = new Array(msg.props.length);
      for (let i = 0; i < resolved.props.length; ++i) {
        resolved.props[i] = KeyValue.Resolve(msg.props[i]);
      }
    }
    else {
      resolved.props = []
    }

    return resolved;
    }
};

module.exports = RouteSegment;
