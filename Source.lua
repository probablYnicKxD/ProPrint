--[[

  a basic printing utility scripted by nicK.

]]--

local pro_print = {}

function pro_print:replace(str, from, to)
  return string.gsub(str, from, to)
end

local function rep(str, from, to) return pro_print:replace(str, from, to) end

local keys = {
  ["reset"]     = 0,
  ["bold"]      = 1,
  ["dim"]       = 2,
  ["underline"] = 4,
  ["blink"]     = 5,
  ["highlight"] = 7,
  ["hidden"]    = 8,
  ["black"]     = 30,
  ["red"]       = 31,
  ["green"]     = 32,
  ["yellow"]    = 33,
  ["blue"]      = 34,
  ["magenta"]   = 35,
  ["cyan"]      = 36,
  ["white"]     = 37,
}

function pro_print:colorize(str)
  for i, k in pairs(keys) do
    str = rep(str, "<" .. i .. ">", "\27[" .. tostring(k) .. "m")
    str = rep(str, "</" .. i .. ">", "\27[0m")
  end

  return str
end

function pro_print:print(str)
  for i, k in pairs(keys) do
    str = rep(str, "<" .. i .. ">", "\27[" .. tostring(k) .. "m")
    str = rep(str, "</" .. i .. ">", "\27[" .. keys["reset"] .. "m")
  end

  return print(str)
end

return pro_print
