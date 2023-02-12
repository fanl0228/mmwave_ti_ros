// Auto-generated. Do not edit!

// (in-package ti_mmwave_tracker_rospkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarTrackContents = require('./RadarTrackContents.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadarTrackArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.num_tracks = null;
      this.track = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('num_tracks')) {
        this.num_tracks = initObj.num_tracks
      }
      else {
        this.num_tracks = 0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarTrackArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [num_tracks]
    bufferOffset = _serializer.uint32(obj.num_tracks, buffer, bufferOffset);
    // Serialize message field [track]
    // Serialize the length for message field [track]
    bufferOffset = _serializer.uint32(obj.track.length, buffer, bufferOffset);
    obj.track.forEach((val) => {
      bufferOffset = RadarTrackContents.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarTrackArray
    let len;
    let data = new RadarTrackArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_tracks]
    data.num_tracks = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [track]
    // Deserialize array length for message field [track]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.track = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.track[i] = RadarTrackContents.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.track.forEach((val) => {
      length += RadarTrackContents.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ti_mmwave_tracker_rospkg/RadarTrackArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4c57d9f86b51b7fa5872677d0abca61c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint32 num_tracks
    RadarTrackContents[] track
    
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
    MSG: ti_mmwave_tracker_rospkg/RadarTrackContents
    Header header
    uint32 tid
    float32 posx
    float32 posy
    float32 posz
    float32 velx
    float32 vely
    float32 velz
    float32 accx
    float32 accy
    float32 accz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarTrackArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.num_tracks !== undefined) {
      resolved.num_tracks = msg.num_tracks;
    }
    else {
      resolved.num_tracks = 0
    }

    if (msg.track !== undefined) {
      resolved.track = new Array(msg.track.length);
      for (let i = 0; i < resolved.track.length; ++i) {
        resolved.track[i] = RadarTrackContents.Resolve(msg.track[i]);
      }
    }
    else {
      resolved.track = []
    }

    return resolved;
    }
};

module.exports = RadarTrackArray;
