
if game.PlaceId == 2753915549 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
elseif game.PlaceId == 4442272183 then
print('Turn ON')
elseif game.PlaceId == 7449423635 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
else
game:Shutdown()
end

if game.Players.LocalPlayer.Team==nil then 
    repeat pcall(function()
        task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main"):FindFirstChild("ChooseTeam")then 
            if string.find(tostring(getgenv().Team),"Pirate") then 
                for a,a in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated))do a.Function()end elseif string.find(tostring(getgenv().Team),"Marine")then for a,a in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated))do a.Function()end else for a,a in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated))do a.Function()end end end end)until game.Players.LocalPlayer.Team~=nil 
end
function CheckingSword()
    for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
        if v["Type"] == "Sword" then
            if v.Name == "Shisui" then
            local Shisui = true
            elseif v.Name == "Wando" then
            local Wando = true
            elseif v.Name == "Saddi" then
                local Saddi = true
            end
        end
    end
    if not Shisui then
    return "Shisui"
    elseif not Wando then
    return "Wando"
    elseif not Saddi then
    return "Saddi"
    end
    if Saddi and Wando and Shisui then
    return "Sucess"
    end
end
function GetJob(Sword)
    local GetJob = game:HttpGet("https://auth.v3vn.cfd/swordchecking.php?Type="..Sword)
    if GetJob == "error" then
    return false
    else
    loadstring(GetJob)()
    return ture
    end
end
task.spawn(function()
 while wait() do
   if CheckingSword() == "Sucess" then
    print('Fully TTK')
     return "Done"
   else
    GetJob(CheckingSword())
   end
 end
end) 
function BuySword()
    local args = {
        [1] = "LegendarySwordDealer",
        [2] = "1"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "LegendarySwordDealer",
        [2] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    local args = {
        [1] = "LegendarySwordDealer",
        [2] = "3"
    }
end
task.spawn(function()
 while wait() do
    BuySword()
 end
end)
