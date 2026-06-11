--- [[ a random shit by fo43123 ]] ---
-- k

local me = game.Players.LocalPlayer
local char = me.Character
local hum = char.Humanoid
local ts = char['Torso']
local hd = char['Head']
local mse = me:GetMouse()
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local root = char['HumanoidRootPart']
local pew = false
local s1 = false
local s2 = true
local ag = true
local ag2 = true
local ag3 = true
local ag4 = true
local rage = false
local q = false
local arms = {char['Right Arm'], char['Left Arm']}
local d1 = Instance.new('Part', arms[1])
local d2 = Instance.new('Part', arms[2])
d1.Size = Vector3.new(1.030, 0.9, 1.030)
d2.Size = Vector3.new(1.030, 0.9, 1.030)
d1.Material = 'SmoothPlastic'
d2.Material = 'SmoothPlastic'
d1.BrickColor = BrickColor.new('Bright red')
d2.BrickColor = BrickColor.new('Bright red')
d1.Transparency = 0
d2.Transparency = 0
d1.CanCollide = false
d2.CanCollide = false
local d1w = Instance.new('Weld', arms[1])
d1w.Part0 = arms[1]
d1w.Part1 = d1
d1w.C0 = CFrame.new(0, -.6, 0)
local d2w = Instance.new('Weld', arms[2])
d2w.Part0 = arms[2]
d2w.Part1 = d2
d2w.C0 = CFrame.new(0, -.6, 0)
local pow = Instance.new('Sound')
local pow2 = Instance.new('Sound')
local rag3 = Instance.new('Sound', hd)
rag3.SoundId = 'rbxassetid://482987702'
rag3.Volume = 5
pow2.SoundId = 'rbxassetid://170014277'
pow2.Volume = 2
pow.SoundId = 'rbxassetid://170014277'
pow.Volume = 2.5
pow.SoundId = 'rbxassetid://146099952'
pow.Volume = 2
hum.MaxHealth = 5000
hum.Health = 5000
hum.WalkSpeed = 20
for i,v in pairs(char:GetChildren()) do
	if v:IsA('Shirt') then
		v:Destroy()
	else
	end
end

local tp = function()
	mse.KeyDown:connect(function(k)
		if k == 'e' then
			if rage == true then
				ts.CFrame = CFrame.new(mse.Hit.p)
			end
		end
	end)
end

local ragew = function()
	if rage == true then
		rag3:Play()
		tp()
		print('im triggered')
		local tr1 = Instance.new('Trail', d1)
		local tr2 = Instance.new('Trail', d2)
		local at0 = Instance.new('Attachment', d1)
		local at1 = Instance.new('Attachment', d1)
		local at2 = Instance.new('Attachment', d2)
		local at3 = Instance.new('Attachment', d2)
		tr1.FaceCamera = true
		tr2.FaceCamera = true
		tr1.Attachment0 = at0
		tr1.Attachment1 = at1
		tr2.Attachment0 = at2
		tr2.Attachment1 = at3
		tr1.Lifetime = 0.030
		tr2.Lifetime = 0.030
		at0.Position = Vector3.new(0.364, 0, 0)
		at1.Position = Vector3.new(-0.364, 0, 0)
		at2.Position = Vector3.new(0.364, 0, 0)
		at3.Position = Vector3.new(-0.364, 0, 0)
		tr1.Color = ColorSequence.new(Color3.new(1, 0.34902, 0.34902),Color3.new(1, 0.34902, 0.34902))
		tr2.Color = ColorSequence.new(Color3.new(1, 0.34902, 0.34902),Color3.new(1, 0.34902, 0.34902))
		tr1.Transparency = NumberSequence.new(0.6)
		tr2.Transparency = NumberSequence.new(0.6)
		d1.Material = 'Neon'
		d2.Material = 'Neon'
		d1.Transparency = 0.2
		d2.Transparency = 0.2
		hum.WalkSpeed = 37
		hum.JumpPower = 75
		hum.MaxHealth = 50000
		hum.Health = 50000
		pow.Volume = math.huge
		pow2.Volume = math.huge
		local ds = Instance.new('DistortionSoundEffect', pow)
		local ds2 = Instance.new('DistortionSoundEffect', pow2)
		d1.Touched:connect(function(lol)
			if s1 == true then
				if rage == true then
					if ag3 == true then
						ag3 = false
				if lol.Parent:FindFirstChildOfClass('Humanoid') then
					lol.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(20)
					wait()
					ag3 = true
					end
					end
				end
			end
		end)
		d2.Touched:connect(function(lol)
		if s2 == true then
		if rage == true then
			if ag4 == true then
				ag4 = false
			if lol.Parent:FindFirstChildOfClass('Humanoid') then
				lol.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(20)
				wait()
				ag4 = true
				end
				end
				end
			end
		end)
		rag3.Ended:connect(function()
			hum.WalkSpeed = 20
			hum.JumpPower = 50
			hum.MaxHealth = 5000
			hum.Health = 5000
			pow.Volume = 2.5
			pow2.Volume = 2
			d1.Material = 'SmoothPlastic'
			d2.Material = 'SmoothPlastic'
			d1.Transparency = 0
			d2.Transparency = 0
			tr1:Destroy()
			tr2:Destroy()
			at0:Destroy()
			at1:Destroy()
			at2:Destroy()
			ds:Destroy()
			ds2:Destroy()
			rage = false
			wait(60)
			q = false
		end)
	end
end

mse.Button1Down:connect(function()
	if pew == false then
		pew = true
		local peww = pow:Clone()
		peww.Parent = arms[2]
		peww.PlaybackSpeed = 1.1
		peww:Play()
		game.Debris:AddItem(peww, 1.3)
		s1 = true
		d1.Touched:connect(function(lol)
			if s1 == true then
				if ag == true then
					ag = false
			if lol.Parent:FindFirstChildOfClass('Humanoid') then
				lol.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(math.random(5, 16))
				pow2.Parent = d1
				pow2:Play()
				wait()
				ag = true
				end
				end
			end
		end)
		hum.PlatformStand = true
		root.Anchored = true
		root.CFrame = CFrame.new(root.Position, mse.Hit.p)
		rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 2.22044605e-16, 0.999999881, -0.999999881, 1.19248798e-08, 0, -1.19248806e-08, -1, 0)
		wait(.1)
		rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
		hum.PlatformStand = false
		root.Anchored = false
		wait()
		pow.Parent = nil
		pew = false
		s1 = false
	end
end)

mse.Button2Down:connect(function()
	if pew == false then
		pew = true
		local peww = pow:Clone()
		peww.Parent = arms[2]
		peww.PlaybackSpeed = 1.1
		peww:Play()
		game.Debris:AddItem(peww, 1.3)
		s2 = true
		d2.Touched:connect(function(lol)
		if s2 == true then
			if ag2 == true then
				ag2 = false
			if lol.Parent:FindFirstChildOfClass('Humanoid') then
				lol.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(math.random(5, 16))
				pow2.Parent = d2
				pow2:Play()
				wait()
				ag2 = true
				end
				end
			end
		end)
		root.Anchored = true
		hum.PlatformStand = true
		root.CFrame = CFrame.new(root.Position, mse.Hit.p)
		ls.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 1, 1.19248806e-08, 0, 1.19248806e-08, -1, 0)
		wait(.1)
		hum.PlatformStand = false
		root.Anchored = false
		ls.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		wait()
		pow.Parent = nil
		pew = false
		s2 = false
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'f' then
		if q == false then
			q = true
		rage = true
		ragew()
		end
	end
end)