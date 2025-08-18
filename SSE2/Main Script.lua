print("Running "..identifyexecutor())
if hookmetamethod then
    print("✅Executor Supports hookmetamethod")
else
    warn("❌Executor does not Support hookmetamethod")
end
if hookfunction then
    print("✅Executor Supports hookfunction")
else
    warn("❌Executor does not Support hookfunction")
end
if getnamecallmethod then
    print("✅Executor Supports getnamecallmethod")
else
    warn("❌Executor does not Support getnamecallmethod")
end
if newcclosure then
    print("✅Executor Supports newcclosure")
else
    warn("❌Executor does not Support newcclosure")
end
if fireclickdetector then
    print("✅Executor Supports fireclickdetector")
else
    warn("❌Executor does not Support fireclickdetector, self-destructing..")
    warn("STOP!")
    error("STOP EXECUTING!!")
end 

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SSE2 GUI", "GrapeTheme")
local Tab = Window:NewTab("Click Exploit")
local Tab2 = Window:NewTab("Other Exploits")
local Stuff = Window:NewTab("Problems and credits")
local Section2 = Stuff:NewSection("Credits")
local Section = Tab:NewSection("Tools")
local Skeption = Tab2:NewSection("Exploits")
local AmountGotted = 0
local Amount = 1

Section:NewButton("moonstone", "Gets moonstone from the moon", function()
 fireclickdetector(Workspace.MoonstoneScript.Moonstone.ClickDetector)
 fireclickdetector(Workspace.MoonstoneScript.Moonstone.ClickDetector)
 fireclickdetector(Workspace.MoonstoneScript.Moonstone.ClickDetector)

end)
Section:NewButton("shockstone(Miranda)", "Gets shockstone from miranda", function()
 fireclickdetector(Workspace.Miranda.MirandaStoneScript.Shockstone.ClickDetector)
 fireclickdetector(Workspace.MirandaStoneScript.Shockstone.ClickDetector)
 fireclickdetector(Workspace.MirandaStoneScript.Shockstone.ClickDetector)

end)
Section:NewButton("shockstone(Typhon)", "Gets shockstones from Typhon", function()
 fireclickdetector(Workspace.Shockstone.ClickDetector)
 fireclickdetector(Workspace.Shockstone.ClickDetector)
fireclickdetector(Workspace.Shockstone.ClickDetector)

end)

Section:NewLabel("Exploits below require other planets to be colonized")
Section:NewSlider("Items collected", "SliderInfo", 10, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    Amount = s
end)

Section:NewButton("Get Factories", "Gets factories from factories.", function()
            AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Factory" and v.Parent:FindFirstChild("SurfaceGui") then
if string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"500/500") and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)

Section:NewButton("Get Mills", "Gets Mills from factories.", function()
            AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Mill" and v.Parent:FindFirstChild("SurfaceGui") then
if string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"500/500") and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)


Section:NewButton("Get Station Mills", "Gets Detailing Mills from factories.", function()
            AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Detailing" and v.Parent:FindFirstChild("SurfaceGui") then
if string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"500/500") and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
    end
    end
end
end)


Section:NewButton("Get Drills", "Gets Drills from factories.", function()
            AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Miner" and v.Parent:FindFirstChild("SurfaceGui") then
if tonumber(string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"Metal:%s*(%d+)/%d+")) > 150 and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)

Section:NewButton("Get Pumpjacks", "Gets Frackers from factories.", function()
            AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Fracker" and v.Parent:FindFirstChild("SurfaceGui") then
    if tonumber(string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"Metal:%s*(%d+)/%d+")) > 300 and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)


Section:NewButton("Get Junctions", "Gets Junctions from factories.", function()
            AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Junction" and v.Parent:FindFirstChild("SurfaceGui") then
    if tonumber(string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"Metal:%s*(%d+)/%d+")) > 100 and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)


Section:NewButton("Get Pickaxe", "Gets Pickaxe from factories.", function()
        AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Pickaxe" and v.Parent:FindFirstChild("SurfaceGui") then
    if tonumber(string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"Metal:%s*(%d+)/%d+")) > 125 and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then

AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)



Section:NewButton("Get Explosive", "Gets Frackers from factories.", function()
    AmountGotted = 0
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") and v.Parent.Name == "Explosive" and v.Parent:FindFirstChild("SurfaceGui")  then
    if tonumber(string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"Metal:%s*(%d+)/%d+")) > 50 and string.match(v.Parent.Parent.Parent.Control.SurfaceGui.TextLabel.Text,"anyone.") and AmountGotted < Amount then
AmountGotted = AmountGotted + 1
    fireclickdetector(v)
end
end
end
end)

Skeption:NewButton("Remote Spy", "Executes Simple Spy V3", function()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/lontongyt/Toolong/refs/heads/main/SSE2/SimpleSpyBackup.lua"))()

end)



Section2:NewLabel("KAVO UI : For the UI")
