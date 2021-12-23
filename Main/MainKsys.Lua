local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")
 
local player = Players.LocalPlayer 
local playerGui = player:WaitForChild("PlayerGui")
 
local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui
local loadingRing = Instance.new("ImageLabel")
loadingRing.Size = UDim2.new(0, 256, 0, 256)
loadingRing.BackgroundTransparency = 1
loadingRing.Image = "rbxassetid://8306039034"
loadingRing.AnchorPoint = Vector2.new(0.5, 0.5)
loadingRing.Position = UDim2.new(0.5, 0, 0.5, 0)
loadingRing.Parent = screenGui
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 100
textLabel.BackgroundColor3 = Color3.fromRGB(0, 20, 40)
textLabel.Font = Enum.Font.GothamSemibold
textLabel.TextColor3 = Color3.new(0, 0, 0)
textLabel.Text = ""
textLabel.TextSize = 28
textLabel.Parent = screenGui

wait(0.5)
-- Remove the default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()
 
local tweenInfo = TweenInfo.new(4, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
local tween = TweenService:Create(loadingRing, tweenInfo, {Rotation = 360})
tween:Play()
 wait(.5)
 wait(.5)
 wait(.5)
wait(.5)
 wait(.5)
 wait(.5)
wait(.5)
 wait(.5)
 wait(.5)
wait(.5)


wait(3)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then
    game.Loaded:Wait()
end
screenGui:Destroy()
wait(1)
----------------DONOTTOUCHUNLESSYOUKNOWWHATYOURDOING-----------------
local DiscordLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/Cyphrous/Moonless-Ui-Library/main/Main/Source.lua'))(' ')
local win = DiscordLib:Window("Moonless Hub | Game Name")
----------------DONOTTOUCHUNLESSYOUKNOWWHATYOURDOING-----------------

--[[local serv = win:Server("Preview", "http://www.roblox.com/asset/?id=54479722")
local btns = serv:Channel("Buttons")
btns:Button("Kill all", function()
DiscordLib:Notification("Notification", "Killed everyone!", "Okay!")
end)
btns:Seperator()
btns:Button("Get max level", function()
DiscordLib:Notification("Notification", "Max level!", "Okay!")
end)
local tgls = serv:Channel("Toggles")
tgls:Toggle("Auto-Farm",false, function(bool)
print(bool)
end)
local sldrs = serv:Channel("Sliders")
local sldr = sldrs:Slider("Slide me!", 0, 1000, 400, function(t)
print(t)
end)
sldrs:Button("Change to 50", function()
sldr:Change(50)
end)
local drops = serv:Channel("Dropdowns")
local drop = drops:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
print(bool)
end)
drops:Button("Clear", function()
drop:Clear()
end)
drops:Button("Add option", function()
drop:Add("Option")
end)
local clrs = serv:Channel("Colorpickers")
clrs:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)
local textbs = serv:Channel("Textboxes")
textbs:Textbox("Gun power", "Type here!", true, function(t)
print(t)
end)
local lbls = serv:Channel("Labels")
lbls:Label("This is just a label.")
local bnds = serv:Channel("Binds")
bnds:Bind("Kill bind", Enum.KeyCode.RightShift, function()
print("Killed everyone!")
end)
serv:Channel("by dawid#7205")--]]
--_________________________________________________
--___________________SCRIPT_UPDATE___________________________--
local key = win:Server("Key System", "http://www.roblox.com/asset/?id=54479722")
local tab = key:Channel("Provide Key")
tab:Textbox("Key","typehere", true, function(t)
    key = t
    if key == "993C2FD43669B" or key == "EB8335CEB82BC" or key == "9E729EBF83BDD" then
        local Part = game:GetService("CoreGui")["Moonless"]
            Part:Destroy()
            if game.PlaceId == 5630129588 then
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Cyphrous/Scripts/main/Main/Sources/Smash%20Legends.lua"))()
            else
            game.Players.LocalPlayer:Kick ("Game not Supported\nby MoonHub")
            end
    else
        DiscordLib:Notification("Invalid Key!", "Please Enter a Valid key.", "Okay")
    end
    end)
    tab:Button("Get Key", function()
    DiscordLib:Notification("Would You like to Get The Key?", "Discord Invite:\n https://discord.gg/HpPBpgJVyb", "Hell Yeah \n Copy ID!")
    setclipboard("https://discord.gg/HpPBpgJVyb")
    end)
--___________________Script tab___________________________--

--___________________ABOUTUS___________________________--
local abt = win:Server("About Us", "http://www.roblox.com/asset/?id=8306039034")
local chn = abt:Channel("Credits")
local Scls = abt:Channel("Socials")
----Credits
chn:Label("Made by")
chn:Seperator()
chn:Button("Viale", function()
    DiscordLib:Notification("Contact:", "Discord ID:\n Viale#2712", "Copy ID!")
    setclipboard("Viale#2712")
end)
chn:Seperator()

----Socials
Scls:Label("Discord Server")
Scls:Seperator()
Scls:Button("Discord Invite", function()
    DiscordLib:Notification("Would You like to Join Our Discord ?", "Discord Invite:\n https://discord.gg/E3uvKKRNdN", "Hell Yeah \n Copy ID!")
    setclipboard("https://discord.gg/HpPBpgJVyb")
end)
Scls:Seperator()
Scls:Label("Website")
Scls:Seperator()
Scls:Button("Check Our Website !", function()
    DiscordLib:Notification("Would You like to See More Script ?", "Website Link:\n http://moonless.site", "Hell Yeah \n Copy ID!")
    setclipboard("https://www.youtube.com/channel/UCM3WvefUMUeiM-inCBcFlIA")
end)
Scls:Seperator()

----UI CONTROL
