local twr = game:GetService("TweenService")
local runser = game:GetService("RunService")
local ehe = script.Parent
local tween = twr:Create(ehe,TweenInfo.new(5.7,Enum.EasingStyle.Cubic,Enum.EasingDirection.InOut,-1,true),{
	CFrame = ehe.CFrame*CFrame.new(0,0,170) //move x,y,z
})
tween:Play()

local lastpo = ehe.Position

runser.Stepped:Connect(function(_, deltaTime)
	local currentpo = ehe.Position
	local deltapo = currentpo - lastpo 
	local velocity = deltapo / deltaTime
	ehe.AssemblyLinearVelocity = velocity
	lastpo = currentpo
end)
