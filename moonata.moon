import to_lua from require "moonscript"


environment = {
    :_VERSION
    :tostring
    :tonumber
    :pairs
    :ipairs
    :next
    :type
    :unpack
    :math
    :table
    :string

    -- Metatable operations
    --:setmetatable
    --:getmetatable
    --:rawset
    --:rawget
    --:rawlen
    --:rawequal

    -- Eval operations
    --:load
    --:loadstring
    --:loadfile
    --:dofile

    -- Error handling
    --:error
    --:assert
    --:pcall
    --:xpcall

    -- Module system
    --:module
    --:require
    --:package

    -- Outside information
    --:_G
    --:arg
    --:io
    --:os

    -- Side effects
    --:print
    --:debug
    --:collectgarbage

    -- Not declarative
    --:coroutine
    --:select
}

-- Returns func?, err?
loadstring = (code, name="=(moonata \"#{code}\")", mode=nil) ->
    luacode = assert to_lua code
    load luacode, name, mode, environment

-- Returns func?, err?
loadfile = (fname, name="=[file #{fname}]", mode=nil) ->
    file = assert io.open fname
    code = assert file\read "*a"
    loadstring code, name, mode


{
    :loadstring
    :loadfile
}
