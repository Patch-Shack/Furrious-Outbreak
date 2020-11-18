--// Made by Toon#9077 \\--
local Teleports = {
	["shelter"] = {"Shelter [Flame Thrower]", CFrame.new(90, -2, -95)},
	["spawn lol"] = {"Spawn", CFrame.new(-10, 4, 6)},
	["test cham"] = {"Test Chamber", CFrame.new(-63, 4, 125)},
	["con room"] = {"The Control Room", CFrame.new(-67, 12, 185)},
	["W INF"] = {"White Infection Puddle", CFrame.new(-79, 4, 169)},
	["B INF"] = {"Black Infection Puddle", CFrame.new(-68, 4, 149)},
	["storage"] = {"Storage [Flame Thrower]", CFrame.new(-246, 4, 131)}
}

function tel(pos)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patch-Shack/Furrious-Outbreak/main/ui_lib.lua"))();
local Main = library:CreateSection("Teleports")
local Misc = library:CreateSection("Misc")

for i,v in pairs(Teleports) do
	Main:Button(Teleports[i][1], function()
		tel(Teleports[i][2])
	end)
end

Misc:Button("Reset", function()
	game.Players.LocalPlayer.Character:BreakJoints()
end)

Misc:Button("16 WalkSpeed (Default)", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Misc:Button("50 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Misc:Button("100 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

library:Ready()

local Ped = game.CoreGui:WaitForChild("ScreenGui")

game:GetService("UserInputService").InputBegan:Connect(function(Key,IsChat)
	if IsChat then return end
	if Key.KeyCode == Enum.KeyCode.M then
		Ped.Enabled = (not Ped.Enabled)
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Toggle UI",
	Text = "M",
	Duration = 3,
})

spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Patch-Shack/newLoad/master/Never%20Get%20Kicked%20for%20Being%20AFK"))();
end)
