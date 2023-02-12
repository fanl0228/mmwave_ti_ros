;; Auto-generated. Do not edit!


(when (boundp 'ti_mmwave_tracker_rospkg::RadarTrackContents)
  (if (not (find-package "TI_MMWAVE_TRACKER_ROSPKG"))
    (make-package "TI_MMWAVE_TRACKER_ROSPKG"))
  (shadow 'RadarTrackContents (find-package "TI_MMWAVE_TRACKER_ROSPKG")))
(unless (find-package "TI_MMWAVE_TRACKER_ROSPKG::RADARTRACKCONTENTS")
  (make-package "TI_MMWAVE_TRACKER_ROSPKG::RADARTRACKCONTENTS"))

(in-package "ROS")
;;//! \htmlinclude RadarTrackContents.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ti_mmwave_tracker_rospkg::RadarTrackContents
  :super ros::object
  :slots (_header _tid _posx _posy _posz _velx _vely _velz _accx _accy _accz ))

(defmethod ti_mmwave_tracker_rospkg::RadarTrackContents
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tid __tid) 0)
    ((:posx __posx) 0.0)
    ((:posy __posy) 0.0)
    ((:posz __posz) 0.0)
    ((:velx __velx) 0.0)
    ((:vely __vely) 0.0)
    ((:velz __velz) 0.0)
    ((:accx __accx) 0.0)
    ((:accy __accy) 0.0)
    ((:accz __accz) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tid (round __tid))
   (setq _posx (float __posx))
   (setq _posy (float __posy))
   (setq _posz (float __posz))
   (setq _velx (float __velx))
   (setq _vely (float __vely))
   (setq _velz (float __velz))
   (setq _accx (float __accx))
   (setq _accy (float __accy))
   (setq _accz (float __accz))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tid
   (&optional __tid)
   (if __tid (setq _tid __tid)) _tid)
  (:posx
   (&optional __posx)
   (if __posx (setq _posx __posx)) _posx)
  (:posy
   (&optional __posy)
   (if __posy (setq _posy __posy)) _posy)
  (:posz
   (&optional __posz)
   (if __posz (setq _posz __posz)) _posz)
  (:velx
   (&optional __velx)
   (if __velx (setq _velx __velx)) _velx)
  (:vely
   (&optional __vely)
   (if __vely (setq _vely __vely)) _vely)
  (:velz
   (&optional __velz)
   (if __velz (setq _velz __velz)) _velz)
  (:accx
   (&optional __accx)
   (if __accx (setq _accx __accx)) _accx)
  (:accy
   (&optional __accy)
   (if __accy (setq _accy __accy)) _accy)
  (:accz
   (&optional __accz)
   (if __accz (setq _accz __accz)) _accz)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _tid
    4
    ;; float32 _posx
    4
    ;; float32 _posy
    4
    ;; float32 _posz
    4
    ;; float32 _velx
    4
    ;; float32 _vely
    4
    ;; float32 _velz
    4
    ;; float32 _accx
    4
    ;; float32 _accy
    4
    ;; float32 _accz
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _tid
       (write-long _tid s)
     ;; float32 _posx
       (sys::poke _posx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posy
       (sys::poke _posy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posz
       (sys::poke _posz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velx
       (sys::poke _velx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vely
       (sys::poke _vely (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _velz
       (sys::poke _velz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accx
       (sys::poke _accx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accy
       (sys::poke _accy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accz
       (sys::poke _accz (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _tid
     (setq _tid (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _posx
     (setq _posx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posy
     (setq _posy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posz
     (setq _posz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velx
     (setq _velx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vely
     (setq _vely (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _velz
     (setq _velz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accx
     (setq _accx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accy
     (setq _accy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accz
     (setq _accz (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ti_mmwave_tracker_rospkg::RadarTrackContents :md5sum-) "3199e7a7c9d764018ec54a328692cdc1")
(setf (get ti_mmwave_tracker_rospkg::RadarTrackContents :datatype-) "ti_mmwave_tracker_rospkg/RadarTrackContents")
(setf (get ti_mmwave_tracker_rospkg::RadarTrackContents :definition-)
      "Header header
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

")



(provide :ti_mmwave_tracker_rospkg/RadarTrackContents "3199e7a7c9d764018ec54a328692cdc1")


