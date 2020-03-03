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
local CastInfo = media_service_ttypes.CastInfo

CastInfoServiceClient = __TObject.new(__TClient, {
  __type = 'CastInfoServiceClient'
})

function CastInfoServiceClient:WriteCastInfo(req_id, cast_info_id, name, gender, intro, carrier)
  self:send_WriteCastInfo(req_id, cast_info_id, name, gender, intro, carrier)
  return self:recv_WriteCastInfo(req_id, cast_info_id, name, gender, intro, carrier)
end

function CastInfoServiceClient:send_WriteCastInfo(req_id, cast_info_id, name, gender, intro, carrier)
  self.oprot:writeMessageBegin('WriteCastInfo', TMessageType.CALL, self._seqid)
  local args = WriteCastInfo_args:new{}
  args.req_id = req_id
  args.cast_info_id = cast_info_id
  args.name = name
  args.gender = gender
  args.intro = intro
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function CastInfoServiceClient:recv_WriteCastInfo(req_id, cast_info_id, name, gender, intro, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = WriteCastInfo_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function CastInfoServiceClient:ReadCastInfo(req_id, cast_ids, carrier)
  self:send_ReadCastInfo(req_id, cast_ids, carrier)
  return self:recv_ReadCastInfo(req_id, cast_ids, carrier)
end

function CastInfoServiceClient:send_ReadCastInfo(req_id, cast_ids, carrier)
  self.oprot:writeMessageBegin('ReadCastInfo', TMessageType.CALL, self._seqid)
  local args = ReadCastInfo_args:new{}
  args.req_id = req_id
  args.cast_ids = cast_ids
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function CastInfoServiceClient:recv_ReadCastInfo(req_id, cast_ids, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = ReadCastInfo_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end
CastInfoServiceIface = __TObject:new{
  __type = 'CastInfoServiceIface'
}


CastInfoServiceProcessor = __TObject.new(__TProcessor
, {
 __type = 'CastInfoServiceProcessor'
})

function CastInfoServiceProcessor:process(iprot, oprot, server_ctx)
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

function CastInfoServiceProcessor:process_WriteCastInfo(seqid, iprot, oprot, server_ctx)
  local args = WriteCastInfo_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = WriteCastInfo_result:new{}
  local status, res = pcall(self.handler.WriteCastInfo, self.handler, args.req_id, args.cast_info_id, args.name, args.gender, args.intro, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('WriteCastInfo', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function CastInfoServiceProcessor:process_ReadCastInfo(seqid, iprot, oprot, server_ctx)
  local args = ReadCastInfo_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = ReadCastInfo_result:new{}
  local status, res = pcall(self.handler.ReadCastInfo, self.handler, args.req_id, args.cast_ids, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('ReadCastInfo', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

-- HELPER FUNCTIONS AND STRUCTURES

WriteCastInfo_args = __TObject:new{
  req_id,
  cast_info_id,
  name,
  gender,
  intro,
  carrier
}

function WriteCastInfo_args:read(iprot)
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
        self.cast_info_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.name = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.BOOL then
        self.gender = iprot:readBool()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.STRING then
        self.intro = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype223, _vtype224, _size222 = iprot:readMapBegin() 
        for _i=1,_size222 do
          local _key226 = iprot:readString()
          local _val227 = iprot:readString()
          self.carrier[_key226] = _val227
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

function WriteCastInfo_args:write(oprot)
  oprot:writeStructBegin('WriteCastInfo_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.cast_info_id ~= nil then
    oprot:writeFieldBegin('cast_info_id', TType.I64, 2)
    oprot:writeI64(self.cast_info_id)
    oprot:writeFieldEnd()
  end
  if self.name ~= nil then
    oprot:writeFieldBegin('name', TType.STRING, 3)
    oprot:writeString(self.name)
    oprot:writeFieldEnd()
  end
  if self.gender ~= nil then
    oprot:writeFieldBegin('gender', TType.BOOL, 4)
    oprot:writeBool(self.gender)
    oprot:writeFieldEnd()
  end
  if self.intro ~= nil then
    oprot:writeFieldBegin('intro', TType.STRING, 5)
    oprot:writeString(self.intro)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 6)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter228,viter229 in pairs(self.carrier) do
      oprot:writeString(kiter228)
      oprot:writeString(viter229)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

WriteCastInfo_result = __TObject:new{
  success,
  se
}

function WriteCastInfo_result:read(iprot)
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

function WriteCastInfo_result:write(oprot)
  oprot:writeStructBegin('WriteCastInfo_result')
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

ReadCastInfo_args = __TObject:new{
  req_id,
  cast_ids,
  carrier
}

function ReadCastInfo_args:read(iprot)
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
      if ftype == TType.LIST then
        self.cast_ids = {}
        local _etype233, _size230 = iprot:readListBegin()
        for _i=1,_size230 do
          local _elem234 = iprot:readI64()
          table.insert(self.cast_ids, _elem234)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype236, _vtype237, _size235 = iprot:readMapBegin() 
        for _i=1,_size235 do
          local _key239 = iprot:readString()
          local _val240 = iprot:readString()
          self.carrier[_key239] = _val240
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

function ReadCastInfo_args:write(oprot)
  oprot:writeStructBegin('ReadCastInfo_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.cast_ids ~= nil then
    oprot:writeFieldBegin('cast_ids', TType.LIST, 2)
    oprot:writeListBegin(TType.I64, #self.cast_ids)
    for _,iter241 in ipairs(self.cast_ids) do
      oprot:writeI64(iter241)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 3)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter242,viter243 in pairs(self.carrier) do
      oprot:writeString(kiter242)
      oprot:writeString(viter243)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

ReadCastInfo_result = __TObject:new{
  success,
  se
}

function ReadCastInfo_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = CastInfoListRpcResponse:new{}
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

function ReadCastInfo_result:write(oprot)
  oprot:writeStructBegin('ReadCastInfo_result')
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

return CastInfoServiceClient