local TweenService = game:GetService("TweenService")
local plataforma = script.Parent

local info = TweenInfo.new(
	10, 
	Enum.EasingStyle.Sine, 
	Enum.EasingDirection.InOut, 
	-1, 
	true
)

local objetivo = {Position = Vector3.new(-1030.306, 73.1, 188.416)} -- Posição da Ilha B

local movimento = TweenService:Create(plataforma, info, objetivo)

movimento:Play()