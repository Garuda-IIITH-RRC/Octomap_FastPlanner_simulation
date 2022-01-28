// Auto-generated. Do not edit!

// (in-package msg_check.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlotDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sp = null;
      this.sq = null;
      this.acceleration = null;
      this.angular_acceleration = null;
      this.position_error = null;
      this.velocity_error = null;
      this.position_error_integral = null;
      this.angle_error = null;
      this.angle_rate_error = null;
      this.Kp_hat = null;
      this.Kq_hat_0 = null;
      this.Kq_hat_1 = null;
      this.Kq_hat_2 = null;
      this.rho_p = null;
      this.rho_q = null;
      this.delTau_p = null;
      this.delTau_q = null;
      this.moments = null;
      this.thrust = null;
      this.M_hat = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sp')) {
        this.sp = initObj.sp
      }
      else {
        this.sp = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('sq')) {
        this.sq = initObj.sq
      }
      else {
        this.sq = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angular_acceleration')) {
        this.angular_acceleration = initObj.angular_acceleration
      }
      else {
        this.angular_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('position_error')) {
        this.position_error = initObj.position_error
      }
      else {
        this.position_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocity_error')) {
        this.velocity_error = initObj.velocity_error
      }
      else {
        this.velocity_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('position_error_integral')) {
        this.position_error_integral = initObj.position_error_integral
      }
      else {
        this.position_error_integral = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angle_error')) {
        this.angle_error = initObj.angle_error
      }
      else {
        this.angle_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('angle_rate_error')) {
        this.angle_rate_error = initObj.angle_rate_error
      }
      else {
        this.angle_rate_error = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('Kp_hat')) {
        this.Kp_hat = initObj.Kp_hat
      }
      else {
        this.Kp_hat = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('Kq_hat_0')) {
        this.Kq_hat_0 = initObj.Kq_hat_0
      }
      else {
        this.Kq_hat_0 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('Kq_hat_1')) {
        this.Kq_hat_1 = initObj.Kq_hat_1
      }
      else {
        this.Kq_hat_1 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('Kq_hat_2')) {
        this.Kq_hat_2 = initObj.Kq_hat_2
      }
      else {
        this.Kq_hat_2 = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rho_p')) {
        this.rho_p = initObj.rho_p
      }
      else {
        this.rho_p = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rho_q')) {
        this.rho_q = initObj.rho_q
      }
      else {
        this.rho_q = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('delTau_p')) {
        this.delTau_p = initObj.delTau_p
      }
      else {
        this.delTau_p = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('delTau_q')) {
        this.delTau_q = initObj.delTau_q
      }
      else {
        this.delTau_q = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('moments')) {
        this.moments = initObj.moments
      }
      else {
        this.moments = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('thrust')) {
        this.thrust = initObj.thrust
      }
      else {
        this.thrust = 0.0;
      }
      if (initObj.hasOwnProperty('M_hat')) {
        this.M_hat = initObj.M_hat
      }
      else {
        this.M_hat = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlotDataMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sp]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sp, buffer, bufferOffset);
    // Serialize message field [sq]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.sq, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [angular_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_acceleration, buffer, bufferOffset);
    // Serialize message field [position_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_error, buffer, bufferOffset);
    // Serialize message field [velocity_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity_error, buffer, bufferOffset);
    // Serialize message field [position_error_integral]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position_error_integral, buffer, bufferOffset);
    // Serialize message field [angle_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angle_error, buffer, bufferOffset);
    // Serialize message field [angle_rate_error]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angle_rate_error, buffer, bufferOffset);
    // Serialize message field [Kp_hat]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.Kp_hat, buffer, bufferOffset);
    // Serialize message field [Kq_hat_0]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.Kq_hat_0, buffer, bufferOffset);
    // Serialize message field [Kq_hat_1]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.Kq_hat_1, buffer, bufferOffset);
    // Serialize message field [Kq_hat_2]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.Kq_hat_2, buffer, bufferOffset);
    // Serialize message field [rho_p]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rho_p, buffer, bufferOffset);
    // Serialize message field [rho_q]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rho_q, buffer, bufferOffset);
    // Serialize message field [delTau_p]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.delTau_p, buffer, bufferOffset);
    // Serialize message field [delTau_q]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.delTau_q, buffer, bufferOffset);
    // Serialize message field [moments]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.moments, buffer, bufferOffset);
    // Serialize message field [thrust]
    bufferOffset = _serializer.float64(obj.thrust, buffer, bufferOffset);
    // Serialize message field [M_hat]
    bufferOffset = _serializer.float64(obj.M_hat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlotDataMsg
    let len;
    let data = new PlotDataMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sp]
    data.sp = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [sq]
    data.sq = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_acceleration]
    data.angular_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_error]
    data.position_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_error]
    data.velocity_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_error_integral]
    data.position_error_integral = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_error]
    data.angle_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_rate_error]
    data.angle_rate_error = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [Kp_hat]
    data.Kp_hat = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [Kq_hat_0]
    data.Kq_hat_0 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [Kq_hat_1]
    data.Kq_hat_1 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [Kq_hat_2]
    data.Kq_hat_2 = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rho_p]
    data.rho_p = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rho_q]
    data.rho_q = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [delTau_p]
    data.delTau_p = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [delTau_q]
    data.delTau_q = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [moments]
    data.moments = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [thrust]
    data.thrust = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [M_hat]
    data.M_hat = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 448;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msg_check/PlotDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34437636d1c86e0bba868e7bc32517df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Vector3 sp
    geometry_msgs/Vector3 sq
    geometry_msgs/Vector3 acceleration
    geometry_msgs/Vector3 angular_acceleration
    geometry_msgs/Vector3 position_error
    geometry_msgs/Vector3 velocity_error
    geometry_msgs/Vector3 position_error_integral
    geometry_msgs/Vector3 angle_error
    geometry_msgs/Vector3 angle_rate_error
    geometry_msgs/Vector3 Kp_hat
    geometry_msgs/Vector3 Kq_hat_0
    geometry_msgs/Vector3 Kq_hat_1
    geometry_msgs/Vector3 Kq_hat_2
    geometry_msgs/Vector3 rho_p
    geometry_msgs/Vector3 rho_q
    geometry_msgs/Vector3 delTau_p
    geometry_msgs/Vector3 delTau_q
    geometry_msgs/Vector3 moments
    float64 thrust
    float64 M_hat
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlotDataMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sp !== undefined) {
      resolved.sp = geometry_msgs.msg.Vector3.Resolve(msg.sp)
    }
    else {
      resolved.sp = new geometry_msgs.msg.Vector3()
    }

    if (msg.sq !== undefined) {
      resolved.sq = geometry_msgs.msg.Vector3.Resolve(msg.sq)
    }
    else {
      resolved.sq = new geometry_msgs.msg.Vector3()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.angular_acceleration !== undefined) {
      resolved.angular_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.angular_acceleration)
    }
    else {
      resolved.angular_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.position_error !== undefined) {
      resolved.position_error = geometry_msgs.msg.Vector3.Resolve(msg.position_error)
    }
    else {
      resolved.position_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocity_error !== undefined) {
      resolved.velocity_error = geometry_msgs.msg.Vector3.Resolve(msg.velocity_error)
    }
    else {
      resolved.velocity_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.position_error_integral !== undefined) {
      resolved.position_error_integral = geometry_msgs.msg.Vector3.Resolve(msg.position_error_integral)
    }
    else {
      resolved.position_error_integral = new geometry_msgs.msg.Vector3()
    }

    if (msg.angle_error !== undefined) {
      resolved.angle_error = geometry_msgs.msg.Vector3.Resolve(msg.angle_error)
    }
    else {
      resolved.angle_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.angle_rate_error !== undefined) {
      resolved.angle_rate_error = geometry_msgs.msg.Vector3.Resolve(msg.angle_rate_error)
    }
    else {
      resolved.angle_rate_error = new geometry_msgs.msg.Vector3()
    }

    if (msg.Kp_hat !== undefined) {
      resolved.Kp_hat = geometry_msgs.msg.Vector3.Resolve(msg.Kp_hat)
    }
    else {
      resolved.Kp_hat = new geometry_msgs.msg.Vector3()
    }

    if (msg.Kq_hat_0 !== undefined) {
      resolved.Kq_hat_0 = geometry_msgs.msg.Vector3.Resolve(msg.Kq_hat_0)
    }
    else {
      resolved.Kq_hat_0 = new geometry_msgs.msg.Vector3()
    }

    if (msg.Kq_hat_1 !== undefined) {
      resolved.Kq_hat_1 = geometry_msgs.msg.Vector3.Resolve(msg.Kq_hat_1)
    }
    else {
      resolved.Kq_hat_1 = new geometry_msgs.msg.Vector3()
    }

    if (msg.Kq_hat_2 !== undefined) {
      resolved.Kq_hat_2 = geometry_msgs.msg.Vector3.Resolve(msg.Kq_hat_2)
    }
    else {
      resolved.Kq_hat_2 = new geometry_msgs.msg.Vector3()
    }

    if (msg.rho_p !== undefined) {
      resolved.rho_p = geometry_msgs.msg.Vector3.Resolve(msg.rho_p)
    }
    else {
      resolved.rho_p = new geometry_msgs.msg.Vector3()
    }

    if (msg.rho_q !== undefined) {
      resolved.rho_q = geometry_msgs.msg.Vector3.Resolve(msg.rho_q)
    }
    else {
      resolved.rho_q = new geometry_msgs.msg.Vector3()
    }

    if (msg.delTau_p !== undefined) {
      resolved.delTau_p = geometry_msgs.msg.Vector3.Resolve(msg.delTau_p)
    }
    else {
      resolved.delTau_p = new geometry_msgs.msg.Vector3()
    }

    if (msg.delTau_q !== undefined) {
      resolved.delTau_q = geometry_msgs.msg.Vector3.Resolve(msg.delTau_q)
    }
    else {
      resolved.delTau_q = new geometry_msgs.msg.Vector3()
    }

    if (msg.moments !== undefined) {
      resolved.moments = geometry_msgs.msg.Vector3.Resolve(msg.moments)
    }
    else {
      resolved.moments = new geometry_msgs.msg.Vector3()
    }

    if (msg.thrust !== undefined) {
      resolved.thrust = msg.thrust;
    }
    else {
      resolved.thrust = 0.0
    }

    if (msg.M_hat !== undefined) {
      resolved.M_hat = msg.M_hat;
    }
    else {
      resolved.M_hat = 0.0
    }

    return resolved;
    }
};

module.exports = PlotDataMsg;
