--workspace.Map.ChildAdded:Connect(GhAdd)
local BFunc = loadstring(game:HttpGet("https://raw.githubusercontent.com/lontongyt/Toolong/refs/heads/main/ActiveBlairScript/Blair%20Module%20INDEV.lua"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

evles1,evles2,evAct = BFunc.CheckChallenges()
--NOTIF SYSTEM
function NotifyPlr(NotifType,TitleS,Desc,Color,TimeS,ImgClr,Img)
if NotifType == "option" then
Notification:Notify(
    {Title = TitleS, Description = Desc},
    {OutlineColor = Color,Time = TimeS, Type = "option"},
    {Image = Img, ImageColor = ImgClr, Callback = function(State) print(tostring(State)) end}
)
elseif NotifType == "image" then
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


 


local Window = Library.CreateLib("Blair Script [KAVO UI EDITION]", "Synapse")
local EvTab = Window:NewTab("Check Evidences")
local EvSec = EvTab:NewSection("Check Evidences")

getgenv().Toggled = false

local toggle = EvSec:NewToggle("Ghost ESP", "Ghost ESP", function(state)
  getgenv().Toggled = state
end)

EvSec:NewButton("Check Temperature", "check temp all acros the building", function()
                    strgPrt = task.spawn(BFunc.GetTemp)
		    NotifyPlr("","Evidence Check","Detecting temperature",Color3.new(1,1,0),2.25,"","")
                    task.wait(2)
		    NotifyPlr("","Evidence Check",strgPrt,Color3.fromRGB(173, 216, 230),4.5,"","")
                    --getgenv().Kavo:Notify(strgPrt, 5)
	end)
EvSec:NewButton("Check UV", "check UV all acros the building", function()
	BFunc.FindUVAlt()
	NotifyPlr("","Evidence Check",uvsent..evles1..evles2..evAct,Color3.new(0,1,0),3,"","")
	--getgenv().Kavo:Notify(uvsent..evles1..evles2..evAct, 5) -- getgenv, getrenv, getsenv, getfenv
	end)
EvSec:NewButton("Check ORB", "check ORB all acros the building", function()
                    BFunc.FindOrbAlt()
		NotifyPlr("","Evidence Check",orbSent..evles1..evles2..evAct,Color3.new(0,1,0),3,"","")
		--getgenv().Kavo:Notify(orbSent..evles1..evles2..evAct, 5) -- getgenv, getrenv, getsenv, getfenv
	end)

game:GetService("RunService").RenderStepped:Connect(function()
	if getgenv().Toggled then
	if workspace:FindFirstChild("Ghost") then
			local GhostMdl = workspace:FindFirstChild("Ghost")
			task.spawn(BlairModule.chkspd,GhostMdl)
			ChangedSpeed = BlairModule.spdchg(GhostMdl)
			if ChangedSpeed ~= 0 then
			NotifyPlr("","Speed",tostring(GhostMdl.Humanoid.WalkSpeed).." (SPEED CHANGE :"..ChangedSpeed.." )",Color3.new(1,0,0),0.8,"","")
				else
			NotifyPlr("","Speed",tostring(GhostMdl.Humanoid.WalkSpeed),Color3.new(1,0,0),0.8,"","")
				end

			end
	else
	end
end)
