local Character = game.Players.LocalPlayer.Character
local function findToolType(b) -- , b is idk!!
for i,v in pairs(workspace:GetDescendants()) do
if v.Name == b and v:IsA("Tool") then
if v:FindFirstChild"ClickDetector" ~= nil then
prtname = v
print(v.Name)
end
end
end
end
local function findToolTypebyPart(b) -- WHat is?
for i,v in pairs(workspace:GetDescendants()) do
if v.Name == b then
if v:FindFirstChild"ClickDetector" ~= nil then
prtname = v
print(v.Name)
end
end
end
end
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TLKPrizon GUI", "GrapeTheme")
local Tab = Window:NewTab("Tools and teams")
local Tab2 = Window:NewTab("player")
local Stuff = Window:NewTab("Problems and credits")

local Section = Tab:NewSection("Tools")

Section:NewButton("Get Axe", "Gets the axe, can't you read?", function()
findToolType("Axe")
fireclickdetector(prtname.ClickDetector)
end)

Section:NewButton("Get Crowbar", "Gets the Crowbar, can't you read?", function()
findToolType("Crowbar")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Bat", "Gets the bat, can't you read?", function()
findToolTypebyPart("Bat")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Pliers", "Gets the Pliers, can't you read?", function()
findToolType("Pliers")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Taser", "Gets the Taser, can't you read?", function()
findToolType("Taser")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get BallNChain", "its actually ballnchaintool", function()
findToolType("BallNChainTool")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Bag", "Gets the Bag, can't you read?", function()
findToolType("Bag")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Pickaxe", "Gets the Pickaxe, can't you read?", function()
findToolType("Pickaxe")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Rope", "No More Can't you Read!", function()
findToolType("Rope")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Flashlight", "Gets the fleshlight!, can't you read?", function()
findToolType("Flashlight")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Knife", "Gets the Knive, can't you read?", function()
findToolType("Knife")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get KeyCard", "Gets the KeyCard, can't you read?", function()
findToolType("KeyCard")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Handcuffs", "(fugitive cuff)please help theres so many items on this game!", function()
findToolType("Handcuffs (fugitive)")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Screwdriver", "Gets the Screwdriver, can't you read?", function()
findToolType("Screwdriver")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Handsaw", "im tired renaming those lol", function()
findToolType("Handsaw")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Hammer", "Gets the Hammer, can't you read?", function()
findToolType("Hammer")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Blindfold", "Gets the blind fold, can't you read?", function()
findToolTypebyPart("BlindFold")
fireclickdetector(prtname.ClickDetector)
end)
Section:NewButton("Get Collar", "Gets the Collar, can't you read?", function()
findToolTypebyPart("collar")
fireclickdetector(prtname.ClickDetector)
end)
local Section2 = Tab:NewSection("Food section coming soon")
local Stuff = Stuff:NewSection("Text")
Stuff:NewLabel("scripted by howbtw(some scripts are not mine)")
Stuff:NewLabel("KAVO UI LIBRARY")
Stuff:NewLabel([[IF the get tools thing are not working 
then your exploit not support it]])

local sct2 = Tab2:NewSection("Humanoid")
getgenv().PlayerSpeed = 16
sct2:NewSlider("Speed", "Changes your speed (Do not press run while using this and Do not stop walking or it will turn your speed back to normal)", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    getgenv().PlayerSpeed = s
end)
sct2:NewSlider("JumpPower", "Changes your jumpPower", 500, 0, function(s23) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s23
end)
sct2:NewButton("Fly", "You know it", function()
repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
 end)
sct2:NewLabel([[ Note : FireTouchInterests needed 
which some exploit do not have]])
sct2:NewLabel([[Buttons with the label [N] means 
it requires firetouchinterest (read the note) ]])
--sct2:NewButton("Hitbox expander", "this hitbox expander is not mine btw", function() -- 500 (MaxValue) | 0 (MinValue)
--loadstring(game:HttpGet("http://gameovers.net/Scripts/Free/HitboxExpander/main.lua", true))()
--end)
sct2:NewButton("Become police [N] ", "Makes you a police! Mindbloxxing!!", function() -- 500 (MaxValue) | 0 (MinValue)

firetouchinterest(workspace.guardsspawn.GuardSpawnLocation,Character:FindFirstChild("HumanoidRootPart"),0)
wait()
firetouchinterest(workspace.guardsspawn.GuardSpawnLocation,Character:FindFirstChild("HumanoidRootPart"),1)
end)
sct2:NewButton("Become fugitive [N]", "Becomes Fugitive", function() -- 500 (MaxValue) | 0 (MinValue)
firetouchinterest(workspace.FugitiveSpawn,Character:FindFirstChild("HumanoidRootPart"),0)
wait()
firetouchinterest(workspace.FugitiveSpawn,Character:FindFirstChild("HumanoidRootPart"),1)
end)
sct2:NewButton("Become Prisoner [N] ", "Becomes Wow why? Why prisoner dude or ma'am?", function() -- 500 (MaxValue) | 0 (MinValue)
firetouchinterest(workspace.Spawners.PrisonerSpawnLocation1,Character:FindFirstChild("HumanoidRootPart"),0)
wait()
firetouchinterest(workspace.Spawners.PrisonerSpawnLocation1,Character:FindFirstChild("HumanoidRootPart"),1)
end)
game:GetService("RunService").Heartbeat:Connect(function() --ruff ruff
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = getgenv().PlayerSpeed
end)
