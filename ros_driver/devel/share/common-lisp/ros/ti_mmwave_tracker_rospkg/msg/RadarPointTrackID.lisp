; Auto-generated. Do not edit!


(cl:in-package ti_mmwave_tracker_rospkg-msg)


;//! \htmlinclude RadarPointTrackID.msg.html

(cl:defclass <RadarPointTrackID> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tid
    :reader tid
    :initarg :tid
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarPointTrackID (<RadarPointTrackID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarPointTrackID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarPointTrackID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ti_mmwave_tracker_rospkg-msg:<RadarPointTrackID> is deprecated: use ti_mmwave_tracker_rospkg-msg:RadarPointTrackID instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarPointTrackID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:header-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tid-val :lambda-list '(m))
(cl:defmethod tid-val ((m <RadarPointTrackID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:tid-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:tid instead.")
  (tid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarPointTrackID>) ostream)
  "Serializes a message object of type '<RadarPointTrackID>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarPointTrackID>) istream)
  "Deserializes a message object of type '<RadarPointTrackID>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarPointTrackID>)))
  "Returns string type for a message object of type '<RadarPointTrackID>"
  "ti_mmwave_tracker_rospkg/RadarPointTrackID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarPointTrackID)))
  "Returns string type for a message object of type 'RadarPointTrackID"
  "ti_mmwave_tracker_rospkg/RadarPointTrackID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarPointTrackID>)))
  "Returns md5sum for a message object of type '<RadarPointTrackID>"
  "c7518afac70459a691ba924d05457d35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarPointTrackID)))
  "Returns md5sum for a message object of type 'RadarPointTrackID"
  "c7518afac70459a691ba924d05457d35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarPointTrackID>)))
  "Returns full string definition for message of type '<RadarPointTrackID>"
  (cl:format cl:nil "Header header~%uint8 tid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarPointTrackID)))
  "Returns full string definition for message of type 'RadarPointTrackID"
  (cl:format cl:nil "Header header~%uint8 tid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarPointTrackID>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarPointTrackID>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarPointTrackID
    (cl:cons ':header (header msg))
    (cl:cons ':tid (tid msg))
))
