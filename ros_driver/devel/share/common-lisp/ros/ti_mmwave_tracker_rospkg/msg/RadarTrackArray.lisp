; Auto-generated. Do not edit!


(cl:in-package ti_mmwave_tracker_rospkg-msg)


;//! \htmlinclude RadarTrackArray.msg.html

(cl:defclass <RadarTrackArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (num_tracks
    :reader num_tracks
    :initarg :num_tracks
    :type cl:integer
    :initform 0)
   (track
    :reader track
    :initarg :track
    :type (cl:vector ti_mmwave_tracker_rospkg-msg:RadarTrackContents)
   :initform (cl:make-array 0 :element-type 'ti_mmwave_tracker_rospkg-msg:RadarTrackContents :initial-element (cl:make-instance 'ti_mmwave_tracker_rospkg-msg:RadarTrackContents))))
)

(cl:defclass RadarTrackArray (<RadarTrackArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarTrackArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarTrackArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ti_mmwave_tracker_rospkg-msg:<RadarTrackArray> is deprecated: use ti_mmwave_tracker_rospkg-msg:RadarTrackArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarTrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:header-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'num_tracks-val :lambda-list '(m))
(cl:defmethod num_tracks-val ((m <RadarTrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:num_tracks-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:num_tracks instead.")
  (num_tracks m))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <RadarTrackArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:track-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:track instead.")
  (track m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarTrackArray>) ostream)
  "Serializes a message object of type '<RadarTrackArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_tracks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_tracks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_tracks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_tracks)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'track))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'track))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarTrackArray>) istream)
  "Deserializes a message object of type '<RadarTrackArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_tracks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_tracks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_tracks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_tracks)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'track) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'track)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ti_mmwave_tracker_rospkg-msg:RadarTrackContents))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarTrackArray>)))
  "Returns string type for a message object of type '<RadarTrackArray>"
  "ti_mmwave_tracker_rospkg/RadarTrackArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarTrackArray)))
  "Returns string type for a message object of type 'RadarTrackArray"
  "ti_mmwave_tracker_rospkg/RadarTrackArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarTrackArray>)))
  "Returns md5sum for a message object of type '<RadarTrackArray>"
  "4c57d9f86b51b7fa5872677d0abca61c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarTrackArray)))
  "Returns md5sum for a message object of type 'RadarTrackArray"
  "4c57d9f86b51b7fa5872677d0abca61c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarTrackArray>)))
  "Returns full string definition for message of type '<RadarTrackArray>"
  (cl:format cl:nil "Header header~%uint32 num_tracks~%RadarTrackContents[] track~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ti_mmwave_tracker_rospkg/RadarTrackContents~%Header header~%uint32 tid~%float32 posx~%float32 posy~%float32 posz~%float32 velx~%float32 vely~%float32 velz~%float32 accx~%float32 accy~%float32 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarTrackArray)))
  "Returns full string definition for message of type 'RadarTrackArray"
  (cl:format cl:nil "Header header~%uint32 num_tracks~%RadarTrackContents[] track~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ti_mmwave_tracker_rospkg/RadarTrackContents~%Header header~%uint32 tid~%float32 posx~%float32 posy~%float32 posz~%float32 velx~%float32 vely~%float32 velz~%float32 accx~%float32 accy~%float32 accz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarTrackArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'track) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarTrackArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarTrackArray
    (cl:cons ':header (header msg))
    (cl:cons ':num_tracks (num_tracks msg))
    (cl:cons ':track (track msg))
))
