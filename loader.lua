local lp = game:GetService("Players").LocalPlayer
local blacklist = loadstring(game:HttpGet("https://raw.githubusercontent.com/aapxapbect/xapware/refs/heads/main/external/blacklist.lua"))()
local notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/aapxapbect/xapware/refs/heads/main/external/notify.lua"))()

if blacklist[lp.UserId] then
    lp:Kick("You're blacklisted from xapware. | Appeal: discord.gg/CSkhTGz3KG")
    return
end

setclipboard("discord.gg/CSkhTGz3KG")

notify.Notify({
    Title = "Loading...",
    Description = "Xapware's discord link has been copied.",
    Duration = 5
})

wait(5)

local authKey = "xap_authed_" .. math.random(10000, 99999)
getgenv()[authKey] = true
getgenv()["__xapware_authKey"] = authKey

if not lp:IsInGroup(14967343) then
    lp:Kick("You're not in the xapware roblox group, join our discord for the link.")
    return
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/aapxapbect/xapware/refs/heads/main/main.lua"))()
