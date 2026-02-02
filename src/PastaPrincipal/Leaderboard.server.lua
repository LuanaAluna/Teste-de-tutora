game.Players.PlayerAdded:Connect(function(plr)
	local folder = Instance.new("Folder", plr)
	folder.Name = "leaderstats"
	local coins = Instance.new("IntValue", folder)
	coins.Name = "Coins"
	coins.Value = 0	
end)





