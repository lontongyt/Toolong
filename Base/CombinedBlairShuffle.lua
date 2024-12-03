local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
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
       if orbi:IsA("BasePart") and orbi.Name == "OrbPart" then
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









--                    Shuffle                            --
















ThatcherTakenOver = 0

shuffled = false
--Tried rescripting, worked for some time, went lost, and had to reset the development
print("No printing today")
FigNear = false
local FigRoom = nil
PartCountB = 0
PartCount = 0
local tval = false
yes = true
MarketPlaceImages = {} --prepare for your rams to be filled (maybe)
MPICount = 0
local EvTabe = Window:NewTab("Shuffle things")
local EvSece = EvTabe:NewSection("Shuffle")


--Very Disorganized Script here ay

function Tthatcher()
    for i,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Texture") or v:IsA("Decal") then
            chance = math.random(1,8)
            if chance == 1 and v.Texture ~= "rbxassetid://176501501" then
                ThatcherTakenOver += 1
                v.Texture = "rbxassetid://176501501"
            end
        end
        if v:IsA("BasePart") and not v:findFirstChild("Texture") then
            chance = math.random(1,8)
            if chance == 1 and v.Parent.Parent ~= game.Players.LocalPlayer.Character then
            PartCountB += 1
            ThatcherTakenOver += 1
            newTex = Instance.new("Texture")
            newTex.Parent = v
            newTex.Texture = "rbxassetid://176501501"
            newTex.Face = "Left"
            newTex2 = newTex:Clone()
            newTex2.Parent = v
            newTex2.Face = "Right"
            newTex5 = newTex:Clone()
            newTex5.Parent = v
            newTex5.Face = "Top"
            newTex3 = newTex:Clone()
            newTex3.Parent = v
            newTex3.Face = "Bottom"
            newTex4 = newTex:Clone()
            newTex4.Parent = v
            newTex4.Face = "Front"      
            newTex6 = newTex:Clone()
            newTex6.Parent = v
            newTex6.Face = "Back"  
            
            end         
        end 
        if v:IsA("BasePart") then
            PartCount += 1  
     end     
    end
    game.TextChatService.TextChannels.RBXGeneral:DisplaySystemMessage("Mergaret Thatcher has taken over "..ThatcherTakenOver.." parts of the world. ("..math.round((100 -((PartCountB/PartCount) * 100))).."%)") 
PartCount = 0
PartCountB = 0
    ThatcherTakenOver = 0
end   


--ROOM CHECK


function Shuffle(foldList,ShfType)
task.spawn(function()
if foldList ~= nil then
    gchild = foldList:GetChildren()
for Very,Efficient in pairs(Game:GetDescendants()) do
if  ShfType == "Img" then
 if Efficient:IsA("Decal") or Efficient:IsA("Texture")  or Efficient:IsA("ParticleEmitter") then
   pickChild = gchild[math.random(1,#gchild)]
Efficient.Texture = pickChild.Value
   elseif Efficient:IsA("ImageLabel") or Efficient:IsA("ImageButton") then
    pickChild = gchild[math.random(1,#gchild)]
    Efficient.Image = pickChild.Value
end
elseif ShfType == "MP3" then
    if Efficient:IsA("Sound") then
        pickChild = gchild[math.random(1,#gchild)]
       Efficient.SoundId = pickChild.Value
    end
end
    end
end
end)
end

--ROOM CHECK


function AddImage()
    if not workspace:findFirstChild("ShuffleImage") then
        newFold = Instance.new("Folder")
        newFold.Parent = workspace
        newFold.Name = "ShuffleImage"
        else
        newFold = workspace:findFirstChild("ShuffleImage")
        end
for i,v in pairs(Game:GetDescendants()) do
if v:IsA("Decal") or v:IsA("Texture") then
 for skib,bidi in pairs(newFold:GetDescendants()) do
     if bidi:IsA("StringValue") then
 if bidi.Value == tostring(v.Texture) then
     bidi:Destroy()
 end
 end
 end
local nValue = Instance.new("StringValue")
nValue.Parent = newFold
nValue.Value = tostring(v.Texture)

elseif v:IsA("ImageLabel") or v:IsA("ImageButton") then
for skib,bidi in pairs(newFold:GetDescendants()) do
    if bidi:IsA("StringValue") then
if bidi.Value == tostring(v.Image) then
    bidi:Destroy()
end
end
end
local nValue = Instance.new("StringValue")
nValue.Parent = newFold
nValue.Value = tostring(v.Image)

end
end
Shuffle(newFold,"Img")
end


--ROOM CHECK


function AddSound()
    newFold = nil
    if workspace:findFirstChild("ShuffleSound") then
     newFold = workspace:findFirstChild("ShuffleSound")
    elseif not workspace:findFirstChild("ShuffleSound") then
    newFold = Instance.new("Folder")
    newFold.Parent = workspace
    newFold.Name = "ShuffleSound"
    end
    for i,v in pairs(Game:GetDescendants()) do
    if v:IsA("Sound") then
     for skib,bidi in pairs(newFold:GetDescendants()) do
         if bidi:IsA("StringValue") then
     if bidi.Value == tostring(v.SoundId) then
         bidi:Destroy()
     end
     end
     end
    local nValue = Instance.new("StringValue")
    nValue.Parent = newFold
    nValue.Value = tostring(v.SoundId)
    end
    end
    Shuffle(newFold,"MP3")
    end


--ROOM CHECK

function ShuffleText()
task.spawn(function()
if not workspace:findFirstChild("TextLists") then
teNe = Instance.new("Folder")
teNe.Parent = workspace
teNe.Name = "TextLists"
else
teNe = workspace:findFirstChild("TextLists")
end
for i,v in pairs(Game:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") and v.Text ~= "" then
        neVal = Instance.new("StringValue")
        neVal.Parent = teNe
        neVal.Value = v.Text
    end
end
techild = teNe:GetChildren()
for i,v in pairs(workspace:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        pktChild = techild[math.random(1,#techild)]
       v.Text = pktChild.Value
    end
end
for i,v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        pktChild = techild[math.random(1,#techild)]
       v.Text = pktChild.Value
    end
end
for i,v in pairs(game.CoreGui.ExperienceChat:GetDescendants()) do
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        pktChild = techild[math.random(1,#techild)]
       v.Text = pktChild.Value
    end
end
for i,v in pairs(game.CoreGui.RobloxGui:GetDescendants()) do --Will affect roblox menu
    if v:IsA("TextLabel") or v:IsA("TextButton") then
        pktChild = techild[math.random(1,#techild)]
       v.Text = pktChild.Value
    end
end
end)
end

--ROOM CHECK



function ShuffleSPitch()
    for i,v in pairs(game:GetDescendants()) do
        if v:findFirstChildWhichIsA("PitchShiftSoundEffect") then
            ThatisTheCriminalOfficer = v:findFirstChildWhichIsA("PitchShiftSoundEffect")
           ranNum = Random.new():NextNumber(0.5,2)
           ThatisTheCriminalOfficer.Octave = ranNum
           ThatisTheCriminalOfficer.Enabled = true
        elseif v:IsA("Sound") and not v:findFirstChildWhichIsA("PitchShiftSoundEffect") then
            nePitc = Instance.new("PitchShiftSoundEffect")
            nePitc.Parent = v
            nePitc.Octave = Random.new():NextNumber(0.5,2)
    end
end
end

function ReplaceGoogledImages()
    for i,v in pairs(game:GetDescendants()) do
    if v:IsA("Decal") or v:IsA("Texture") then
        skibidi = MarketPlaceImages
        v.Texture = "rbxassetid://"..skibidi[math.random(#skibidi)] -- oh my days lsplash
    end
    if v:IsA("ImageLabel") or v:IsA("ImageButton") then
        skibidi = MarketPlaceImages
        Randomsss = skibidi[math.random(#skibidi)]
        skibidi = MarketPlaceImages
        v.Image = "rbxthumb://type=Asset&id="..Randomsss.."&w=420&h=420" -- oh my days lsplash
    end
end
end --oopsie i forgot

function reqrelimg()
    local MPICount = 0
    repeat
        wait() --stop lag pls no no lag
         local freerobux = false
         pcall(function()
            ids = Random.new():NextNumber(1,100000000000) -- i can't keep track of how many decal assets are there now
            id = math.floor(ids + 0.5)
            print(id)
            Asset = game.MarketplaceService:GetProductInfo(id)
            print(tostring(Asset.AssetTypeId))
            if Asset.AssetTypeId==1 then freerobux = true local MPICount = MPICount + 1 end 
        end)
        if freerobux then table.insert(MarketPlaceImages,tostring(id)) --[[filling ram process has started.. maybe not]] 
         end
         print(MPICount)
    until MPICount == 1000  
end
task.spawn(reqrelimg)
--[[ROOM CHECK


function AddTremolo() --fucking useless but i'll add it anyway
    for i,v in pairs(game:GetDescendants()) do
        if v:findFirstChildWhichIsA("TremoloSoundEffect") then
            ThatisTheCriminalOfficer = v:findFirstChildWhichIsA("TremoloSoundEffect")
        ThatisTheCriminalOfficer.Enabled = true            
        elseif v:IsA("Sound") and not v:findFirstChildWhichIsA("TremoloSoundEffect") then
            nePitc = Instance.new("TremoloSoundEffect")
            nePitc.Parent = v
            nePitc.Depth = 1
            nePitc.Enabled = true
            nePitc.Duty = Random.new():NextNumber(0.5,1)
            nePitc.Frequency = Random.new():NextNumber(0.1,20)
    end
end
end


--ROOM CHECK


function DTrem()
    for i,v in pairs(game:GetDescendants()) do
        if v:findFirstChildWhichIsA("TremoloSoundEffect") then
            ThatisTheCriminalOfficer = v:findFirstChildWhichIsA("TremoloSoundEffect")
        ThatisTheCriminalOfficer.Enabled = false            
end
end
end

--ROOM CHECK


function AddChorus() --fisuklcin uiselese _+ fisycjiung usekesks = stuopuuidfly sup esr fyucikiuung shittyu fusekfles
    for i,v in pairs(game:GetDescendants()) do
        if v:findFirstChildWhichIsA("ChorusSoundEffect") then
            ThatisTheCriminalOfficer = v:findFirstChildWhichIsA("ChorusSoundEffect")
        ThatisTheCriminalOfficer.Enabled = true            
        elseif v:IsA("Sound") and not v:findFirstChildWhichIsA("ChorusSoundEffect") then
            nePitc = Instance.new("ChorusSoundEffect")
            nePitc.Parent = v
            nePitc.Depth = Random.new():NextNumber(0.1,1)
            nePitc.Enabled = true
            nePitc.Mix = Random.new():NextNumber(0.1,1)
            nePitc.Rate = Random.new():NextNumber(0.1,20)
    end
end
end


--ROOM CHECK


function DCE()
    for i,v in pairs(game:GetDescendants()) do
        if v:findFirstChildWhichIsA("ChorusSoundEffect") then
            ThatisTheCriminalOfficer = v:findFirstChildWhichIsA("ChorusSoundEffect")
        ThatisTheCriminalOfficer.Enabled = false            
end
end
end
]]

--ROOM CHECK😊😊
EvSece:NewButton("Margaret Thatcher", "", function()
    Tthatcher()
end)
EvSece:NewButton("Shuffle images", "", function()
    AddImage()
end)
EvSece:NewButton("Shuffle sounds", "", function()
    AddSound()
end)
EvSece:NewButton("Shuffle text", "", function()
    ShuffleText()
end)
EvSece:NewButton("Shuffle Sound pitch", "", function()
    ShuffleSPitch()
end)
EvSece:NewButton("Shuffle images(v2)", "", function()
    ReplaceGoogledImages()
end)
