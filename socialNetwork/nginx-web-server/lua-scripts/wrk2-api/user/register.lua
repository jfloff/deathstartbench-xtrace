local _M = {}
local xtracer = require "luaxtrace"

local function _StrIsEmpty(s)
  return s == nil or s == ''
end

function _M.RegisterUser()
  local bridge_tracer = require "opentracing_bridge_tracer"
  local ngx = ngx
  local GenericObjectPool = require "GenericObjectPool"
  local UserServiceClient = require "social_network_UserService"

  xtracer.StartLuaTrace("NginxWebServer", "Register")
  xtracer.LogXTrace("Processing Request")
  local req_id = tonumber(string.sub(ngx.var.request_id, 0, 15), 16)
  local tracer = bridge_tracer.new_from_global()
  local parent_span_context = tracer:binary_extract(
      ngx.var.opentracing_binary_context)
  local span = tracer:start_span("RegisterUser",
      {["references"] = {{"child_of", parent_span_context}}})
  local carrier = {}
  tracer:text_map_inject(span:context(), carrier)

  ngx.req.read_body()
  local post = ngx.req.get_post_args()

  if (_StrIsEmpty(post.first_name) or _StrIsEmpty(post.last_name) or
      _StrIsEmpty(post.username) or _StrIsEmpty(post.password) or
      _StrIsEmpty(post.user_id)) then
    ngx.status = ngx.HTTP_BAD_REQUEST
    ngx.say("Incomplete arguments")
    ngx.log(ngx.ERR, "Incomplete arguments")
    xtracer.LogXTrace("Incomplete arguments")
    xtracer.DeleteBaggage()
    ngx.exit(ngx.HTTP_BAD_REQUEST)
  end

  local client = GenericObjectPool:connection(UserServiceClient, "user-service", 9090)

  carrier["baggage"] = xtracer.BranchBaggage()
  local status, err = pcall(client.RegisterUserWithId, client, req_id, post.first_name,
      post.last_name, post.username, post.password, tonumber(post.user_id), carrier)
  GenericObjectPool:returnConnection(client)

  if not status then
    ngx.status = ngx.HTTP_INTERNAL_SERVER_ERROR
    if (err.message) then
      ngx.say("User registration failure: " .. err.message)
      ngx.log(ngx.ERR, "User registration failure: " .. err.message)
      xtracer.LogXTrace("User registration failure: " .. err.message)
    else
      ngx.say("User registration failure: " .. err.message)
      ngx.log(ngx.ERR, "User registration failure: " .. err.message)
      xtracer.LogXTrace("User registration failure: " .. err.message)
    end
    xtracer.DeleteBaggage()
    ngx.exit(ngx.HTTP_INTERNAL_SERVER_ERROR)
  end

  xtracer.JoinBaggage(err.baggage)

  span:finish()
  xtracer.DeleteBaggage()
end

return _M
