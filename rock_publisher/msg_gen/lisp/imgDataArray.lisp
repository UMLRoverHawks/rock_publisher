; Auto-generated. Do not edit!


(cl:in-package rock_publisher-msg)


;//! \htmlinclude imgDataArray.msg.html

(cl:defclass <imgDataArray> (roslisp-msg-protocol:ros-message)
  ((rockData
    :reader rockData
    :initarg :rockData
    :type (cl:vector rock_publisher-msg:imgData)
   :initform (cl:make-array 0 :element-type 'rock_publisher-msg:imgData :initial-element (cl:make-instance 'rock_publisher-msg:imgData))))
)

(cl:defclass imgDataArray (<imgDataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imgDataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imgDataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rock_publisher-msg:<imgDataArray> is deprecated: use rock_publisher-msg:imgDataArray instead.")))

(cl:ensure-generic-function 'rockData-val :lambda-list '(m))
(cl:defmethod rockData-val ((m <imgDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:rockData-val is deprecated.  Use rock_publisher-msg:rockData instead.")
  (rockData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imgDataArray>) ostream)
  "Serializes a message object of type '<imgDataArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rockData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'rockData))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imgDataArray>) istream)
  "Deserializes a message object of type '<imgDataArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rockData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rockData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rock_publisher-msg:imgData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imgDataArray>)))
  "Returns string type for a message object of type '<imgDataArray>"
  "rock_publisher/imgDataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imgDataArray)))
  "Returns string type for a message object of type 'imgDataArray"
  "rock_publisher/imgDataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imgDataArray>)))
  "Returns md5sum for a message object of type '<imgDataArray>"
  "32f266444187840836af15d5445ea6e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imgDataArray)))
  "Returns md5sum for a message object of type 'imgDataArray"
  "32f266444187840836af15d5445ea6e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imgDataArray>)))
  "Returns full string definition for message of type '<imgDataArray>"
  (cl:format cl:nil "imgData[] rockData~%================================================================================~%MSG: rock_publisher/imgData~%int32 x~%int32 y~%int32 width~%int32 height~%string color~%string cameraID~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imgDataArray)))
  "Returns full string definition for message of type 'imgDataArray"
  (cl:format cl:nil "imgData[] rockData~%================================================================================~%MSG: rock_publisher/imgData~%int32 x~%int32 y~%int32 width~%int32 height~%string color~%string cameraID~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imgDataArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rockData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imgDataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'imgDataArray
    (cl:cons ':rockData (rockData msg))
))
