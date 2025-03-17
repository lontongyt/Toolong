--put this in autoexec if your executor does not have saveinstance
--this saveinstance script is not mine
--UNIVERSAL SYN SAVE INSTANCE https://github.com/luau/UniversalSynSaveInstance, https://discord.gg/wx4ThpAsmw 



local Params = {
 RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
 SSI = "saveinstance",
}
local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
local Options = {} -- Documentation here https://luau.github.io/UniversalSynSaveInstance/api/SynSaveInstance

getgenv().saveinstance = function()
synsaveinstance(Options)
end

getgenv().syn_saveinstance = getgenv().saveinstance
