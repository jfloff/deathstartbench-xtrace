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
local MovieInfo = media_service_ttypes.MovieInfo
local Cast = media_service_ttypes.Cast

MovieInfoServiceClient = __TObject.new(__TClient, {
  __type = 'MovieInfoServiceClient'
})

function MovieInfoServiceClient:WriteMovieInfo(req_id, movie_id, title, casts, plot_id, thumbnail_ids, photo_ids, video_ids, avg_rating, num_rating, carrier)
  self:send_WriteMovieInfo(req_id, movie_id, title, casts, plot_id, thumbnail_ids, photo_ids, video_ids, avg_rating, num_rating, carrier)
  return self:recv_WriteMovieInfo(req_id, movie_id, title, casts, plot_id, thumbnail_ids, photo_ids, video_ids, avg_rating, num_rating, carrier)
end

function MovieInfoServiceClient:send_WriteMovieInfo(req_id, movie_id, title, casts, plot_id, thumbnail_ids, photo_ids, video_ids, avg_rating, num_rating, carrier)
  self.oprot:writeMessageBegin('WriteMovieInfo', TMessageType.CALL, self._seqid)
  local args = WriteMovieInfo_args:new{}
  args.req_id = req_id
  args.movie_id = movie_id
  args.title = title
  args.casts = casts
  args.plot_id = plot_id
  args.thumbnail_ids = thumbnail_ids
  args.photo_ids = photo_ids
  args.video_ids = video_ids
  args.avg_rating = avg_rating
  args.num_rating = num_rating
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function MovieInfoServiceClient:recv_WriteMovieInfo(req_id, movie_id, title, casts, plot_id, thumbnail_ids, photo_ids, video_ids, avg_rating, num_rating, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = WriteMovieInfo_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function MovieInfoServiceClient:ReadMovieInfo(req_id, movie_id, carrier)
  self:send_ReadMovieInfo(req_id, movie_id, carrier)
  return self:recv_ReadMovieInfo(req_id, movie_id, carrier)
end

function MovieInfoServiceClient:send_ReadMovieInfo(req_id, movie_id, carrier)
  self.oprot:writeMessageBegin('ReadMovieInfo', TMessageType.CALL, self._seqid)
  local args = ReadMovieInfo_args:new{}
  args.req_id = req_id
  args.movie_id = movie_id
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function MovieInfoServiceClient:recv_ReadMovieInfo(req_id, movie_id, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = ReadMovieInfo_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end

function MovieInfoServiceClient:UpdateRating(req_id, movie_id, sum_uncommitted_rating, num_uncommitted_rating, carrier)
  self:send_UpdateRating(req_id, movie_id, sum_uncommitted_rating, num_uncommitted_rating, carrier)
  return self:recv_UpdateRating(req_id, movie_id, sum_uncommitted_rating, num_uncommitted_rating, carrier)
end

function MovieInfoServiceClient:send_UpdateRating(req_id, movie_id, sum_uncommitted_rating, num_uncommitted_rating, carrier)
  self.oprot:writeMessageBegin('UpdateRating', TMessageType.CALL, self._seqid)
  local args = UpdateRating_args:new{}
  args.req_id = req_id
  args.movie_id = movie_id
  args.sum_uncommitted_rating = sum_uncommitted_rating
  args.num_uncommitted_rating = num_uncommitted_rating
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function MovieInfoServiceClient:recv_UpdateRating(req_id, movie_id, sum_uncommitted_rating, num_uncommitted_rating, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = UpdateRating_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.success ~= nil then
    return result.success
  elseif result.se then
    error(result.se)
  end
  error(TApplicationException:new{errorCode = TApplicationException.MISSING_RESULT})
end
MovieInfoServiceIface = __TObject:new{
  __type = 'MovieInfoServiceIface'
}


MovieInfoServiceProcessor = __TObject.new(__TProcessor
, {
 __type = 'MovieInfoServiceProcessor'
})

function MovieInfoServiceProcessor:process(iprot, oprot, server_ctx)
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

function MovieInfoServiceProcessor:process_WriteMovieInfo(seqid, iprot, oprot, server_ctx)
  local args = WriteMovieInfo_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = WriteMovieInfo_result:new{}
  local status, res = pcall(self.handler.WriteMovieInfo, self.handler, args.req_id, args.movie_id, args.title, args.casts, args.plot_id, args.thumbnail_ids, args.photo_ids, args.video_ids, args.avg_rating, args.num_rating, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('WriteMovieInfo', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function MovieInfoServiceProcessor:process_ReadMovieInfo(seqid, iprot, oprot, server_ctx)
  local args = ReadMovieInfo_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = ReadMovieInfo_result:new{}
  local status, res = pcall(self.handler.ReadMovieInfo, self.handler, args.req_id, args.movie_id, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('ReadMovieInfo', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function MovieInfoServiceProcessor:process_UpdateRating(seqid, iprot, oprot, server_ctx)
  local args = UpdateRating_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = UpdateRating_result:new{}
  local status, res = pcall(self.handler.UpdateRating, self.handler, args.req_id, args.movie_id, args.sum_uncommitted_rating, args.num_uncommitted_rating, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  oprot:writeMessageBegin('UpdateRating', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

-- HELPER FUNCTIONS AND STRUCTURES

WriteMovieInfo_args = __TObject:new{
  req_id,
  movie_id,
  title,
  casts,
  plot_id,
  thumbnail_ids,
  photo_ids,
  video_ids,
  avg_rating,
  num_rating,
  carrier
}

function WriteMovieInfo_args:read(iprot)
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
        self.movie_id = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.title = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.LIST then
        self.casts = {}
        local _etype263, _size260 = iprot:readListBegin()
        for _i=1,_size260 do
          local _elem264 = Cast:new{}
          _elem264:read(iprot)
          table.insert(self.casts, _elem264)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.I64 then
        self.plot_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 6 then
      if ftype == TType.LIST then
        self.thumbnail_ids = {}
        local _etype268, _size265 = iprot:readListBegin()
        for _i=1,_size265 do
          local _elem269 = iprot:readString()
          table.insert(self.thumbnail_ids, _elem269)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 7 then
      if ftype == TType.LIST then
        self.photo_ids = {}
        local _etype273, _size270 = iprot:readListBegin()
        for _i=1,_size270 do
          local _elem274 = iprot:readString()
          table.insert(self.photo_ids, _elem274)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 8 then
      if ftype == TType.LIST then
        self.video_ids = {}
        local _etype278, _size275 = iprot:readListBegin()
        for _i=1,_size275 do
          local _elem279 = iprot:readString()
          table.insert(self.video_ids, _elem279)
        end
        iprot:readListEnd()
      else
        iprot:skip(ftype)
      end
    elseif fid == 9 then
      if ftype == TType.STRING then
        self.avg_rating = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 10 then
      if ftype == TType.I32 then
        self.num_rating = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 11 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype281, _vtype282, _size280 = iprot:readMapBegin() 
        for _i=1,_size280 do
          local _key284 = iprot:readString()
          local _val285 = iprot:readString()
          self.carrier[_key284] = _val285
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

function WriteMovieInfo_args:write(oprot)
  oprot:writeStructBegin('WriteMovieInfo_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.movie_id ~= nil then
    oprot:writeFieldBegin('movie_id', TType.STRING, 2)
    oprot:writeString(self.movie_id)
    oprot:writeFieldEnd()
  end
  if self.title ~= nil then
    oprot:writeFieldBegin('title', TType.STRING, 3)
    oprot:writeString(self.title)
    oprot:writeFieldEnd()
  end
  if self.casts ~= nil then
    oprot:writeFieldBegin('casts', TType.LIST, 4)
    oprot:writeListBegin(TType.STRUCT, #self.casts)
    for _,iter286 in ipairs(self.casts) do
      iter286:write(oprot)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.plot_id ~= nil then
    oprot:writeFieldBegin('plot_id', TType.I64, 5)
    oprot:writeI64(self.plot_id)
    oprot:writeFieldEnd()
  end
  if self.thumbnail_ids ~= nil then
    oprot:writeFieldBegin('thumbnail_ids', TType.LIST, 6)
    oprot:writeListBegin(TType.STRING, #self.thumbnail_ids)
    for _,iter287 in ipairs(self.thumbnail_ids) do
      oprot:writeString(iter287)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.photo_ids ~= nil then
    oprot:writeFieldBegin('photo_ids', TType.LIST, 7)
    oprot:writeListBegin(TType.STRING, #self.photo_ids)
    for _,iter288 in ipairs(self.photo_ids) do
      oprot:writeString(iter288)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.video_ids ~= nil then
    oprot:writeFieldBegin('video_ids', TType.LIST, 8)
    oprot:writeListBegin(TType.STRING, #self.video_ids)
    for _,iter289 in ipairs(self.video_ids) do
      oprot:writeString(iter289)
    end
    oprot:writeListEnd()
    oprot:writeFieldEnd()
  end
  if self.avg_rating ~= nil then
    oprot:writeFieldBegin('avg_rating', TType.STRING, 9)
    oprot:writeString(self.avg_rating)
    oprot:writeFieldEnd()
  end
  if self.num_rating ~= nil then
    oprot:writeFieldBegin('num_rating', TType.I32, 10)
    oprot:writeI32(self.num_rating)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 11)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter290,viter291 in pairs(self.carrier) do
      oprot:writeString(kiter290)
      oprot:writeString(viter291)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

WriteMovieInfo_result = __TObject:new{
  success,
  se
}

function WriteMovieInfo_result:read(iprot)
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

function WriteMovieInfo_result:write(oprot)
  oprot:writeStructBegin('WriteMovieInfo_result')
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

ReadMovieInfo_args = __TObject:new{
  req_id,
  movie_id,
  carrier
}

function ReadMovieInfo_args:read(iprot)
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
        self.movie_id = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype293, _vtype294, _size292 = iprot:readMapBegin() 
        for _i=1,_size292 do
          local _key296 = iprot:readString()
          local _val297 = iprot:readString()
          self.carrier[_key296] = _val297
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

function ReadMovieInfo_args:write(oprot)
  oprot:writeStructBegin('ReadMovieInfo_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.movie_id ~= nil then
    oprot:writeFieldBegin('movie_id', TType.STRING, 2)
    oprot:writeString(self.movie_id)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 3)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter298,viter299 in pairs(self.carrier) do
      oprot:writeString(kiter298)
      oprot:writeString(viter299)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

ReadMovieInfo_result = __TObject:new{
  success,
  se
}

function ReadMovieInfo_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 0 then
      if ftype == TType.STRUCT then
        self.success = MovieInfoRpcResponse:new{}
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

function ReadMovieInfo_result:write(oprot)
  oprot:writeStructBegin('ReadMovieInfo_result')
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

UpdateRating_args = __TObject:new{
  req_id,
  movie_id,
  sum_uncommitted_rating,
  num_uncommitted_rating,
  carrier
}

function UpdateRating_args:read(iprot)
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
        self.movie_id = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I32 then
        self.sum_uncommitted_rating = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.I32 then
        self.num_uncommitted_rating = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 5 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype301, _vtype302, _size300 = iprot:readMapBegin() 
        for _i=1,_size300 do
          local _key304 = iprot:readString()
          local _val305 = iprot:readString()
          self.carrier[_key304] = _val305
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

function UpdateRating_args:write(oprot)
  oprot:writeStructBegin('UpdateRating_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.movie_id ~= nil then
    oprot:writeFieldBegin('movie_id', TType.STRING, 2)
    oprot:writeString(self.movie_id)
    oprot:writeFieldEnd()
  end
  if self.sum_uncommitted_rating ~= nil then
    oprot:writeFieldBegin('sum_uncommitted_rating', TType.I32, 3)
    oprot:writeI32(self.sum_uncommitted_rating)
    oprot:writeFieldEnd()
  end
  if self.num_uncommitted_rating ~= nil then
    oprot:writeFieldBegin('num_uncommitted_rating', TType.I32, 4)
    oprot:writeI32(self.num_uncommitted_rating)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 5)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter306,viter307 in pairs(self.carrier) do
      oprot:writeString(kiter306)
      oprot:writeString(viter307)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

UpdateRating_result = __TObject:new{
  success,
  se
}

function UpdateRating_result:read(iprot)
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

function UpdateRating_result:write(oprot)
  oprot:writeStructBegin('UpdateRating_result')
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

return MovieInfoServiceClient