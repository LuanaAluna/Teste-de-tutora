local Players = game:GetService("Players")
local player = Players.LocalPlayer

local leaderstats = player:WaitForChild("leaderstats", 5) 
local quantidadedemoedas = leaderstats and leaderstats:WaitForChild("Coins", 5)
local moedanatela = script.Parent:WaitForChild("Dinheiro") 

local function atualizarTexto()
	moedanatela.Text = tostring(quantidadedemoedas.Value)
	end

quantidadedemoedas.Changed:Connect(atualizarTexto)
atualizarTexto()



