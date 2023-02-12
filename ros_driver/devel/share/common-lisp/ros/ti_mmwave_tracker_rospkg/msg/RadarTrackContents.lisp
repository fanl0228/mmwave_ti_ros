; Auto-generated. Do not edit!


(cl:in-package ti_mmwave_tracker_rospkg-msg)


;//! \htmlinclude RadarTrackContents.msg.html

(cl:defclass <RadarTrackContents> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tid
    :reader tid
    :initarg :tid
    :type cl:integer
    :initform 0)
   (posx
    :reader posx
    :initarg :posx
    :type cl:float
    :initform 0.0)
   (posy
    :reader posy
    :initarg :posy
    :type cl:float
    :initform 0.0)
   (posz
    :reader posz
    :initarg :posz
    :type cl:float
    :initform 0.0)
   (velx
    :reader velx
    :initarg :velx
    :type cl:float
    :initform 0.0)
   (vely
    :reader vely
    :initarg :vely
    :type cl:float
    :initform 0.0)
   (velz
    :reader velz
    :initarg :velz
    :type cl:float
    :initform 0.0)
   (accx
    :reader accx
    :initarg :accx
    :type cl:float
    :initform 0.0)
   (accy
    :reader accy
    :initarg :accy
    :type cl:float
    :initform 0.0)
   (accz
    :reader accz
    :initarg :accz
    :type cl:float
    :initform 0.0))
)

(cl:defclass RadarTrackContents (<RadarTrackContents>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarTrackContents>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarTrackContents)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ti_mmwave_tracker_rospkg-msg:<RadarTrackContents> is deprecated: use ti_mmwave_tracker_rospkg-msg:RadarTrackContents instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:header-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tid-val :lambda-list '(m))
(cl:defmethod tid-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:tid-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:tid instead.")
  (tid m))

(cl:ensure-generic-function 'posx-val :lambda-list '(m))
(cl:defmethod posx-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:posx-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:posx instead.")
  (posx m))

(cl:ensure-generic-function 'posy-val :lambda-list '(m))
(cl:defmethod posy-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:posy-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:posy instead.")
  (posy m))

(cl:ensure-generic-function 'posz-val :lambda-list '(m))
(cl:defmethod posz-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:posz-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:posz instead.")
  (posz m))

(cl:ensure-generic-function 'velx-val :lambda-list '(m))
(cl:defmethod velx-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:velx-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:velx instead.")
  (velx m))

(cl:ensure-generic-function 'vely-val :lambda-list '(m))
(cl:defmethod vely-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:vely-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:vely instead.")
  (vely m))

(cl:ensure-generic-function 'velz-val :lambda-list '(m))
(cl:defmethod velz-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:velz-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:velz instead.")
  (velz m))

(cl:ensure-generic-function 'accx-val :lambda-list '(m))
(cl:defmethod accx-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:accx-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:accx instead.")
  (accx m))

(cl:ensure-generic-function 'accy-val :lambda-list '(m))
(cl:defmethod accy-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:accy-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:accy instead.")
  (accy m))

(cl:ensure-generic-function 'accz-val :lambda-list '(m))
(cl:defmethod accz-val ((m <RadarTrackContents>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ti_mmwave_tracker_rospkg-msg:accz-val is deprecated.  Use ti_mmwave_tracker_rospkg-msg:accz instead.")
  (accz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarTrackContents>) ostream)
  "Serializes a message object of type '<RadarTrackContents>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tid)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vely))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarTrackContents>) istream)
  "Deserializes a message object of type '<RadarTrackContents>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tid)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vely) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarTrackContents>)))
  "Returns string type for a message object of type '<RadarTrackContents>"
  "ti_mmwave_tracker_rospkg/RadarTrackContents")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarTrackContents)))
  "Returns string type for a message object of type 'RadarTrackContents"
  "ti_mmwave_tracker_rospkg/RadarTrackContents")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarTrackContents>)))
  "Returns md5sum for a message object of type '<RadarTrackContents>"
  "3199e7a7c9d764018ec54a328692cdc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarTrackContents)))
  "Returns md5sum for a message object of type 'RadarTrackContents"
  "3199e7a7c9d764018ec54a328692cdc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarTrackContents>)))
  "Returns full string definition for message of type '<RadarTrackContents>"
  (cl:format cl:nil "Header header~%uint32 tid~%float32 posx~%float32 posy~%float32 posz~%float32 velx~%float32 vely~%float32 velz~%float32 accx~%float32 accy~%float32 accz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarTrackContents)))
  "Returns full string definition for message of type 'RadarTrackContents"
  (cl:format cl:nil "Header header~%uint32 tid~%float32 posx~%float32 posy~%float32 posz~%float32 velx~%float32 vely~%float32 velz~%float32 accx~%float32 accy~%float32 accz~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarTrackContents>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarTrackContents>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarTrackContents
    (cl:cons ':header (header msg))
    (cl:cons ':tid (tid msg))
    (cl:cons ':posx (posx msg))
    (cl:cons ':posy (posy msg))
    (cl:cons ':posz (posz msg))
    (cl:cons ':velx (velx msg))
    (cl:cons ':vely (vely msg))
    (cl:cons ':velz (velz msg))
    (cl:cons ':accx (accx msg))
    (cl:cons ':accy (accy msg))
    (cl:cons ':accz (accz msg))
))
