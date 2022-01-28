// Auto-generated. Do not edit!

// (in-package safe_landing_planner.msg)


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

class SLPGridMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mean = null;
      this.std_dev = null;
      this.counter = null;
      this.land = null;
      this.grid_size = null;
      this.cell_size = null;
      this.curr_pos_index = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mean')) {
        this.mean = initObj.mean
      }
      else {
        this.mean = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('std_dev')) {
        this.std_dev = initObj.std_dev
      }
      else {
        this.std_dev = new std_msgs.msg.Float64MultiArray();
      }
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = new std_msgs.msg.Int64MultiArray();
      }
      if (initObj.hasOwnProperty('land')) {
        this.land = initObj.land
      }
      else {
        this.land = new std_msgs.msg.Int64MultiArray();
      }
      if (initObj.hasOwnProperty('grid_size')) {
        this.grid_size = initObj.grid_size
      }
      else {
        this.grid_size = 0.0;
      }
      if (initObj.hasOwnProperty('cell_size')) {
        this.cell_size = initObj.cell_size
      }
      else {
        this.cell_size = 0.0;
      }
      if (initObj.hasOwnProperty('curr_pos_index')) {
        this.curr_pos_index = initObj.curr_pos_index
      }
      else {
        this.curr_pos_index = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SLPGridMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mean]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.mean, buffer, bufferOffset);
    // Serialize message field [std_dev]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.std_dev, buffer, bufferOffset);
    // Serialize message field [counter]
    bufferOffset = std_msgs.msg.Int64MultiArray.serialize(obj.counter, buffer, bufferOffset);
    // Serialize message field [land]
    bufferOffset = std_msgs.msg.Int64MultiArray.serialize(obj.land, buffer, bufferOffset);
    // Serialize message field [grid_size]
    bufferOffset = _serializer.float64(obj.grid_size, buffer, bufferOffset);
    // Serialize message field [cell_size]
    bufferOffset = _serializer.float64(obj.cell_size, buffer, bufferOffset);
    // Serialize message field [curr_pos_index]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.curr_pos_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SLPGridMsg
    let len;
    let data = new SLPGridMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mean]
    data.mean = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [std_dev]
    data.std_dev = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [counter]
    data.counter = std_msgs.msg.Int64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [land]
    data.land = std_msgs.msg.Int64MultiArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [grid_size]
    data.grid_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cell_size]
    data.cell_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [curr_pos_index]
    data.curr_pos_index = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.mean);
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.std_dev);
    length += std_msgs.msg.Int64MultiArray.getMessageSize(object.counter);
    length += std_msgs.msg.Int64MultiArray.getMessageSize(object.land);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'safe_landing_planner/SLPGridMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac7dcafe4e3af4e98f04adc7a210b7be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    std_msgs/Float64MultiArray mean
    std_msgs/Float64MultiArray std_dev
    std_msgs/Int64MultiArray counter
    std_msgs/Int64MultiArray land
    
    float64 grid_size
    float64 cell_size
    
    geometry_msgs/Vector3 curr_pos_index
    
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
    MSG: std_msgs/Float64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float64[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    ================================================================================
    MSG: std_msgs/Int64MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int64[]           data          # array of data
    
    
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
    const resolved = new SLPGridMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mean !== undefined) {
      resolved.mean = std_msgs.msg.Float64MultiArray.Resolve(msg.mean)
    }
    else {
      resolved.mean = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.std_dev !== undefined) {
      resolved.std_dev = std_msgs.msg.Float64MultiArray.Resolve(msg.std_dev)
    }
    else {
      resolved.std_dev = new std_msgs.msg.Float64MultiArray()
    }

    if (msg.counter !== undefined) {
      resolved.counter = std_msgs.msg.Int64MultiArray.Resolve(msg.counter)
    }
    else {
      resolved.counter = new std_msgs.msg.Int64MultiArray()
    }

    if (msg.land !== undefined) {
      resolved.land = std_msgs.msg.Int64MultiArray.Resolve(msg.land)
    }
    else {
      resolved.land = new std_msgs.msg.Int64MultiArray()
    }

    if (msg.grid_size !== undefined) {
      resolved.grid_size = msg.grid_size;
    }
    else {
      resolved.grid_size = 0.0
    }

    if (msg.cell_size !== undefined) {
      resolved.cell_size = msg.cell_size;
    }
    else {
      resolved.cell_size = 0.0
    }

    if (msg.curr_pos_index !== undefined) {
      resolved.curr_pos_index = geometry_msgs.msg.Vector3.Resolve(msg.curr_pos_index)
    }
    else {
      resolved.curr_pos_index = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = SLPGridMsg;
