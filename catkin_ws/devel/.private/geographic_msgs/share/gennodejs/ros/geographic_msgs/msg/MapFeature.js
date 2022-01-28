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

class MapFeature {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.components = null;
      this.props = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('components')) {
        this.components = initObj.components
      }
      else {
        this.components = [];
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
    // Serializes a message object of type MapFeature
    // Serialize message field [id]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.id, buffer, bufferOffset);
    // Serialize message field [components]
    // Serialize the length for message field [components]
    bufferOffset = _serializer.uint32(obj.components.length, buffer, bufferOffset);
    obj.components.forEach((val) => {
      bufferOffset = uuid_msgs.msg.UniqueID.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [props]
    // Serialize the length for message field [props]
    bufferOffset = _serializer.uint32(obj.props.length, buffer, bufferOffset);
    obj.props.forEach((val) => {
      bufferOffset = KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapFeature
    let len;
    let data = new MapFeature(null);
    // Deserialize message field [id]
    data.id = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [components]
    // Deserialize array length for message field [components]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.components = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.components[i] = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset)
    }
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
    length += 16 * object.components.length;
    object.props.forEach((val) => {
      length += KeyValue.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geographic_msgs/MapFeature';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2505ace5e8da8a15b610eaf62bdefae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Geographic map feature.
    #
    # A list of WayPoint IDs for features like streets, highways, hiking
    # trails, the outlines of buildings and parking lots in sequential
    # order.
    #
    # Feature lists may also contain other feature lists as members.
    
    uuid_msgs/UniqueID   id         # Unique feature identifier
    uuid_msgs/UniqueID[] components # Sequence of feature components
    KeyValue[] props                # Key/value properties for this feature
    
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
    const resolved = new MapFeature(null);
    if (msg.id !== undefined) {
      resolved.id = uuid_msgs.msg.UniqueID.Resolve(msg.id)
    }
    else {
      resolved.id = new uuid_msgs.msg.UniqueID()
    }

    if (msg.components !== undefined) {
      resolved.components = new Array(msg.components.length);
      for (let i = 0; i < resolved.components.length; ++i) {
        resolved.components[i] = uuid_msgs.msg.UniqueID.Resolve(msg.components[i]);
      }
    }
    else {
      resolved.components = []
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

module.exports = MapFeature;
