if not game.Players.LocalPlayer.Character:FindFirstChild("PaintBucket") then
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.PaintBucket)
end
startcolor = Color3.fromRGB(86 ,36 ,36)
getgenv().PColor = startcolor or BrickColor.random()
getgenv().autopaint = true
getgenv().CancelColor = Color3.fromRGB(	67 ,84 ,147) --Placeholder
getgenv().PaintTable = {}
getgenv().AdditionalPaintColor = Color3.fromRGB(123,0,123)

getgenv().clearPaintList = function()
table.clear(getgenv().PaintTable)
end

-- Mouse

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local ServerControls_upvr = game.Players.LocalPlayer.Character.PaintBucket:WaitForChild("Remotes"):WaitForChild("ServerControls")
local hum = plr.Character.Humanoid

-- GUI Set up
hum:UnequipTools()
pColPB = plr.Backpack.PaintBucket.LocalScript.PaletteGui.ColorPallet["Earth green"]:Clone()
pColPB.Parent = plr.Backpack.PaintBucket.LocalScript.PaletteGui.ColorPallet
pColPB.Position = UDim2.new(0, 27, 0, -55)
CColPB = pColPB:Clone()
CColPB.Parent = pColPB.Parent
CColPB.Position = UDim2.new(0,27,0,-75)
CColPB.ImageColor3 = getgenv().CancelColor
CColPB.Name = tostring(BrickColor.new(getgenv().CancelColor))
tbr = Instance.new("TextBox")
tbr.Name = "RTex"
tbr.Parent = pColPB.Parent
tbr.Size = UDim2.new(0.15,0,0.05,0)
tbr.Position = UDim2.new(0.3,0,-0.2,0)
tbg = Instance.new("TextBox")
tbg.Name = "GTex"
tbg.Parent = pColPB.Parent
tbg.Size = UDim2.new(0.15,0,0.05,0)
tbg.Position = UDim2.new(0.5,0,-0.2,0)
tbb = Instance.new("TextBox")
tbb.Parent = pColPB.Parent
tbb.Name = "BTex"
tbb.Size = UDim2.new(0.15,0,0.05,0)
tbb.Position = UDim2.new(0.7,0,-0.2,0)
StupidFrame = Instance.new("Frame",pColPB.Parent)
StupidFrame.Size = UDim2.new(1,0,1,0)
StupidFrame.BackgroundTransparency = 1
upd = Instance.new("TextButton")
upd.Parent = StupidFrame
upd.Name = "UpdateButton"
upd.Size = UDim2.new(0.15,0,0.05,0)
upd.Text = "update"
upd.Position = UDim2.new(0.9,0,-0.2,0)
hum:EquipTool(plr.Backpack.PaintBucket)

-- Mouse
upd.MouseButton1Click:Connect(function()
hum:UnequipTools()
hum:EquipTool(plr.Backpack.PaintBucket)
end)

mouse.Button1Down:Connect(function()
if mouse.Target then
if mouse.Target.Name == "Province" and not table.find(getgenv().PaintTable, mouse.Target) and plr.PlayerGui.PaletteGui.ColorPallet.ColorTitle.Text == tostring(BrickColor.new(getgenv().PColor)) or plr.PlayerGui.PaletteGui.ColorPallet.ColorTitle.Text == tostring(BrickColor.new(getgenv().AdditionalPaintColor))  then
table.insert(getgenv().PaintTable,mouse.Target) --Kebab Turk Tech
elseif mouse.Target.Name =="Province" and table.find(getgenv().PaintTable, mouse.Target) and plr.PlayerGui.PaletteGui.ColorPallet.ColorTitle.Text == tostring(BrickColor.new(getgenv().CancelColor)) then
table.remove(getgenv().PaintTable,table.find(getgenv().PaintTable,mouse.Target)) --Greek Gyros⚠
end
end
end)

game:GetService("RunService").Heartbeat:Connect(function()
tbr.Text = plr.PlayerGui.PaletteGui.ColorPallet:FindFirstChild(tbr.Name).Text
tbg.Text = plr.PlayerGui.PaletteGui.ColorPallet:FindFirstChild(tbg.Name).Text
tbb.Text = plr.PlayerGui.PaletteGui.ColorPallet:FindFirstChild(tbb.Name).Text
pColPB.Name = tostring(BrickColor.new(Color3.fromRGB(tonumber(tbr.Text),tonumber(tbg.Text),tonumber(tbb.Text))))
pColPB.ImageColor3 = BrickColor.new(pColPB.Name).Color
for i,v in pairs(getgenv().PaintTable) do
    task.spawn(function()
    if v.Color ~= getgenv().PColor and v.Color ~= getgenv().CancelColor then
ServerControls_upvr:InvokeServer("PaintPart", {
						Part = v;
						Color = getgenv().PColor;
					}, "Peace")
    end
    end)
    end
end)
