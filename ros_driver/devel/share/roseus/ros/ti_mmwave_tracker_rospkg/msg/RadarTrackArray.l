;; Auto-generated. Do not edit!


(when (boundp 'ti_mmwave_tracker_rospkg::RadarTrackArray)
  (if (not (find-package "TI_MMWAVE_TRACKER_ROSPKG"))
    (make-package "TI_MMWAVE_TRACKER_ROSPKG"))
  (shadow 'RadarTrackArray (find-package "TI_MMWAVE_TRACKER_ROSPKG")))
(unless (find-package "TI_MMWAVE_TRACKER_ROSPKG::RADARTRACKARRAY")
  (make-package "TI_MMWAVE_TRACKER_ROSPKG::RADARTRACKARRAY"))

(in-package "ROS")
;;//! \htmlinclude RadarTrackArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ti_mmwave_tracker_rospkg::RadarTrackArray
  :super ros::object
  :slots (_header _num_tracks _track ))

(defmethod ti_mmwave_tracker_rospkg::RadarTrackArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:num_tracks __num_tracks) 0)
    ((:track __track) (let (r) (dotimes (i 0) (push (instance ti_mmwave_tracker_rospkg::RadarTrackContents :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _num_tracks (round __num_tracks))
   (setq _track __track)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:num_tracks
   (&optional __num_tracks)
   (if __num_tracks (setq _num_tracks __num_tracks)) _num_tracks)
  (:track
   (&rest __track)
   (if (keywordp (car __track))
       (send* _track __track)
     (progn
       (if __track (setq _track (car __track)))
       _track)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _num_tracks
    4
    ;; ti_mmwave_tracker_rospkg/RadarTrackContents[] _track
    (apply #'+ (send-all _track :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _num_tracks
       (write-long _num_tracks s)
     ;; ti_mmwave_tracker_rospkg/RadarTrackContents[] _track
     (write-long (length _track) s)
     (dolist (elem _track)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _num_tracks
     (setq _num_tracks (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ti_mmwave_tracker_rospkg/RadarTrackContents[] _track
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _track (let (r) (dotimes (i n) (push (instance ti_mmwave_tracker_rospkg::RadarTrackContents :init) r)) r))
     (dolist (elem- _track)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ti_mmwave_tracker_rospkg::RadarTrackArray :md5sum-) "4c57d9f86b51b7fa5872677d0abca61c")
(setf (get ti_mmwave_tracker_rospkg::RadarTrackArray :datatype-) "ti_mmwave_tracker_rospkg/RadarTrackArray")
(setf (get ti_mmwave_tracker_rospkg::RadarTrackArray :definition-)
      "Header header
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

")



(provide :ti_mmwave_tracker_rospkg/RadarTrackArray "4c57d9f86b51b7fa5872677d0abca61c")


