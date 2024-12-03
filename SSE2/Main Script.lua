local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("SSE2 GUI", "GrapeTheme")
local Tab = Window:NewTab("Tools and teams")
local Tab2 = Window:NewTab("player")
local Stuff = Window:NewTab("Problems and credits")
local Section = Stuff:NewSection("Credits")
local Section = Tab:NewSection("Tools")

Section:NewButton("moonstone", "Gets moonstone from the moon", function()
 fireclickdetector(Workspace.MoonstoneScript.Moonstone.ClickDetector)
wait(1)
 fireclickdetector(Workspace.MoonstoneScript.Moonstone.ClickDetector)
wait(1) fireclickdetector(Workspace.MoonstoneScript.Moonstone.ClickDetector)

end)
Section:NewButton("shockstone(Miranda)", "Gets shockstone from miranda", function()
 fireclickdetector(Workspace.Miranda.MirandaStoneScript.Shockstone.ClickDetector)
wait(1)
 fireclickdetector(Workspace.MirandaStoneScript.Shockstone.ClickDetector)
wait(1) fireclickdetector(Workspace.MirandaStoneScript.Shockstone.ClickDetector)

end)
Section:NewButton("shockstone(Typhon)", "Gets shockstones from Typhon", function()
 fireclickdetector(Workspace.Shockstone.ClickDetector)
wait(1)
 fireclickdetector(Workspace.Shockstone.ClickDetector)
wait(1) fireclickdetector(Workspace.Shockstone.ClickDetector)

end)


Section:NewLabel("KAVO UI : For the UI")
