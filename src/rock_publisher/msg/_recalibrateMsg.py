"""autogenerated by genpy from rock_publisher/recalibrateMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg
import rock_publisher.msg
import sensor_msgs.msg

class recalibrateMsg(genpy.Message):
  _md5sum = "ef610363f297374bacad9ee0e5b9e6cf"
  _type = "rock_publisher/recalibrateMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """imgData data
sensor_msgs/CompressedImage img

================================================================================
MSG: rock_publisher/imgData
int32 x
int32 y
int32 width
int32 height
colorRGBA color
int32 cameraID

================================================================================
MSG: rock_publisher/colorRGBA
float32 r
float32 g
float32 b
float32 a

================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

"""
  __slots__ = ['data','img']
  _slot_types = ['rock_publisher/imgData','sensor_msgs/CompressedImage']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       data,img

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(recalibrateMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.data is None:
        self.data = rock_publisher.msg.imgData()
      if self.img is None:
        self.img = sensor_msgs.msg.CompressedImage()
    else:
      self.data = rock_publisher.msg.imgData()
      self.img = sensor_msgs.msg.CompressedImage()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_4i4fi3I.pack(_x.data.x, _x.data.y, _x.data.width, _x.data.height, _x.data.color.r, _x.data.color.g, _x.data.color.b, _x.data.color.a, _x.data.cameraID, _x.img.header.seq, _x.img.header.stamp.secs, _x.img.header.stamp.nsecs))
      _x = self.img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.img.format
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.data is None:
        self.data = rock_publisher.msg.imgData()
      if self.img is None:
        self.img = sensor_msgs.msg.CompressedImage()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.data.x, _x.data.y, _x.data.width, _x.data.height, _x.data.color.r, _x.data.color.g, _x.data.color.b, _x.data.color.a, _x.data.cameraID, _x.img.header.seq, _x.img.header.stamp.secs, _x.img.header.stamp.nsecs,) = _struct_4i4fi3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.img.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img.format = str[start:end].decode('utf-8')
      else:
        self.img.format = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img.data = str[start:end].decode('utf-8')
      else:
        self.img.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_4i4fi3I.pack(_x.data.x, _x.data.y, _x.data.width, _x.data.height, _x.data.color.r, _x.data.color.g, _x.data.color.b, _x.data.color.a, _x.data.cameraID, _x.img.header.seq, _x.img.header.stamp.secs, _x.img.header.stamp.nsecs))
      _x = self.img.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.img.format
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.img.data
      length = len(_x)
      # - if encoded as a list instead, serialize as bytes instead of string
      if type(_x) in [list, tuple]:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.data is None:
        self.data = rock_publisher.msg.imgData()
      if self.img is None:
        self.img = sensor_msgs.msg.CompressedImage()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.data.x, _x.data.y, _x.data.width, _x.data.height, _x.data.color.r, _x.data.color.g, _x.data.color.b, _x.data.color.a, _x.data.cameraID, _x.img.header.seq, _x.img.header.stamp.secs, _x.img.header.stamp.nsecs,) = _struct_4i4fi3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.img.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img.format = str[start:end].decode('utf-8')
      else:
        self.img.format = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.img.data = str[start:end].decode('utf-8')
      else:
        self.img.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4i4fi3I = struct.Struct("<4i4fi3I")
