; Auto-generated. Do not edit!


(cl:in-package weather_pkg-msg)


;//! \htmlinclude weather.msg.html

(cl:defclass <weather> (roslisp-msg-protocol:ros-message)
  ((zipcode
    :reader zipcode
    :initarg :zipcode
    :type cl:string
    :initform "")
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0)
   (cloud_cover
    :reader cloud_cover
    :initarg :cloud_cover
    :type cl:string
    :initform "")
   (pressure
    :reader pressure
    :initarg :pressure
    :type cl:float
    :initform 0.0)
   (dew_point
    :reader dew_point
    :initarg :dew_point
    :type cl:float
    :initform 0.0))
)

(cl:defclass weather (<weather>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <weather>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'weather)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name weather_pkg-msg:<weather> is deprecated: use weather_pkg-msg:weather instead.")))

(cl:ensure-generic-function 'zipcode-val :lambda-list '(m))
(cl:defmethod zipcode-val ((m <weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_pkg-msg:zipcode-val is deprecated.  Use weather_pkg-msg:zipcode instead.")
  (zipcode m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_pkg-msg:temp-val is deprecated.  Use weather_pkg-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'cloud_cover-val :lambda-list '(m))
(cl:defmethod cloud_cover-val ((m <weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_pkg-msg:cloud_cover-val is deprecated.  Use weather_pkg-msg:cloud_cover instead.")
  (cloud_cover m))

(cl:ensure-generic-function 'pressure-val :lambda-list '(m))
(cl:defmethod pressure-val ((m <weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_pkg-msg:pressure-val is deprecated.  Use weather_pkg-msg:pressure instead.")
  (pressure m))

(cl:ensure-generic-function 'dew_point-val :lambda-list '(m))
(cl:defmethod dew_point-val ((m <weather>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader weather_pkg-msg:dew_point-val is deprecated.  Use weather_pkg-msg:dew_point instead.")
  (dew_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <weather>) ostream)
  "Serializes a message object of type '<weather>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zipcode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zipcode))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cloud_cover))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cloud_cover))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dew_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <weather>) istream)
  "Deserializes a message object of type '<weather>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zipcode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zipcode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cloud_cover) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cloud_cover) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dew_point) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<weather>)))
  "Returns string type for a message object of type '<weather>"
  "weather_pkg/weather")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'weather)))
  "Returns string type for a message object of type 'weather"
  "weather_pkg/weather")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<weather>)))
  "Returns md5sum for a message object of type '<weather>"
  "dade398ebd0cc7517b4e568c4f3a4764")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'weather)))
  "Returns md5sum for a message object of type 'weather"
  "dade398ebd0cc7517b4e568c4f3a4764")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<weather>)))
  "Returns full string definition for message of type '<weather>"
  (cl:format cl:nil "string zipcode~%float32 temp~%string cloud_cover~%float32 pressure~%float32 dew_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'weather)))
  "Returns full string definition for message of type 'weather"
  (cl:format cl:nil "string zipcode~%float32 temp~%string cloud_cover~%float32 pressure~%float32 dew_point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <weather>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'zipcode))
     4
     4 (cl:length (cl:slot-value msg 'cloud_cover))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <weather>))
  "Converts a ROS message object to a list"
  (cl:list 'weather
    (cl:cons ':zipcode (zipcode msg))
    (cl:cons ':temp (temp msg))
    (cl:cons ':cloud_cover (cloud_cover msg))
    (cl:cons ':pressure (pressure msg))
    (cl:cons ':dew_point (dew_point msg))
))
