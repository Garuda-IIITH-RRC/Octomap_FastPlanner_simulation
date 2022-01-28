// Auto-generated. Do not edit!

// (in-package geographic_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

let RoutePath = require('../msg/RoutePath.js');

//-----------------------------------------------------------

class GetRoutePlanRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.network = null;
      this.start = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('network')) {
        this.network = initObj.network
      }
      else {
        this.network = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new uuid_msgs.msg.UniqueID();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRoutePlanRequest
    // Serialize message field [network]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.network, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRoutePlanRequest
    let len;
    let data = new GetRoutePlanRequest(null);
    // Deserialize message field [network]
    data.network = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'geographic_msgs/GetRoutePlanRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e56ac34268c6d575dabb30f42da4a47a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Get a plan to traverse a route network from start to goal.
    #
    # Similar to nav_msgs/GetPlan, but constrained to use the route network.
    
    uuid_msgs/UniqueID network      # route network to use
    uuid_msgs/UniqueID start        # starting way point
    uuid_msgs/UniqueID goal         # goal way point
    
    
    ================================================================================
    MSG: uuid_msgs/UniqueID
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
    const resolved = new GetRoutePlanRequest(null);
    if (msg.network !== undefined) {
      resolved.network = uuid_msgs.msg.UniqueID.Resolve(msg.network)
    }
    else {
      resolved.network = new uuid_msgs.msg.UniqueID()
    }

    if (msg.start !== undefined) {
      resolved.start = uuid_msgs.msg.UniqueID.Resolve(msg.start)
    }
    else {
      resolved.start = new uuid_msgs.msg.UniqueID()
    }

    if (msg.goal !== undefined) {
      resolved.goal = uuid_msgs.msg.UniqueID.Resolve(msg.goal)
    }
    else {
      resolved.goal = new uuid_msgs.msg.UniqueID()
    }

    return resolved;
    }
};

class GetRoutePlanResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status = null;
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = new RoutePath();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRoutePlanResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [plan]
    bufferOffset = RoutePath.serialize(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRoutePlanResponse
    let len;
    let data = new GetRoutePlanResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [plan]
    data.plan = RoutePath.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += RoutePath.getMessageSize(object.plan);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'geographic_msgs/GetRoutePlanResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '28ee54f0ccb2ab28b46048ebc6fa5aff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool            success         # true if the call succeeded
    string          status          # more details
    
    RoutePath       plan            # path to follow
    
    
    ================================================================================
    MSG: geographic_msgs/RoutePath
    # Path through a route network.
    #
    # A path is a sequence of RouteSegment edges.  This information is
    # extracted from a RouteNetwork graph.  A RoutePath lists the route
    # segments needed to reach some chosen goal.
    
    Header header
    
    uuid_msgs/UniqueID   network    # Route network containing this path
    uuid_msgs/UniqueID[] segments   # Sequence of RouteSegment IDs
    KeyValue[]           props      # Key/value properties
    
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
    string frame_id
    
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
    const resolved = new GetRoutePlanResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.plan !== undefined) {
      resolved.plan = RoutePath.Resolve(msg.plan)
    }
    else {
      resolved.plan = new RoutePath()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRoutePlanRequest,
  Response: GetRoutePlanResponse,
  md5sum() { return '04479050c4f2a58d915ceec419e70b4e'; },
  datatype() { return 'geographic_msgs/GetRoutePlan'; }
};
