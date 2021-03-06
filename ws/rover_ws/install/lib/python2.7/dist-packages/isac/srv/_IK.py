# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from isac/IKRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import isac.msg
import std_msgs.msg

class IKRequest(genpy.Message):
  _md5sum = "b0255036ee48d2ab6aae02ed3b772509"
  _type = "isac/IKRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """ArmAngles arm_angle_initial
ArmPosition position

================================================================================
MSG: isac/ArmAngles
Header header

float32 shoulder
float32 elbow
float32 wrist
float32 gripper
float32 base
float32 wrist_rot
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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: isac/ArmPosition
Header header

float32 x
float32 y
float32 z
"""
  __slots__ = ['arm_angle_initial','position']
  _slot_types = ['isac/ArmAngles','isac/ArmPosition']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       arm_angle_initial,position

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IKRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.arm_angle_initial is None:
        self.arm_angle_initial = isac.msg.ArmAngles()
      if self.position is None:
        self.position = isac.msg.ArmPosition()
    else:
      self.arm_angle_initial = isac.msg.ArmAngles()
      self.position = isac.msg.ArmPosition()

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
      buff.write(_get_struct_3I().pack(_x.arm_angle_initial.header.seq, _x.arm_angle_initial.header.stamp.secs, _x.arm_angle_initial.header.stamp.nsecs))
      _x = self.arm_angle_initial.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6f3I().pack(_x.arm_angle_initial.shoulder, _x.arm_angle_initial.elbow, _x.arm_angle_initial.wrist, _x.arm_angle_initial.gripper, _x.arm_angle_initial.base, _x.arm_angle_initial.wrist_rot, _x.position.header.seq, _x.position.header.stamp.secs, _x.position.header.stamp.nsecs))
      _x = self.position.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3f().pack(_x.position.x, _x.position.y, _x.position.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.arm_angle_initial is None:
        self.arm_angle_initial = isac.msg.ArmAngles()
      if self.position is None:
        self.position = isac.msg.ArmPosition()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.arm_angle_initial.header.seq, _x.arm_angle_initial.header.stamp.secs, _x.arm_angle_initial.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.arm_angle_initial.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.arm_angle_initial.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.arm_angle_initial.shoulder, _x.arm_angle_initial.elbow, _x.arm_angle_initial.wrist, _x.arm_angle_initial.gripper, _x.arm_angle_initial.base, _x.arm_angle_initial.wrist_rot, _x.position.header.seq, _x.position.header.stamp.secs, _x.position.header.stamp.nsecs,) = _get_struct_6f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.position.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.position.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.position.x, _x.position.y, _x.position.z,) = _get_struct_3f().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.arm_angle_initial.header.seq, _x.arm_angle_initial.header.stamp.secs, _x.arm_angle_initial.header.stamp.nsecs))
      _x = self.arm_angle_initial.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6f3I().pack(_x.arm_angle_initial.shoulder, _x.arm_angle_initial.elbow, _x.arm_angle_initial.wrist, _x.arm_angle_initial.gripper, _x.arm_angle_initial.base, _x.arm_angle_initial.wrist_rot, _x.position.header.seq, _x.position.header.stamp.secs, _x.position.header.stamp.nsecs))
      _x = self.position.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3f().pack(_x.position.x, _x.position.y, _x.position.z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.arm_angle_initial is None:
        self.arm_angle_initial = isac.msg.ArmAngles()
      if self.position is None:
        self.position = isac.msg.ArmPosition()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.arm_angle_initial.header.seq, _x.arm_angle_initial.header.stamp.secs, _x.arm_angle_initial.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.arm_angle_initial.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.arm_angle_initial.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 36
      (_x.arm_angle_initial.shoulder, _x.arm_angle_initial.elbow, _x.arm_angle_initial.wrist, _x.arm_angle_initial.gripper, _x.arm_angle_initial.base, _x.arm_angle_initial.wrist_rot, _x.position.header.seq, _x.position.header.stamp.secs, _x.position.header.stamp.nsecs,) = _get_struct_6f3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.position.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.position.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.position.x, _x.position.y, _x.position.z,) = _get_struct_3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f3I = None
def _get_struct_6f3I():
    global _struct_6f3I
    if _struct_6f3I is None:
        _struct_6f3I = struct.Struct("<6f3I")
    return _struct_6f3I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from isac/IKResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import isac.msg
import std_msgs.msg

class IKResponse(genpy.Message):
  _md5sum = "a56790ec5944d063a1e86e682138c9c0"
  _type = "isac/IKResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """ArmAngles arm_angle_final

================================================================================
MSG: isac/ArmAngles
Header header

float32 shoulder
float32 elbow
float32 wrist
float32 gripper
float32 base
float32 wrist_rot
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
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['arm_angle_final']
  _slot_types = ['isac/ArmAngles']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       arm_angle_final

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(IKResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.arm_angle_final is None:
        self.arm_angle_final = isac.msg.ArmAngles()
    else:
      self.arm_angle_final = isac.msg.ArmAngles()

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
      buff.write(_get_struct_3I().pack(_x.arm_angle_final.header.seq, _x.arm_angle_final.header.stamp.secs, _x.arm_angle_final.header.stamp.nsecs))
      _x = self.arm_angle_final.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6f().pack(_x.arm_angle_final.shoulder, _x.arm_angle_final.elbow, _x.arm_angle_final.wrist, _x.arm_angle_final.gripper, _x.arm_angle_final.base, _x.arm_angle_final.wrist_rot))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.arm_angle_final is None:
        self.arm_angle_final = isac.msg.ArmAngles()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.arm_angle_final.header.seq, _x.arm_angle_final.header.stamp.secs, _x.arm_angle_final.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.arm_angle_final.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.arm_angle_final.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.arm_angle_final.shoulder, _x.arm_angle_final.elbow, _x.arm_angle_final.wrist, _x.arm_angle_final.gripper, _x.arm_angle_final.base, _x.arm_angle_final.wrist_rot,) = _get_struct_6f().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.arm_angle_final.header.seq, _x.arm_angle_final.header.stamp.secs, _x.arm_angle_final.header.stamp.nsecs))
      _x = self.arm_angle_final.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_6f().pack(_x.arm_angle_final.shoulder, _x.arm_angle_final.elbow, _x.arm_angle_final.wrist, _x.arm_angle_final.gripper, _x.arm_angle_final.base, _x.arm_angle_final.wrist_rot))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.arm_angle_final is None:
        self.arm_angle_final = isac.msg.ArmAngles()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.arm_angle_final.header.seq, _x.arm_angle_final.header.stamp.secs, _x.arm_angle_final.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.arm_angle_final.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.arm_angle_final.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.arm_angle_final.shoulder, _x.arm_angle_final.elbow, _x.arm_angle_final.wrist, _x.arm_angle_final.gripper, _x.arm_angle_final.base, _x.arm_angle_final.wrist_rot,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
class IK(object):
  _type          = 'isac/IK'
  _md5sum = 'e04c1b58bd7c12bbba9333174a823636'
  _request_class  = IKRequest
  _response_class = IKResponse
