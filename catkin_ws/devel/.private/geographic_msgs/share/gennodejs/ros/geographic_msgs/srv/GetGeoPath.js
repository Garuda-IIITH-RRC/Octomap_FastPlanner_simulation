// Auto-generated. Do not edit!

// (in-package geographic_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeoPoint = require('../msg/GeoPoint.js');

//-----------------------------------------------------------

let GeoPath = require('../msg/GeoPath.js');
let uuid_msgs = _finder('uuid_msgs');

//-----------------------------------------------------------

class GetGeoPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new GeoPoint();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new GeoPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGeoPathRequest
    // Serialize message field [start]
    bufferOffset = GeoPoint.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = GeoPoint.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGeoPathRequest
    let len;
    let data = new GetGeoPathRequest(null);
    // Deserialize message field [start]
    data.start = GeoPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = GeoPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'geographic_msgs/GetGeoPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cad6de11e4ae4ca568785186e1f99f89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Searches for given start and goal the nearest route segments
    # and determine the path through the RouteNetwork
    
    geographic_msgs/GeoPoint start        # starting point
    geographic_msgs/GeoPoint goal         # goal point
    
    
    ================================================================================
    MSG: geographic_msgs/GeoPoint
    # Geographic point, using the WGS 84 reference ellipsoid.
    
    # Latitude [degrees]. Positive is north of equator; negative is south
    # (-90 <= latitude <= +90).
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is
    # west (-180 <= longitude <= +180). At the poles, latitude is -90 or
    # +90, and longitude is irrelevant, but must be in range.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
    float64 altitude
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetGeoPathRequest(null);
    if (msg.start !== undefined) {
      resolved.start = GeoPoint.Resolve(msg.start)
    }
    else {
      resolved.start = new GeoPoint()
    }

    if (msg.goal !== undefined) {
      resolved.goal = GeoPoint.Resolve(msg.goal)
    }
    else {
      resolved.goal = new GeoPoint()
    }

    return resolved;
    }
};

class GetGeoPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.status = null;
      this.plan = null;
      this.network = null;
      this.start_seg = null;
      this.goal_seg = null;
      this.distance = null;
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
        this.plan = new GeoPath();
      }
      if (initObj.hasOwnProperty('network')) {
        this.network = initObj.network
      }
      else {
        this.network = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('start_seg')) {
        this.start_seg = initObj.start_seg
      }
      else {
        this.start_seg = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('goal_seg')) {
        this.goal_seg = initObj.goal_seg
      }
      else {
        this.goal_seg = new uuid_msgs.msg.UniqueID();
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetGeoPathResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [plan]
    bufferOffset = GeoPath.serialize(obj.plan, buffer, bufferOffset);
    // Serialize message field [network]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.network, buffer, bufferOffset);
    // Serialize message field [start_seg]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.start_seg, buffer, bufferOffset);
    // Serialize message field [goal_seg]
    bufferOffset = uuid_msgs.msg.UniqueID.serialize(obj.goal_seg, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float64(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetGeoPathResponse
    let len;
    let data = new GetGeoPathResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [plan]
    data.plan = GeoPath.deserialize(buffer, bufferOffset);
    // Deserialize message field [network]
    data.network = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_seg]
    data.start_seg = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_seg]
    data.goal_seg = uuid_msgs.msg.UniqueID.deserialize(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.status.length;
    length += GeoPath.getMessageSize(object.plan);
    return length + 61;
  }

  static datatype() {
    // Returns string type for a service object
    return 'geographic_msgs/GetGeoPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0562f4b72e4d5b8e5fa142bd7363638c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool success                          # true if the call succeeded
    string status                         # more details
    
    geographic_msgs/GeoPath plan          # path to follow
    
    uuid_msgs/UniqueID network            # the uuid of the RouteNetwork
    uuid_msgs/UniqueID start_seg          # the uuid of the starting RouteSegment
    uuid_msgs/UniqueID goal_seg           # the uuid of the ending RouteSegment
    float64 distance                      # the length of the plan
    
    
    ================================================================================
    MSG: geographic_msgs/GeoPath
    std_msgs/Header header
    geographic_msgs/GeoPoseStamped[] poses
    
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
    MSG: geographic_msgs/GeoPoseStamped
    Header header
    geographic_msgs/GeoPose pose
    
    ================================================================================
    MSG: geographic_msgs/GeoPose
    # Geographic pose, using the WGS 84 reference ellipsoid.
    #
    # Orientation uses the East-North-Up (ENU) frame of reference.
    # (But, what about singularities at the poles?)
    
    GeoPoint position
    geometry_msgs/Quaternion orientation
    
    ================================================================================
    MSG: geographic_msgs/GeoPoint
    # Geographic point, using the WGS 84 reference ellipsoid.
    
    # Latitude [degrees]. Positive is north of equator; negative is south
    # (-90 <= latitude <= +90).
    float64 latitude
    
    # Longitude [degrees]. Positive is east of prime meridian; negative is
    # west (-180 <= longitude <= +180). At the poles, latitude is -90 or
    # +90, and longitude is irrelevant, but must be in range.
    float64 longitude
    
    # Altitude [m]. Positive is above the WGS 84 ellipsoid (NaN if unspecified).
    float64 altitude
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new GetGeoPathResponse(null);
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
      resolved.plan = GeoPath.Resolve(msg.plan)
    }
    else {
      resolved.plan = new GeoPath()
    }

    if (msg.network !== undefined) {
      resolved.network = uuid_msgs.msg.UniqueID.Resolve(msg.network)
    }
    else {
      resolved.network = new uuid_msgs.msg.UniqueID()
    }

    if (msg.start_seg !== undefined) {
      resolved.start_seg = uuid_msgs.msg.UniqueID.Resolve(msg.start_seg)
    }
    else {
      resolved.start_seg = new uuid_msgs.msg.UniqueID()
    }

    if (msg.goal_seg !== undefined) {
      resolved.goal_seg = uuid_msgs.msg.UniqueID.Resolve(msg.goal_seg)
    }
    else {
      resolved.goal_seg = new uuid_msgs.msg.UniqueID()
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetGeoPathRequest,
  Response: GetGeoPathResponse,
  md5sum() { return 'ee0dbd181711a70f823cc5d415fa609b'; },
  datatype() { return 'geographic_msgs/GetGeoPath'; }
};
