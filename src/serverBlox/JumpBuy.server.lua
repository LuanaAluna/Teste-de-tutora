local buyButton = script.Parent 
local clickDetector = buyButton.ClickDetector 
local upgradeCost = 3


local function giveUpgrade(player)
	local humanoid = player.Character:findFirstChild("Humanoid") 
	local playerStats = player:FindFirstChild("leaderstats") 
	local playerGold = playerStats:FindFirstChild("Coins") 
	
	if playerGold.Value >= upgradeCost then
		humanoid.UseJumpPower = true
		humanoid.JumpPower = 150
	end
end

clickDetector.MouseClick:Connect(giveUpgrade)