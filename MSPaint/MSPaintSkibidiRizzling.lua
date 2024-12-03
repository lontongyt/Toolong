ThatcherTakenOver = 0
if game.PlaceId == 6839171747 then
collision = game.Players.LocalPlayer.Character.Collision
collision.Position -= Vector3.new(0, 0, 0)
end
shuffled = false
--Tried rescripting, worked for some time, went lost, and had to reset the development
print("No printing today")
FigNear = false
local FigRoom = nil
PartCountB = 0
PartCount = 0
local Options = getgenv().Linoria.Options;
local Toggles = getgenv().Linoria.Toggles;
local tval = false
yes = true
MarketPlaceImages = {} --prepare for your rams to be filled (maybe)
MPICount = 0



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


local Addon = {
	Name = "StupidAddon", -- Addon Name (can't contain spaces)
	Title = "lontong's addon", -- Name for the groupbox
	Description = "Client-Sided Stuff here", -- Can be empty if you don't want a description
	Game = "*", -- * means all games
	Elements = {
		{
		Type = "Button",
		Name = "MargaretThatcher",
		Arguments = {
			Text = 'Margaret Thatcher',
			Tooltip = 'Takes over parts of the world',

			Func = function()
                Tthatcher()
			end
		}
	},
    {
		Type = "Button",
		Name = "Shuffle",
		Arguments = {
			Text = 'Shuffle images',
			Tooltip = 'Shuffle images',

			Func = function()
                AddImage()
			end
		}
	},
    {
		Type = "Button",
		Name = "ShuffleS",
		Arguments = {
			Text = 'Shuffle sounds',
			Tooltip = 'Shuffle sounds',
			Func = function()
                AddSound()
			end
		}
	},
    {
		Type = "Button",
		Name = "ShuffleT",
		Arguments = {
			Text = 'Shuffle text',
			Tooltip = 'might break the game idk',
			Func = function()
                ShuffleText()
			end
		}
	},
    {
        Type = "Divider",
    },
    {
        Type = "Label",
        Name = "LabSepart",
        Arguments = {
            "More Useless Client Sided Stuff"
        }
    },
    {
		Type = "Button",
		Name = "ShuffleSP",
		Arguments = {
			Text = 'Shuffle Sound pitch',
			Tooltip = 'Shuffle pitches of sounds',
			Func = function()
                ShuffleSPitch()
			end
		}
	},
    {
		Type = "Button",
		Name = "randomize images (from marketplace)",
		Arguments = {
			Text = 'Shuffle images(v2)',
			Tooltip = 'oh my days lsplash',
			Func = function()
            ReplaceGoogledImages()
			end
		}
	},

-- Too useless to be added
 --[[   {
		Type = "Button",
		Name = "ShuffleAT",
		Arguments = {
			Text = 'Add Tremolo',
			Tooltip = 'adds tremolo to sounds',
			Func = function()
                AddTremolo()
			end
		}
	},
    {
		Type = "Button",
		Name = "ShuffleDT",
		Arguments = {
			Text = 'Disable Tremolo',
			Tooltip = 'Disables tremolo to sounds',
			Func = function()
                DTrem()
			end
		}
	},
    {
		Type = "Button",
		Name = "ShuffleAT",
		Arguments = {
			Text = 'Add Chorus',
			Tooltip = 'adds Chorus to sounds',
			Func = function()
                AddChorus()
			end
		}
	},
    {
		Type = "Button",
		Name = "Chorusdisable",
		Arguments = {
			Text = 'Disable Chorus',
			Tooltip = 'uh i um i dont know bruh can you explain it to me',
			Func = function()
                DCE()
			end
		}
	},]]
    {
        Type = "Divider",
    },
    {
        Type = "Label",
        Name = "BPas",
        Arguments = {
            "Bypass entity"
        }
    },
	{
		Type = "Toggle",
		Name = "FigGodMod",
		Arguments = {
			Text = 'Avoid Figure',
			Tooltip = 'Might be glitchy in door 100',
		    Default = false,

			Callback = function(value)
            if game.PlaceId == 6516141723 then
                print("Not Main Doors")
                getgenv().Library:Notify("Sir, this is a wendy's.", 5)
            elseif game.PlaceId == 6839171747 then
             tval = value
                print("MSPaint Skibidi Rizzling "..tostring(value))
                if tval == true then
                repeat
                    wait(0.15)
                    --enabled = Options["StupidAddon_FigGodMod"]Wtf was this for
                  if yes == true then
                 for i,v in pairs(workspace:GetDescendants()) do
                 if v.Name == "FigureRig" and tval then
                    print("found")
                   FigRoom = v.Parent.Parent
                   FigRig = v
                   if FigRoom ~= nil then
                    --print(tostring(tval))
                    if FigRoom ~= nil then
                     er =  (collision.Parent.HumanoidRootPart.Position - FigRoom.FigureSetup.FigureRig.Root.Position).Magnitude
                    end
                 print(tostring(er))
                     if er <= 25 and tval and FigRig and not FigNear then
                    FigNear = true
                 collision.Position -= Vector3.new(0, -18, 0) --not too high so uhh idk 
                 elseif er >= 25 and FigRig and FigNear and tval then
                    FigNear = false
                 collision.Position -= Vector3.new(0, 18, 0)
                 end
                 end
                   for MSPAINTISTHEBESTDOORSSCRIPTINTHEWORLDBECAUSEITISANDITSGOOD, sskib in pairs(v:GetDescendants()) do
                    if sskib:IsA("BasePart") then
                        sskib.CanTouch = false --P. Diddy
                    end
                   end
                else
                --Nothing happens
                end
            end
        end
               

        
    until not tval
        print("Stopped")
else

end
end
end
		}
	}
	}
} 

return Addon
