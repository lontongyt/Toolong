--workspace.Map.ChildAdded:Connect(GhAdd)





local Window = Library.CreateLib("Blair Script [KAVO UI EDITION]", "Synapse")
local EvTab = Window:NewTab("Check Evidences")
local EvSec = EvTab:NewSection("Check Evidences")

getgenv().Toggled = false

local toggle = EvSec:NewToggle("Ghost ESP", "Ghost ESP", function(state)
  getgenv().Toggled = state
end)

EvSec:NewButton("Check Temperature", "check temp all acros the building", function()
                    task.spawn(GetTemp)
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
