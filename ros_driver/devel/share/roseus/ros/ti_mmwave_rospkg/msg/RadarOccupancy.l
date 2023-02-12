;; Auto-generated. Do not edit!


(when (boundp 'ti_mmwave_rospkg::RadarOccupancy)
  (if (not (find-package "TI_MMWAVE_ROSPKG"))
    (make-package "TI_MMWAVE_ROSPKG"))
  (shadow 'RadarOccupancy (find-package "TI_MMWAVE_ROSPKG")))
(unless (find-package "TI_MMWAVE_ROSPKG::RADAROCCUPANCY")
  (make-package "TI_MMWAVE_ROSPKG::RADAROCCUPANCY"))

(in-package "ROS")
;;//! \htmlinclude RadarOccupancy.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ti_mmwave_rospkg::RadarOccupancy
  :super ros::object
  :slots (_header _state ))

(defmethod ti_mmwave_rospkg::RadarOccupancy
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ti_mmwave_rospkg::RadarOccupancy :md5sum-) "461b1067e1ee73ecfebc21c633ae913d")
(setf (get ti_mmwave_rospkg::RadarOccupancy :datatype-) "ti_mmwave_rospkg/RadarOccupancy")
(setf (get ti_mmwave_rospkg::RadarOccupancy :definition-)
      "Header header
uint32 state
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



(provide :ti_mmwave_rospkg/RadarOccupancy "461b1067e1ee73ecfebc21c633ae913d")


