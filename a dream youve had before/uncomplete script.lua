getgenv().Skibidisz = false
z = 100
flr = 204
repeat
sd = game.Players.LocalPlayer.leaderstats.Floor.Value
if not  workspace.ActiveFloors:FindFirstChild("Floor"..sd + 1):FindFirstChild("Parts") then
eg = false
z = workspace.ActiveFloors:FindFirstChild("Floor"..sd + 1).Stairs.Part.Position.Y + 5
elseif  workspace.ActiveFloors:FindFirstChild("Floor"..sd + 1):FindFirstChild("Parts") then
eg = true
z = workspace.ActiveFloors:FindFirstChild("Floor"..sd + 1).Parts.Floor.Position.Y + 5
end
local e=Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,z,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z)
local TweenService = game:GetService("TweenService")
player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")
	if eg then
	ez = math.random(2,3)
	elseif not eg then
	ez = math.random(5,7)
	end
	
	local info = TweenInfo.new(ez,Enum.EasingStyle.Linear) -- how long the tween will play for
	
	local Animation = TweenService:Create(hrp, info, {CFrame = CFrame.new(e)})
	Animation:Play()
	Animation.Completed:Wait()

until getgenv().Skibidisz == true
	
