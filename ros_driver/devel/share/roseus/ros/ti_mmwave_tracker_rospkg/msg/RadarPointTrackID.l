;; Auto-generated. Do not edit!


(when (boundp 'ti_mmwave_tracker_rospkg::RadarPointTrackID)
  (if (not (find-package "TI_MMWAVE_TRACKER_ROSPKG"))
    (make-package "TI_MMWAVE_TRACKER_ROSPKG"))
  (shadow 'RadarPointTrackID (find-package "TI_MMWAVE_TRACKER_ROSPKG")))
(unless (find-package "TI_MMWAVE_TRACKER_ROSPKG::RADARPOINTTRACKID")
  (make-package "TI_MMWAVE_TRACKER_ROSPKG::RADARPOINTTRACKID"))

(in-package "ROS")
;;//! \htmlinclude RadarPointTrackID.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ti_mmwave_tracker_rospkg::RadarPointTrackID
  :super ros::object
  :slots (_header _tid ))

(defmethod ti_mmwave_tracker_rospkg::RadarPointTrackID
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tid __tid) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tid (round __tid))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _tid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _tid
       (write-byte _tid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _tid
     (setq _tid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ti_mmwave_tracker_rospkg::RadarPointTrackID :md5sum-) "c7518afac70459a691ba924d05457d35")
(setf (get ti_mmwave_tracker_rospkg::RadarPointTrackID :datatype-) "ti_mmwave_tracker_rospkg/RadarPointTrackID")
(setf (get ti_mmwave_tracker_rospkg::RadarPointTrackID :definition-)
      "Header header
uint8 tid

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



(provide :ti_mmwave_tracker_rospkg/RadarPointTrackID "c7518afac70459a691ba924d05457d35")


