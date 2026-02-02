local player = game:GetService("Players")
local coin = script.Parent -- Path to coin

local used = false

function giveCoin(part)
	if part.Parent:FindFirstChild("Humanoid") == nil or used == true then
		return
	end
	used = true
	local player = player:GetPlayerFromCharacter(part.Parent)
	player.leaderstats.Money.Value = player.leaderstats.Money.Value + 1

	coin.Transparency = 1
	coin.Decal.Transparency = 1
	script.Disabled = true
	wait(math.random (20,30))
	coin.Transparency = 0
	coin.Decal.Transparency = 0
	script.Disabled = false
end

coin.Touched:Connect(giveCoin)