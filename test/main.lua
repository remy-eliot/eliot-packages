local args = {...}
local computer = require("computer")
local component = require("component")

local name = args[1] or "stranger"

print("Hello, " .. name .. "!")
print("")
print("This package is running from main.lua")
print("Arguments received: " .. #args)

for i, a in ipairs(args) do
  print("  " .. i .. ": " .. a)
end

print("")
print("Uptime: " .. math.floor(computer.uptime()) .. "s")
print("Free memory: " .. math.floor(computer.freeMemory() / 1024) .. " KB")
print("Total memory: " .. math.floor(computer.totalMemory() / 1024) .. " KB")

local count = 0
for _ in component.list() do
  count = count + 1
end
print("Components connected: " .. count)
