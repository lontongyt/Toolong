local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
 TempTable = {}
 BempBable = {}
 LowestTempRoom = "Unknown"
 MainTemp = 20
 baseTemp = 20
 thebesda = 0
 orbFound = false
 UVFound = false
 uvsent = "UV Not found. Try using UV Light or glowsticks"
 orbSent = "Orb not found."
 GSpeed = 8.5
 SpeedSpike = false
 GESP = false
 GhostType = "Skibidi"
 GhostList = {"Yama","Yurei","Revenant","Demon","Banshee","Shade","Spirit","Strigoi","Faejkur","Harrow","Wraith","Lament","Mare","Poltergeist","Nook","IRS"}
 UpdatedList = {"Yama","Yurei","Revenant","Demon","Banshee","Shade","Spirit","Strigoi","Faejkur","Harrow","Wraith","Lament","Mare","Poltergeist","Nook","IRS"}
 Removeorbghost = {"Banshee","Demon","Faejkur","Revenant","Spirit","Yama","Yurei","IRS"}
 Removeuvghost = {"Demon","Faejkur","Lament","Mare","Nook","Shade","Wraith","Yama"}
 evles1 = ""
 evles2 = ""
 evAct = ""
 if game.ReplicatedStorage.ActiveChallenges:FindFirstChild("evidencelessOne") ~= nil then
evles1 = " (-1"
evAct = "Evidence active)"
 end
    if game.ReplicatedStorage.ActiveChallenges:FindFirstChild("evidencelessTwo") ~= nil then
evles2 = " and -2 "
evAct = "Evidence active)"
if game.ReplicatedStorage.ActiveChallenges:FindFirstChild("evidencelessOne") == nil then
evles2 = " (-2"
end    end
 rizzCheck = math.random(1,5)
 if rizzCheck == 1 then
 rizz = true --does player has rizz?
 else
 rizz = false
 end
 RoomLow = "Russian Republic"
 strgPrt = "That is the lowest temp of the room, it might be not low but is because low is of the gost iding tere but yes bogst is veri skeri en is aihding dere"
 function LowestNum(thetab)
 deb = false
 lowNum = 100
 for a,s in pairs(thetab) do
 if a < lowNum then
 lowNum = a
 val = s
 end
 end
 return lowNum,val
 end


--NOTIF SYSTEM
function NotifyPlr(NotifType,TitleS,Desc,Color,TimeS,ImgClr,Img)
if NotifType == "option" then
Notification:Notify(
    {Title = TitleS, Description = Desc},
    {OutlineColor = Color,Time = TimeS, Type = "option"},
    {Image = Img, ImageColor = ImgClr, Callback = function(State) print(tostring(State)) end}
)
elseif NotifyType == "image" then
Notification:Notify(
    {Title = TitleS, Description = Desc},
    {OutlineColor = Color,Time = TimeS, Type = "image"},
    {Image = Img, ImageColor = ImgClr}
)
else
Notification:Notify(
    {Title = TitleS, Description = Desc},
    {OutlineColor = Color,Time = TimeS, Type = "default"}
)
end
end
--NOTIF SYSTEM END


 function DetTemp(s)
            nm = s.Parent.Parent.Name
            TempTable[s.Value] = s.Parent.Parent.Name
            highestNumber = LowestNum(TempTable)
    l1,va1 = lowNum,val
    BempBable[s.Parent.Value] = s.Parent.Name
    highestNumber = LowestNum(BempBable)
    strgPrt = ("LOW TEMP ROOM : "..va1.." BASETEMP : "..l1.." DETECTEDTEMP : "..lowNum)
    deb = false
    for i,v in pairs(workspace.Map.Zones:GetChildren()) do
    if v.Name == va1 then
        CreateHighlight(v)
    end
 end
 end
function CreateHighlight(inst)
    rizz = Instance.new("Highlight")
    rizz.Parent = inst
    rizz.DepthMode = "AlwaysOnTop"
    rizz.FillTransparency = 0.75
    rizz.FillColor = Color3.fromRGB(75, 150, 255)
    rizz.OutlineColor = Color3.fromRGB(75, 150, 255)
    rizz.OutlineTransparency = 0
    rizz.Enabled = true
    rizzTween = game:GetService("TweenService"):Create(rizz,TweenInfo.new(3,Enum.EasingStyle.Sine),{OutlineTransparency = 1, FillTransparency = 1})
    rizzTween:Play()
    rizzTween.Completed:Wait()
    rizz:Destroy()
end
 thebesda = thebesda + 1
 function UVFunc(pr)

    if pr.Parent.Name == "Prints" then
    --print("UV -- Evidence")
    UVFound = true
    uvsent = "UV Evidence found"
    for _,NoGhostUVGhosts in pairs(Removeuvghost) do
        if table.find(UpdatedList,NoGhostUVGhosts) then
            UVIND = table.find(UpdatedList,NoGhostUVGhosts)
            table.remove(UpdatedList,UVIND)
        end
        end
    end
    end

 workspace.Map.Prints.ChildAdded:Connect(UVFunc)



    function GhRemv(vOS)
        if vOS.Name == "Ghost" then
            GhostHL = nil
        end
    end
    workspace.Map.Prints.ChildAdded:Connect(GhRemv)


function orbfunc(orbi)
       if orbi:IsA("BasePart") and v.Name == "OrbPart" then
    --print("ORB -- Evidence")
    orbFound = true
    orbSent = "Orb Evidence found"
    for _,NoGhostOrbsGhosts in pairs(Removeorbghost) do
    if table.find(UpdatedList,NoGhostOrbsGhosts) then
        OrbInd = table.find(UpdatedList,NoGhostOrbsGhosts)
        table.remove(UpdatedList,OrbInd)
    end
    end
else
FindOrbAlt()
end
end
    workspace.Map.Orbs.ChildAdded:Connect(orbfunc) -- O MAI GOD ICH BIN STUPID

function GetTemp()
for i,v in pairs(workspace.Map.Zones:GetDescendants()) do
        if v:IsA("NumberValue") and v.Name == "_____LocalBaseTemp" then
        DetTemp(v)
    end
    end
end
function chkspd(vs)

PSpeed = GSpeed
GSpeed = vs.Humanoid.WalkSpeed
if GSpeed < PSpeed then
if GSpeed > 14 and PSpeed < 8 then
UpdatedList = {"Revenant"} --revenants speed up instantly and WAY FASTER, but is very slow when no players are in sight
end
end
end

--[[
function nem(vg)
if vg.Name == "Ghost" then
chkspd(vs)
end
end
workspace.ChildAdded:Connect(nem)]]

function FindOrbAlt() --alternate method if main one is broken
    --nvm 
if workspace.Map.Orbs:FindFirstChild("OrbPart") ~= nil then
        --print("ORB -- Evidence")
        orbFound = true
        orbSent = "Orb Evidence found"
        for _,NoGhostOrbsGhosts in pairs(Removeorbghost) do
        if table.find(UpdatedList,NoGhostOrbsGhosts) then
            OrbInd = table.find(UpdatedList,NoGhostOrbsGhosts)
            table.remove(UpdatedList,OrbInd)
        end
        end
end
end
function CreateSound(id)
SoundNew = Instance.new("Sound",workspace)
SoundNew.Volume = 1.2
SoundNew.SoundId = "rbxassetid://"..id
SoundNew:Play()
SoundNew.Ended:Wait()
SoundNew:Destroy()
end

function GhAdd(vO)
    if vO.Name == "Ghost" and GESP then
           if vO:FindFirstChild("Highlight") then
               CreateSound("4590662766")
               warn("Ghost spawned!")
               if vO:FindFirstChild("Highlight").Enabled ~= true then
               GhostHL = vO:FindFirstChild("Highlight")
               end
           end
       end
       end
workspace.Map.ChildAdded:Connect(GhAdd)

local Window = Library.CreateLib("Blair Script [KAVO UI EDITION]", "Synapse")
local EvTab = Window:NewTab("Check Evidences")
local EvSec = EvTab:NewSection("Check Evidences")

getgenv().Toggled = false

local toggle = EvSec:NewToggle("Ghost ESP", "Ghost ESP", (state)
    getgenv().Toggled = state
end)

EvSec:NewButton("Check Temperature", "check temp all acros the building", function()
                    task.spawn(GetTemp)
		    NotifyPlr("","Temperature Check","Temperature",Color3.new(0,1,0),3,"","")
		    NotifyPlr("","Evidence Check","Detecting temperature",Color3.new(1,1,0),2.25,"","")
                    task.wait(2)
		    NotifyPlr("","Evidence Check",strgPrt,Color3.fromRGB(173, 216, 230),4.5,"","")
                    --getgenv().Kavo:Notify(strgPrt, 5)
	end)
EvSec:NewButton("Check UV", "check UV all acros the building", function()
	NotifyPlr("","Evidence Check",uvsent..evles1..evles2..evAct,Color3.new(0,1,0),3,"","")
	--getgenv().Kavo:Notify(uvsent..evles1..evles2..evAct, 5) -- getgenv, getrenv, getsenv, getfenv
	end)
EvSec:NewButton("Check ORB", "check ORB all acros the building", function()
                    FindOrbAlt()
		NotifyPlr("","Evidence Check",orbSent..evles1..evles2..evAct,Color3.new(0,1,0),3,"","")
		--getgenv().Kavo:Notify(orbSent..evles1..evles2..evAct, 5) -- getgenv, getrenv, getsenv, getfenv
	end)

game:GetService("RunService").RenderStepped:Connect(function()
	if getgenv().Toggled then
		GESP = getgenv().Toggled
                        GhostHL = workspace.Ghost
                        task.spawn(chkspd,GhostHL)
                        GhostHL.Highlight.Enabled = true
		         NotifyPlr("","Speed",tostring(GhostHL.Humanoid.WalkSpeed),Color3.new(1,0,0),0.8,"","")
                        -- getgenv().Kavo:Notify(tostring(GhostHL.Humanoid.WalkSpeed),1)
	else
		GESP = getgenv().Toggled
	end
end)




