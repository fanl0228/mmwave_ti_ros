; Auto-generated. Do not edit!


(cl:in-package ti_mmwave_rospkg-msg)


;//! \htmlinclude RadarOccupancy.msg.html

(cl:defclass <RadarOccupancy> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass RadarOccupancy (<RadarOccupancy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarOccupancy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarOccupancy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ti_mmwave_rospkg-msg:<RadarOccupancy> is deprecated: use ti_mmwave_rospkg-msg:RadarOccupancy instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarOccupancy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:header-val is deprecated.  Use ti_mmwave_rospkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RadarOccupancy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_rospkg-msg:state-val is deprecated.  Use ti_mmwave_rospkg-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarOccupancy>) ostream)
  "Serializes a message object of type '<RadarOccupancy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarOccupancy>) istream)
  "Deserializes a message object of type '<RadarOccupancy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarOccupancy>)))
  "Returns string type for a message object of type '<RadarOccupancy>"
  "ti_mmwave_rospkg/RadarOccupancy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarOccupancy)))
  "Returns string type for a message object of type 'RadarOccupancy"
  "ti_mmwave_rospkg/RadarOccupancy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarOccupancy>)))
  "Returns md5sum for a message object of type '<RadarOccupancy>"
  "461b1067e1ee73ecfebc21c633ae913d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarOccupancy)))
  "Returns md5sum for a message object of type 'RadarOccupancy"
  "461b1067e1ee73ecfebc21c633ae913d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarOccupancy>)))
  "Returns full string definition for message of type '<RadarOccupancy>"
  (cl:format cl:nil "Header header~%uint32 state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarOccupancy)))
  "Returns full string definition for message of type 'RadarOccupancy"
  (cl:format cl:nil "Header header~%uint32 state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarOccupancy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarOccupancy>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarOccupancy
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
