--- [[ the deadly gun by fo43123, i was bored aaw ]] ---

local p = game:GetService('Players').LocalPlayer
local char = p.Character
local human = char.Humanoid
local ts = char['Torso']
local hed = char['Head']
local ra = char['Right Arm']
local la = char['Left Arm']
local rl = char['Right Leg']
local ll = char['Left Leg']
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local act = false
local yes = false
local nvm = true
local equip = Instance.new('Sound')
local boom = Instance.new('Sound')
local sun = Instance.new('Sound')
local sunre = Instance.new('Sound')
local mse = p:GetMouse()
print([[
	-- Keys --
	'F' equipa a arma.
	'Botão Esquerdo do mouse' atira projeteis enquanto a arma estiver equipada.
	'R' enquanto a arma estiver equipada, atira um raio do ceu, lol.
	'M' para a musica, ou volta.
]])

local gun = Instance.new('Part', ra)
gun.Size = Vector3.new(0.52, 2.24, 3.18)
gun.CanCollide = false
local gunmesh = Instance.new('SpecialMesh', gun)
gunmesh.MeshId = 'rbxassetid://432161173'
gunmesh.TextureId = 'rbxassetid://432161246'
gunmesh.Scale = Vector3.new(0.05, 0.05, 0.05)
local gunweld = Instance.new('Weld', ra)
local wat = Instance.new('Part', gun)
local omg = Instance.new('Model', workspace)
wat.Size = Vector3.new(0.19, 0.27, 0.06)
wat.Transparency = 1
wat.CanCollide = false
local ww = Instance.new('Weld', gun)
ww.Part0 = gun
ww.Part1 = wat
ww.C1 = CFrame.new(-0, 1.195, -0.69) * CFrame.Angles(math.rad(90), 0, 0)
gunweld.Part0 = ra
gunweld.Part1 = gun
gunweld.C0 = CFrame.new(0, -1.52, -0.5) * CFrame.Angles(math.rad(-90), math.rad(-180), 0)
sunre.Parent = hed
sunre.SoundId = 'rbxassetid://904882921'
sunre.Volume = 1.5
sunre.Looped = true
sunre:Play()
sun.Parent = gun
sun.SoundId = 'rbxassetid://811841430'
sun.Volume = 5
equip.Parent = gun
boom.Parent = gun
boom.SoundId = 'rbxassetid://141679994'
boom.Volume = 3
equip.SoundId = 'rbxassetid://169799883'
equip.Volume = 3
human.WalkSpeed = 30
human.JumpPower = 70

mse.KeyDown:connect(function(k)
	if k == 'm' then
		if sunre.IsPlaying == true then
			sunre:Pause()
		elseif sunre.IsPaused == true then
			sunre:Resume()
		end
	end
end)

human.HealthChanged:connect(function()
	if nvm == true then
		nvm = false
		human.MaxHealth = 'inf'
		human.Health = 'inf'
	else
		human.MaxHealth = 'inf'
		human.Health = 'inf'
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'f' then
		if act == false then
			act = true
			yes = true
			equip:Play()
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, -1, -9.9347659e-08, 0, 9.9347659e-08, -1, 0)
		elseif act == true then
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, -5.56362707e-08, 1, 0, -1, -5.56362707e-08, 0)
			act = false
			yes = false
		end
	end
end)

mse.Button1Down:connect(function()
	if yes == true then
		sun.PlaybackSpeed = 1.2
		sun:Play()
		wait()
			local beam = Instance.new('Part', wat)
			beam.Material = 'Neon'
			beam.Transparency = 0.5
			beam.BrickColor = BrickColor.new('Gold')
			beam.Size = Vector3.new(0.19, 0.27, 0.25)
			beam.Anchored = false
			beam.CFrame = wat.CFrame
			beam.CanCollide = false
			beam.Orientation = Vector3.new(90, 0, 0)
			local bv = Instance.new('BodyVelocity', beam)
			bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bv.Velocity = mse.Hit.lookVector*180
	beam.Touched:connect(function(hit)
		local h = hit.Parent:FindFirstChildOfClass('Humanoid')
		local hd = hit.Parent:FindFirstChild('Head')
			if h then
			h:TakeDamage(math.huge)
			hd.Mesh.MeshType = 'Brick'
			for i,v in pairs(hit.Parent:GetChildren()) do
				if v:IsA('Part') then
					v.Material = 'Neon'
					v.Transparency = 0.5
					v.BrickColor = BrickColor.new('Gold')
				end
			end
		end
	end)
	wait(1)
	beam:Destroy()
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'r' then
		if yes == true then
			sun.PlaybackSpeed = 1
			sun:Play()
			wait(.1)
			local giant = Instance.new('Part', char)
			giant.Size = Vector3.new(69.62, 637.86, 65.5)
			giant.CanCollide = false
			giant.Anchored = true
			giant.Material = 'Neon'
			giant.Transparency = 0.5
			giant.BrickColor = BrickColor.new('Gold')
			giant.CFrame = CFrame.new(mse.Hit.X, 0, mse.Hit.Z) * CFrame.Angles(math.rad(math.random(1, 10)), math.rad(math.random(5, 15)), 0)
			giant.Touched:connect(function(hit)
				local h = hit.Parent:FindFirstChildOfClass('Humanoid')
				local hd = hit.Parent:FindFirstChild('Head')
				if h then
					h:TakeDamage(math.huge)
					hd.Mesh.MeshType = 'Brick'
					for i,v in pairs(hit.Parent:GetChildren()) do
						if v:IsA('Part') then
							v.Material = 'Neon'
							v.Transparency = 0.5
							v.BrickColor = BrickColor.new('Gold')
						end
					end
				end
			end)
			for i = 0.5, 1, .1 do
				giant.Transparency = i
				wait()
				if i == 1 then
					giant:Destroy()
				end
			end
		end
	end
end)