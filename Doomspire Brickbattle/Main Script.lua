local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("DoomSpyre", "DarkTheme")
local Tab = Window:NewTab("DoomSpire")
local Tp = Tab:NewSection("Tp")
local player = game.Players.LocalPlayer

Tp:NewButton("tp to red", "ButtonInfo", function()
    player.Character:MoveTo(Vector3.new(-128, 24, -2))
end)

Tp:NewButton("tp to green", "ButtonInfo", function()
    player.Character:MoveTo(Vector3.new(1, 25, -131))
end)

Tp:NewButton("tp to yellow", "ButtonInfo", function()
    player.Character:MoveTo(Vector3.new(153, 24, 9))
end)

Tp:NewButton("tp to blue", "ButtonInfo", function()
    player.Character:MoveTo(Vector3.new(-0, 24, 127))
end)
