"""autogenerated by genpy from rock_publisher/imgDataArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rock_publisher.msg

class imgDataArray(genpy.Message):
  _md5sum = "203e50542367a4a58cac7ab553215738"
  _type = "rock_publisher/imgDataArray"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """imgData[] rockData
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

"""
  __slots__ = ['rockData']
  _slot_types = ['rock_publisher/imgData[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       rockData

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(imgDataArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.rockData is None:
        self.rockData = []
    else:
      self.rockData = []

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
      length = len(self.rockData)
      buff.write(_struct_I.pack(length))
      for val1 in self.rockData:
        _x = val1
        buff.write(_struct_4i.pack(_x.x, _x.y, _x.width, _x.height))
        _v1 = val1.color
        _x = _v1
        buff.write(_struct_4f.pack(_x.r, _x.g, _x.b, _x.a))
        buff.write(_struct_i.pack(val1.cameraID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.rockData is None:
        self.rockData = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.rockData = []
      for i in range(0, length):
        val1 = rock_publisher.msg.imgData()
        _x = val1
        start = end
        end += 16
        (_x.x, _x.y, _x.width, _x.height,) = _struct_4i.unpack(str[start:end])
        _v2 = val1.color
        _x = _v2
        start = end
        end += 16
        (_x.r, _x.g, _x.b, _x.a,) = _struct_4f.unpack(str[start:end])
        start = end
        end += 4
        (val1.cameraID,) = _struct_i.unpack(str[start:end])
        self.rockData.append(val1)
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
      length = len(self.rockData)
      buff.write(_struct_I.pack(length))
      for val1 in self.rockData:
        _x = val1
        buff.write(_struct_4i.pack(_x.x, _x.y, _x.width, _x.height))
        _v3 = val1.color
        _x = _v3
        buff.write(_struct_4f.pack(_x.r, _x.g, _x.b, _x.a))
        buff.write(_struct_i.pack(val1.cameraID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.rockData is None:
        self.rockData = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.rockData = []
      for i in range(0, length):
        val1 = rock_publisher.msg.imgData()
        _x = val1
        start = end
        end += 16
        (_x.x, _x.y, _x.width, _x.height,) = _struct_4i.unpack(str[start:end])
        _v4 = val1.color
        _x = _v4
        start = end
        end += 16
        (_x.r, _x.g, _x.b, _x.a,) = _struct_4f.unpack(str[start:end])
        start = end
        end += 4
        (val1.cameraID,) = _struct_i.unpack(str[start:end])
        self.rockData.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4f = struct.Struct("<4f")
_struct_i = struct.Struct("<i")
_struct_4i = struct.Struct("<4i")
