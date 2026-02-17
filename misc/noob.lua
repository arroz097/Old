local you = game.Players.LocalPlayer
local mse = you:GetMouse()
local tupapa = false
local mesh = you.Character['Head']:FindFirstChildOfClass('SpecialMesh')
local oof = Instance.new('Sound', you.Character['Head'])
local bd = you.Character:FindFirstChild('Body Colors')
if bd.Parent ~= nil then
	bd.HeadColor = BrickColor.new('Bright yellow')
	bd.TorsoColor = BrickColor.new('Bright blue')
	bd.RightArmColor = BrickColor.new('Bright yellow')
	bd.LeftArmColor = BrickColor.new('Bright yellow')
	bd.RightLegColor = BrickColor.new('Br. yellowish green')
	bd.LeftLegColor = BrickColor.new('Br. yellowish green')
end
for i,v in pairs(you.Character:GetChildren()) do
	if v:IsA('Shirt') then
		v.Parent = nil
	end
end
for i,v in pairs(you.Character:GetChildren()) do
	if v:IsA('Pants') then
		v.Parent = nil
	end
end
for i,v in pairs(you.Character:GetChildren()) do
	if v:IsA('Accessory') then
		v.Parent = nil
	end
end
you.Character['Humanoid'].WalkSpeed = you.Character['Humanoid'].WalkSpeed + 14 -- xdddddddddddwqdq
oof.SoundId = 'rbxassetid://12222242'
oof.Volume = 5

mse.KeyDown:connect(function(k)
	if k == 'f' then
			if tupapa == false then
				tupapa = true
				print'oof'
				oof:Play()
				oof.PlaybackSpeed = math.random(9, 15)/10
				coroutine.wrap(function()
				local ef1 = Instance.new('Part', you.Character)
				ef1.Material = 'Neon'
				ef1.Shape = 'Cylinder'
				ef1.CanCollide = false
				ef1.Anchored = true
				ef1.BrickColor = BrickColor.new('Br. yellowish green')
				ef1.Touched:connect(function(k)
					if k.Parent then
						if k.Parent:IsA('Model') then
							if k.Parent:FindFirstChildOfClass('Humanoid') then
								if k.Parent.Name ~= you.Name then
									local bv = Instance.new('BodyVelocity')
									local thathum = k.Parent:FindFirstChildOfClass('Humanoid')
									local thatroot = k.Parent:FindFirstChild('HumanoidRootPart')
									bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
									bv.Velocity = CFrame.new(ef1.Position, k.Position).lookVector*100
									bv.Parent = k
									game.Debris:AddItem(bv, .1)
									wait()
									thatroot.CFrame = thatroot.CFrame * CFrame.Angles(math.rad(math.random(0,360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
									wait()
									thathum.PlatformStand = true
								end
							end
						end
					end
				end)
				for i = 1, 15 do
					ef1.Size = ef1.Size:lerp(Vector3.new(0.05, 15, 15), .4)
					ef1.Transparency = i/20
					ef1.CFrame = you.Character['Torso'].CFrame * CFrame.new(0, -2.9, 0) * CFrame.Angles(0, 0, math.rad(90))
					wait()
				end
				ef1:Destroy()
			end)()
			for i = 1, 5 do
				mesh.Scale = mesh.Scale:lerp(Vector3.new(1.3, 1.3, 1.3), .5)
				wait()
			end
			for i = 1, 5 do
				mesh.Scale = mesh.Scale:lerp(Vector3.new(1.25, 1.25, 1.25), .5)
				wait()
			end
		wait(.3)
		tupapa = false
		end
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'r' then
		if tupapa == false then
			tupapa = true
			oof.PlaybackSpeed = math.random(9, 10)/10
			oof:Play()
			you.Character['HumanoidRootPart'].CFrame = CFrame.new(mse.Hit.Position + Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.rad(you.Character['HumanoidRootPart'].Orientation.Y), 0)
			local ef1 = Instance.new('Part', you.Character)
			ef1.Shape = 'Cylinder'
			ef1.Material = 'Neon'
			ef1.BrickColor = BrickColor.new('Bright yellow')
			ef1.CanCollide = false
			ef1.Anchored = true
			for i = 1, 15 do
				ef1.Size = ef1.Size:lerp(Vector3.new(0.05, 7, 7), .4)
				ef1.Transparency = i/15
				ef1.CFrame = you.Character['Torso'].CFrame * CFrame.new(0, -2.9, 0) * CFrame.Angles(0, 0, math.rad(90))
				wait()
			end
			ef1:Destroy()
			wait()
			tupapa = false
		end
	end
end)
