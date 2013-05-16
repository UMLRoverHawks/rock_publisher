; Auto-generated. Do not edit!


(cl:in-package rock_publisher-msg)


;//! \htmlinclude imgData.msg.html

(cl:defclass <imgData> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform "")
   (cameraID
    :reader cameraID
    :initarg :cameraID
    :type cl:string
    :initform ""))
)

(cl:defclass imgData (<imgData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imgData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imgData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rock_publisher-msg:<imgData> is deprecated: use rock_publisher-msg:imgData instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:x-val is deprecated.  Use rock_publisher-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:y-val is deprecated.  Use rock_publisher-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:width-val is deprecated.  Use rock_publisher-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:height-val is deprecated.  Use rock_publisher-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:color-val is deprecated.  Use rock_publisher-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'cameraID-val :lambda-list '(m))
(cl:defmethod cameraID-val ((m <imgData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rock_publisher-msg:cameraID-val is deprecated.  Use rock_publisher-msg:cameraID instead.")
  (cameraID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imgData>) ostream)
  "Serializes a message object of type '<imgData>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cameraID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cameraID))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imgData>) istream)
  "Deserializes a message object of type '<imgData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cameraID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cameraID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imgData>)))
  "Returns string type for a message object of type '<imgData>"
  "rock_publisher/imgData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imgData)))
  "Returns string type for a message object of type 'imgData"
  "rock_publisher/imgData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imgData>)))
  "Returns md5sum for a message object of type '<imgData>"
  "309b5933a1eb0d60807fbae024f5c23d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imgData)))
  "Returns md5sum for a message object of type 'imgData"
  "309b5933a1eb0d60807fbae024f5c23d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imgData>)))
  "Returns full string definition for message of type '<imgData>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 width~%int32 height~%string color~%string cameraID~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imgData)))
  "Returns full string definition for message of type 'imgData"
  (cl:format cl:nil "int32 x~%int32 y~%int32 width~%int32 height~%string color~%string cameraID~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imgData>))
  (cl:+ 0
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'color))
     4 (cl:length (cl:slot-value msg 'cameraID))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imgData>))
  "Converts a ROS message object to a list"
  (cl:list 'imgData
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
    (cl:cons ':color (color msg))
    (cl:cons ':cameraID (cameraID msg))
))
