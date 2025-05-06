if not getgenv()["__xapware_authKey"] then
    game:GetService("Players").LocalPlayer:Kick("Stop bypassing loser. | If you believe this was an error, contact @ discord.gg/CSkhTGz3KG")
    return
end

local authKey = getgenv()["__xapware_authKey"]

if not getgenv()[authKey] then
    game:GetService("Players").LocalPlayer:Kick("Stop bypassing loser. | If you believe this was an error, contact @ discord.gg/CSkhTGz3KG")
    return
end

local libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/aapxapbect/xapware/refs/heads/main/external/lib.lua"))()
local NotifyLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/aapxapbect/xapware/refs/heads/main/external/notify.lua"))()
local Notify = NotifyLibrary.Notify

local GetService = setmetatable({}, {
    __index = function(_, key)
        return game:GetService(key)
    end
})

local RunService = GetService.RunService
local Players = GetService.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = workspace.CurrentCamera
local UserInputService = GetService.UserInputService
local Network = GetService.NetworkClient
local StarterGui = GetService.StarterGui
local tweenService = GetService.TweenService
local ReplicatedStorage = GetService.ReplicatedStorage
local http = GetService.HttpService
local lighting = GetService.Lighting

local Window = libary:new({name = "xapware", accent = Color3.fromRGB(255, 255, 255), textsize = 16})
local testTab = Window:page({name = "Test"})

local testSection1 = testTab:section({name = "Test section 1", side = "left", size = 320})

testSection1:toggle({name = "toggle", def = false, callback = function(Boolean)
    print(Boolean and "true" or "false")
end})

testSection1:colorpicker({name = "colorpicker", cpname = "", def = Color3.new(0.603921, 0.011764, 1), callback = function(color)
    print(color)
end})

testSection1:dropdown({name = "dropdown", def = "none", max = 4, options = {"lol", "sigma", "none"}, callback = function(part)
    print(part)
end})

testSection1:slider({name = "slider", def = 100, max = 500, min = 10, rounding = true, callback = function(Value)
    print(Value)
end})

testSection1:button({name = "button", callback = function()
    print('hi')
end})

testSection1:keybind({name = "keybind", def = Enum.KeyCode.H, callback = function(Key)
    print(Key)
end})
