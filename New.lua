
local Window = Library.CreateLib("test gui", "RJTheme3")

    local Tab = Window:NewTab("Main")


    local Section = Tab:NewSection("Player")

    Section: NewSlider("Speed", "SliderInfo", 110, 4, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

    Section: NewSlider("Gravity", "SliderInfo", 200, 1, function(g)
    Game.Workspace.Gravity = g
end)

local Tab = Window:NewTab("TestPlayer")

    Section: NewDropdown("world", "DropdownInf", { "JumpPower", "Speed", "Gravity"}, function(uj)
    if uj == "JumpPower" then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100


    elseif uj == "Speed" then 
    game.Players.LocalPLayer.Characteer.Humanoid.Speed = 100

    elseif uj == "Gravity" then
    game.Workspace.gravity = 10

    end
end)
