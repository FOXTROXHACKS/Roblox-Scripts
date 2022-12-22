--_G.Enabled = true

local HRP = game.Players.LocalPlayer.character.HumanoidRootPart
local winterinterior = game.Workspace.Interiors["MainMap/Default"]

while wait() and _G.Enabled do
    for i, mark in pairs(winterinterior:GetChildren()) do
        if mark.Name == "GateTemplate" then
            wait(0.1)
            HRP.CFrame = mark.Handle.CFrame
            mark.Name = "Already Passed"
        end
    end
end
