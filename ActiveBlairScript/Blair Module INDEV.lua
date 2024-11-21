BlairModule = {}

TempTable = {}
BempBable = {}
LowestTempRoom = "Unknown"
MainTemp = 20
baseTemp = 20
thebesda = 0
removed = false
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
Removetempghost = {"Harrow","Lament","Poltergeist","Spirit","Strigoi","Shade"}
evles1 = ""
evles2 = ""
evAct = ""

function BlairModule.CheckChallenges()
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
return evles1,evles2,evAct
end


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




function CreateHighlight(inst)
   if inst.Transparency == 1 then
       inst.Reflectance = 99999999999999999999999999999999999999999999
   end
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
--[[
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
]]
function BlairModule.FindUVAlt()
   pr = workspace.Map.Prints
if pr:FindFirstChildWhichIsA("BasePart") then
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
      return uvsent
   end
   end
end



   function GhRemv(vOS)
       if vOS.Name == "Ghost" then
           GhostHL = nil
       end
   end
   workspace.Map.Prints.ChildAdded:Connect(GhRemv)

--[[
function orbfunc(orbi)
      if orbi:IsA("BasePart") and orbi.Name == "OrbPart" then
   --print("ORB -- Evidence")
   orbFound = true
   orbSent = "Orb Evidence found"
   for _,NoGhostOrbsGhosts in pairs(Removeorbghost) do 
   if table.find(UpdatedList,NoGhostOrbsGhosts) then
       OrbInd = table.find(UpdatedList,NoGhostOrbsGhosts)            Not very useful
       table.remove(UpdatedList,OrbInd)
   end
   end
else
FindOrbAlt()
end
end
   workspace.Map.Orbs.ChildAdded:Connect(orbfunc) -- ]] 
function DetTemp(s)
           nm = s.Parent.Parent.Name
           TempTable[s.Value] = s.Parent.Parent.Name
           highestNumber = LowestNum(TempTable)
   l1,va1 = lowNum,val
   BempBable[s.Parent.Value] = s.Parent.Name
   highestNumber = LowestNum(BempBable)
   strgPrt = ("LOW TEMP ROOM : "..va1.." BASETEMP : "..l1.." DETECTEDTEMP : "..lowNum)
   if lowNum < 0 and not removed and game.ReplicatedStorage.Weather.Value == "Default" then
   removed = true
       for _,NoGhosttempGhosts in pairs(Removetempghost) do
   if table.find(UpdatedList,NoGhosttempGhosts) then
       tempInd = table.find(UpdatedList,NoGhosttempGhosts)
       table.remove(UpdatedList,tempInd)
   end
   end
   end
   deb = false
   for i,v in pairs(workspace.Map.Zones:GetChildren()) do
   if v.Name == va1 then
       CreateHighlight(v)
   end
end
end

function BlairModule.GetTemp()
for i,v in pairs(workspace.Map.Zones:GetDescendants()) do
       if v:IsA("NumberValue") and v.Name == "_____LocalBaseTemp" then
       DetTemp(v)
   end
   end
return strgPrt
end
function BlairModule.chkspd(vs)

PSpeed = GSpeed
GSpeed = vs.Humanoid.WalkSpeed
if GSpeed < PSpeed then
if GSpeed > 14 and PSpeed < 8 then
UpdatedList = {"Revenant"} --revenants speed up instantly and WAY FASTER, but is very slow when no players are in sight
end
end
end

function BlairModule.spdchg(ts)
PSpeed = GSpeed
GSpeed = ts.Humanoid.WalkSpeed
RSpeed = GSpeed - PSpeed
return RSpeed
end


function BlairModule.GetList()
   return UpdatedList
end

nVisCol = Instance.new("ColorCorrectionEffect")
nVisCol.Parent = lightPar
nVisCol.Enabled = true
--[[lightPar.Ambient = Color3.fromRGB(0, 0, 0)
lightPar.OutdoorAmbient = Color3.fromRGB(86, 86, 86)
lightPar.ExposureCompensation = 0.25 ]]

function nVis(booleant)
if booleant then
    nVisCol.Enabled = true
    game:GetService("TweenService"):Create(nVisCol, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {Brightness = 0.25,Contrast = 0.1,Saturation = 0,TintColor = Color3.fromRGB(76, 255, 0)}):Play()
else
    game:GetService("TweenService"):Create(nVisCol, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {Brightness = 0,Contrast = 0,Saturation = 0,TintColor = Color3.fromRGB(255, 255, 255)}):Play()
task.wait(0.3)
nVisCol.Enabled = false
end
end

game:GetService("UserInputService").InputBegan:connect(function(input, rizzskibidi)
if rizzasme then
if input.KeyCode == Enum.KeyCode.Space then
if not nVisEn then
    nVis(true)
else
    nVis(false)
end
end
end
end)
--[[
function nem(vg)
if vg.Name == "Ghost" then
chkspd(vs)
end
end
workspace.ChildAdded:Connect(nem)]]

function BlairModule.FindOrbAlt() --alternate method if main one is broken
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
return orbSent

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

function BlairModule.GhAdd(gist)
   if vO.Name == "Ghost" then
          if vO:FindFirstChild("Highlight") then
              CreateSound("4590662766")
              warn("Ghost spawned!")
              if vO:FindFirstChild("Highlight").Enabled ~= true then
              GhostHL = vO:FindFirstChild("Highlight")
              end
          end
      end
      end

return BlairModule
