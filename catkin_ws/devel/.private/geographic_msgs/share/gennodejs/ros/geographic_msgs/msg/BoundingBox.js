// Auto-generated. Do not edit!

// (in-package geographic_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GeoPoint = require('./GeoPoint.js');

//-----------------------------------------------------------

class BoundingBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min_pt = null;
      this.max_pt = null;
    }
    else {
      if (initObj.hasOwnProperty('min_pt')) {
        this.min_pt = initObj.min_pt
      }
      else {
        this.min_pt = new GeoPoint();
      }
      if (initObj.hasOwnProperty('max_pt')) {
        this.max_pt = initObj.max_pt
      }
      else {
        this.max_pt = new GeoPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox
    // Serialize message field [min_pt]
    bufferOffset = GeoPoint.serialize(obj.min_pt, buffer, bufferOffset);
    // Serialize message field [max_pt]
    bufferOffset = GeoPoint.serialize(obj.max_pt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox
    let len;
    let data = new BoundingBox(null);
    // Deserialize message field [min_pt]
    data.min_pt = GeoPoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_pt]
    data.max_pt = GeoPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'geographic_msgs/BoundingBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f62e8b5e390a3ac7603250d46e8f8446';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Geographic map bounding box. 
    #
    # The two GeoPoints denote diagonally opposite corners of the box.
    #
    # If min_pt.latitude is NaN, the bounding box is "global", matching
    # any valid latitude, longitude and altitude.
    #
    # If min_pt.altitude is NaN, the bounding box is two-dimensional and
    # matches any altitude within the specified latitude and longitude
    # range.
    
    GeoPoint min_pt         # lowest and most Southwestern corner
    GeoPoint max_pt         # highest and most Northeastern corner
    
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
    const resolved = new BoundingBox(null);
    if (msg.min_pt !== undefined) {
      resolved.min_pt = GeoPoint.Resolve(msg.min_pt)
    }
    else {
      resolved.min_pt = new GeoPoint()
    }

    if (msg.max_pt !== undefined) {
      resolved.max_pt = GeoPoint.Resolve(msg.max_pt)
    }
    else {
      resolved.max_pt = new GeoPoint()
    }

    return resolved;
    }
};

module.exports = BoundingBox;
