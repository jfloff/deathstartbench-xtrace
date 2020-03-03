--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--


local Thrift = require 'Thrift'
local TType = Thrift.TType
local TMessageType = Thrift.TMessageType
local __TObject = Thrift.__TObject
local TApplicationException = Thrift.TApplicationException
local __TClient = Thrift.__TClient
local __TProcessor = Thrift.__TProcessor
local ttype = Thrift.ttype
local ttable_size = Thrift.ttable_size
local media_service_ttypes = require 'media_service_ttypes'
local ServiceException = media_service_ttypes.ServiceException

UserServiceClient = __TObject.new(__TClient, {
  __type = 'UserServiceClient'
})

function UserServiceClient:RegisterUser(req_id, first_name, last_name, username, password, carrier)
  self:send_RegisterUser(req_id, first_name, last_name, username, password, carrier)
  return self:recv_RegisterUser(req_id, first_name, last_name, username, password, carrier)
end

function UserServiceClient:send_RegisterUser(req_id, first_name, last_name, username, password, carrier)
  self.oprot:writeMessageBegin('RegisterUser', TMessageType.CALL, self._seqid)
  local args = RegisterUser_args:new{}
  args.req_id = req_id
  args.first_name = first_name
  args.last_name = last_name
  args.username = username
  args.password = password
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_RegisterUser(req_id, first_name, last_name, username, password, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = RegisterUser_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function UserServiceClient:RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  self:send_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  return self:recv_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
end

function UserServiceClient:send_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  self.oprot:writeMessageBegin('RegisterUserWithId', TMessageType.CALL, self._seqid)
  local args = RegisterUserWithId_args:new{}
  args.req_id = req_id
  args.first_name = first_name
  args.last_name = last_name
  args.username = username
  args.password = password
  args.user_id = user_id
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_RegisterUserWithId(req_id, first_name, last_name, username, password, user_id, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = RegisterUserWithId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function UserServiceClient:Login(req_id, username, password, carrier)
  self:send_Login(req_id, username, password, carrier)
  return self:recv_Login(req_id, username, password, carrier)
end

function UserServiceClient:send_Login(req_id, username, password, carrier)
  self.oprot:writeMessageBegin('Login', TMessageType.CALL, self._seqid)
  local args = Login_args:new{}
  args.req_id = req_id
  args.username = username
  args.password = password
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_Login(req_id, username, password, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = Login_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function UserServiceClient:UploadUserWithUserId(req_id, user_id, carrier)
  self:send_UploadUserWithUserId(req_id, user_id, carrier)
  return self:recv_UploadUserWithUserId(req_id, user_id, carrier)
end

function UserServiceClient:send_UploadUserWithUserId(req_id, user_id, carrier)
  self.oprot:writeMessageBegin('UploadUserWithUserId', TMessageType.CALL, self._seqid)
  local args = UploadUserWithUserId_args:new{}
  args.req_id = req_id
  args.user_id = user_id
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_UploadUserWithUserId(req_id, user_id, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = UploadUserWithUserId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function UserServiceClient:UploadUserWithUsername(req_id, username, carrier)
  self:send_UploadUserWithUsername(req_id, username, carrier)
  return self:recv_UploadUserWithUsername(req_id, username, carrier)
end

function UserServiceClient:send_UploadUserWithUsername(req_id, username, carrier)
  self.oprot:writeMessageBegin('UploadUserWithUsername', TMessageType.CALL, self._seqid)
  local args = UploadUserWithUsername_args:new{}
  args.req_id = req_id
  args.username = username
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function UserServiceClient:recv_UploadUserWithUsername(req_id, username, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = UploadUserWithUsername_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end
UserServiceIface = __TObject:new{
  __type = 'UserServiceIface'
}


UserServiceProcessor = __TObject.new(__TProcessor
, {
 __type = 'UserServiceProcessor'
})

function UserServiceProcessor:process(iprot, oprot, server_ctx)
  local name, mtype, seqid = iprot:readMessageBegin()
  local func_name = 'process_' .. name
  if not self[func_name] or ttype(self[func_name]) ~= 'function' then
    iprot:skip(TType.STRUCT)
    iprot:readMessageEnd()
    x = TApplicationException:new{
      errorCode = TApplicationException.UNKNOWN_METHOD
    }
    oprot:writeMessageBegin(name, TMessageType.EXCEPTION, seqid)
    x:write(oprot)
    oprot:writeMessageEnd()
    oprot.trans:flush()
  else
    self[func_name](self, seqid, iprot, oprot, server_ctx)
  end
end

function UserServiceProcessor:process_RegisterUser(seqid, iprot, oprot, server_ctx)
  local args = RegisterUser_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = RegisterUser_result:new{}
  local status, res = pcall(self.handler.RegisterUser, self.handler, args.req_id, args.first_name, args.last_name, args.username, args.password, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('RegisterUser', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_RegisterUserWithId(seqid, iprot, oprot, server_ctx)
  local args = RegisterUserWithId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = RegisterUserWithId_result:new{}
  local status, res = pcall(self.handler.RegisterUserWithId, self.handler, args.req_id, args.first_name, args.last_name, args.username, args.password, args.user_id, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('RegisterUserWithId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_Login(seqid, iprot, oprot, server_ctx)
  local args = Login_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = Login_result:new{}
  local status, res = pcall(self.handler.Login, self.handler, args.req_id, args.username, args.password, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('Login', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_UploadUserWithUserId(seqid, iprot, oprot, server_ctx)
  local args = UploadUserWithUserId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = UploadUserWithUserId_result:new{}
  local status, res = pcall(self.handler.UploadUserWithUserId, self.handler, args.req_id, args.user_id, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('UploadUserWithUserId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function UserServiceProcessor:process_UploadUserWithUsername(seqid, iprot, oprot, server_ctx)
  local args = UploadUserWithUsername_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = UploadUserWithUsername_result:new{}
  local status, res = pcall(self.handler.UploadUserWithUsername, self.handler, args.req_id, args.username, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('UploadUserWithUsername', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

-- HELPER FUNCTIONS AND STRUCTURES

RegisterUser_args = __TObject:new{
  req_id,
  first_name,
  last_name,
  username,
  password,
  carrier
}

function RegisterUser_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.first_name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.last_name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.STRING then
        self.password = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype89, _vtype90, _size88 = iprot:readMapBegin() 
        for _i=1,_size88 do
          local _key92 = iprot:readString()
          local _val93 = iprot:readString()
          self.carrier[_key92] = _val93
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RegisterUser_args:write(oprot)
  oprot:writeStructBegin('RegisterUser_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.first_name ~= nil then
    oprot:writeFieldBegin('first_name', TType.STRING, 2)
    oprot:writeString(self.first_name)
    oprot:writeFieldEnd()
  end
  if self.last_name ~= nil then
    oprot:writeFieldBegin('last_name', TType.STRING, 3)
    oprot:writeString(self.last_name)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 4)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.password ~= nil then
    oprot:writeFieldBegin('password', TType.STRING, 5)
    oprot:writeString(self.password)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 6)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter94,viter95 in pairs(self.carrier) do
      oprot:writeString(kiter94)
      oprot:writeString(viter95)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

RegisterUser_result = __TObject:new{
  success,
  se
}

function RegisterUser_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = BaseRpcResponse:new{}
        self.success:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RegisterUser_result:write(oprot)
  oprot:writeStructBegin('RegisterUser_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.STRUCT, 0)
    self.success:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

RegisterUserWithId_args = __TObject:new{
  req_id,
  first_name,
  last_name,
  username,
  password,
  user_id,
  carrier
}

function RegisterUserWithId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.first_name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.last_name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.STRING then
        self.password = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 7 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype97, _vtype98, _size96 = iprot:readMapBegin() 
        for _i=1,_size96 do
          local _key100 = iprot:readString()
          local _val101 = iprot:readString()
          self.carrier[_key100] = _val101
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RegisterUserWithId_args:write(oprot)
  oprot:writeStructBegin('RegisterUserWithId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.first_name ~= nil then
    oprot:writeFieldBegin('first_name', TType.STRING, 2)
    oprot:writeString(self.first_name)
    oprot:writeFieldEnd()
  end
  if self.last_name ~= nil then
    oprot:writeFieldBegin('last_name', TType.STRING, 3)
    oprot:writeString(self.last_name)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 4)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.password ~= nil then
    oprot:writeFieldBegin('password', TType.STRING, 5)
    oprot:writeString(self.password)
    oprot:writeFieldEnd()
  end
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 6)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 7)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter102,viter103 in pairs(self.carrier) do
      oprot:writeString(kiter102)
      oprot:writeString(viter103)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

RegisterUserWithId_result = __TObject:new{
  success,
  se
}

function RegisterUserWithId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = BaseRpcResponse:new{}
        self.success:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RegisterUserWithId_result:write(oprot)
  oprot:writeStructBegin('RegisterUserWithId_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.STRUCT, 0)
    self.success:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

Login_args = __TObject:new{
  req_id,
  username,
  password,
  carrier
}

function Login_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.password = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype105, _vtype106, _size104 = iprot:readMapBegin() 
        for _i=1,_size104 do
          local _key108 = iprot:readString()
          local _val109 = iprot:readString()
          self.carrier[_key108] = _val109
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function Login_args:write(oprot)
  oprot:writeStructBegin('Login_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.password ~= nil then
    oprot:writeFieldBegin('password', TType.STRING, 3)
    oprot:writeString(self.password)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 4)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter110,viter111 in pairs(self.carrier) do
      oprot:writeString(kiter110)
      oprot:writeString(viter111)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

Login_result = __TObject:new{
  success,
  se
}

function Login_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = LoginRpcResponse:new{}
        self.success:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function Login_result:write(oprot)
  oprot:writeStructBegin('Login_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.STRUCT, 0)
    self.success:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

UploadUserWithUserId_args = __TObject:new{
  req_id,
  user_id,
  carrier
}

function UploadUserWithUserId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.I64 then
        self.user_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype113, _vtype114, _size112 = iprot:readMapBegin() 
        for _i=1,_size112 do
          local _key116 = iprot:readString()
          local _val117 = iprot:readString()
          self.carrier[_key116] = _val117
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UploadUserWithUserId_args:write(oprot)
  oprot:writeStructBegin('UploadUserWithUserId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.user_id ~= nil then
    oprot:writeFieldBegin('user_id', TType.I64, 2)
    oprot:writeI64(self.user_id)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 3)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter118,viter119 in pairs(self.carrier) do
      oprot:writeString(kiter118)
      oprot:writeString(viter119)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

UploadUserWithUserId_result = __TObject:new{
  success,
  se
}

function UploadUserWithUserId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = BaseRpcResponse:new{}
        self.success:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UploadUserWithUserId_result:write(oprot)
  oprot:writeStructBegin('UploadUserWithUserId_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.STRUCT, 0)
    self.success:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

UploadUserWithUsername_args = __TObject:new{
  req_id,
  username,
  carrier
}

function UploadUserWithUsername_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.username = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype121, _vtype122, _size120 = iprot:readMapBegin() 
        for _i=1,_size120 do
          local _key124 = iprot:readString()
          local _val125 = iprot:readString()
          self.carrier[_key124] = _val125
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UploadUserWithUsername_args:write(oprot)
  oprot:writeStructBegin('UploadUserWithUsername_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.username ~= nil then
    oprot:writeFieldBegin('username', TType.STRING, 2)
    oprot:writeString(self.username)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 3)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter126,viter127 in pairs(self.carrier) do
      oprot:writeString(kiter126)
      oprot:writeString(viter127)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

UploadUserWithUsername_result = __TObject:new{
  success,
  se
}

function UploadUserWithUsername_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = BaseRpcResponse:new{}
        self.success:read(iprot)
      else
        iprot:skip(ftype)
      end
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UploadUserWithUsername_result:write(oprot)
  oprot:writeStructBegin('UploadUserWithUsername_result')
  if self.success ~= nil then
    oprot:writeFieldBegin('success', TType.STRUCT, 0)
    self.success:write(oprot)
    oprot:writeFieldEnd()
  end
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

return UserServiceClient