--- [[ Simple thanos by fo43123, ya ]] ---

wait(5)
local p = game:GetService('Players').LocalPlayer
local char = p.Character
local hum = char.Humanoid
if char:FindFirstChild('Torso') then
	print('Loaded')
else
	error('This script doesnt accept R15 rig')
end
local ts = char.Torso
local hd = char.Head
local hdmesh = hd.Mesh
local ra = char['Right Arm']
local la = char['Left Arm']
local rl = char['Right Leg']
local ll = char['Left Leg']
local bd = char['Body Colors']
local root = char['HumanoidRootPart']
local transparency = 0.5
local gems = 'Glass'
local stone1 = false
local stone2 = false
local stone3 = false
local stone4 = false
local stone5 = false
local stone6 = false
local stoneact = false
local mse = p:GetMouse()
local hmm = Instance.new('Sound', hd)
local tp = Instance.new('Sound')
local puncho = Instance.new('Sound')
local jump = Instance.new('Sound')
jump.SoundId = 'rbxassetid://138186576'
jump.Volume = 3
puncho.SoundId = 'rbxassetid://2284201489'
puncho.Volume = 2
hmm.SoundId = 'rbxassetid://193035857'
hmm.Volume = 5
hmm.Looped = true
hmm.PlaybackSpeed = 0.8
tp.SoundId = 'rbxassetid://2467762386'
tp.PlaybackSpeed = 1
tp.Volume = 3.5
bd.HeadColor = BrickColor.new('Plum')
bd.TorsoColor = BrickColor.new('Plum')
bd.RightArmColor = BrickColor.new('Plum')
bd.LeftArmColor = BrickColor.new('Plum')
bd.RightLegColor = BrickColor.new('Plum')
bd.LeftLegColor = BrickColor.new('Plum')
for i,v in pairs(char:GetChildren()) do
	if v:IsA('Accessory') then
		v:Destroy()
	end
end
for i,v in pairs(char:GetChildren()) do
	if v:IsA('Shirt') then
		v:Destroy()
	end
end
local mnp = Instance.new('Model', ra)
mnp.Name = 'Glove'
local p1 = Instance.new('Part')
local p3 = Instance.new('Part')
local p4 = Instance.new('Part')
local p5 = Instance.new('Part')
local p9 = Instance.new('Part')
local p10 = Instance.new('Part')
local p11 = Instance.new('Part')
local p12 = Instance.new('Part')
local p13 = Instance.new('Part')
local p14 = Instance.new('Part')
local p15 = Instance.new('Part')
local p16 = Instance.new('Part')
local p17 = Instance.new('Part')
local p18 = Instance.new('Part')
local p19 = Instance.new('Part')
local w1 = Instance.new('Weld')
local w2 = Instance.new('Weld')
local w3 = Instance.new('Weld')
local w4 = Instance.new('Weld')
local w5 = Instance.new('Weld')
local w6 = Instance.new('Weld') 
local w7 = Instance.new('Weld')
local w8 = Instance.new('Weld')
local w9 = Instance.new('Weld')
local w10 = Instance.new('Weld')
local w11 = Instance.new('Weld')
local w12 = Instance.new('Weld')
local w13 = Instance.new('Weld')
local w14 = Instance.new('Weld')
local w15 = Instance.new('Weld')
local w16 = Instance.new('Weld')
local w17 = Instance.new('Weld')
local w18 = Instance.new('Weld')
local w19 = Instance.new('Weld')
p1.Name = 'Body'
p1.BrickColor = BrickColor.new('Bright yellow')
p1.Material = 'SmoothPlastic'
p1.Size = Vector3.new(1.07, 1.15, 1.06)
w1.Parent = ra
w1.Part0 = ra
w1.Part1 = p1
w1.C0 = CFrame.new(0, -0.5, 0)
p1.Parent = mnp
p3.Name = 'Dec1'
p3.BrickColor = BrickColor.new('Daisy orange')
p3.Material = 'SmoothPlastic'
p3.Size = Vector3.new(0.26, 0.32, 0.11)
w3.Parent = p1
w3.Part0 = p1
w3.Part1 = p3
w3.C0 = CFrame.new(0, 0.21, -0.52)
p3.Parent = mnp
p4.Name = 'Dec2'
p4.BrickColor = BrickColor.new('Bright yellow')
p4.Material = 'Marble'
p4.Size = Vector3.new(1.11, 1.06, 0.13)
w4.Parent = p1
w4.Part0 = p1
w4.Part1 = p4
w4.C0 = CFrame.new(-0.005, -0.03, -0.035)
p4.Parent = mnp
p5.Name = 'Dec3'
p5.BrickColor = BrickColor.new('Bright yellow')
p5.Material = 'Marble'
p5.Size = Vector3.new(1.11, 0.11, 1.1)
w5.Parent = p1
w5.Part0 = p1
w5.Part1 = p5
w5.C0 = CFrame.new(0, 0.55, 0)
p5.Parent = mnp
p9.Name = 'Fin1'
p9.BrickColor = BrickColor.new('Daisy orange')
p9.Material = 'SmoothPlastic'
p9.Size = Vector3.new(0.23, 0.58, 0.11)
w9.Parent = p1
w9.Part0 = p1
w9.Part1 = p9
w9.C0 = CFrame.new(0.515, -0.395, -0.34) * CFrame.Angles(0, math.rad(-90), 0)
p9.Parent = mnp
p10.Name = 'Fin2'
p10.BrickColor = BrickColor.new('Daisy orange')
p10.Material = 'SmoothPlastic'
p10.Size = Vector3.new(0.18, 0.58, 0.11)
w10.Parent = p1
w10.Part0 = p1
w10.Part1 = p10
w10.C0 = CFrame.new(0.4, -0.395, -0.53)
p10.Parent = mnp
p11.Name = 'Fin3'
p11.BrickColor = BrickColor.new('Daisy orange')
p11.Material = 'SmoothPlastic'
p11.Size = Vector3.new(0.19, 0.6, 0.13)
w11.Parent = p1
w11.Part0 = p1
w11.Part1 = p11
w11.C0 = CFrame.new(0.145, -0.385, -0.52)
p11.Parent = mnp
p12.Name = 'Fin4'
p12.BrickColor = BrickColor.new('Daisy orange')
p12.Material = 'SmoothPlastic'
p12.Size = Vector3.new(0.2, 0.6, 0.14)
w12.Parent = p1
w12.Part0 = p1
w12.Part1 = p12
w12.C0 = CFrame.new(-0.13, -0.38, -0.51)
p12.Parent = mnp
p13.Name = 'Fin5'
p13.BrickColor = BrickColor.new('Daisy orange')
p13.Material = 'SmoothPlastic'
p13.Size = Vector3.new(0.19, 0.54, 0.12)
w13.Parent = p1
w13.Part0 = p1
w13.Part1 = p13
w13.C0 = CFrame.new(-0.385, -0.39, -0.52)
p13.Parent = mnp
p14.Name = 'Gem1'
p14.BrickColor = BrickColor.new('Lime green')
p14.Shape = 'Ball'
p14.Material = gems
p14.Transparency = transparency
p14.Size = Vector3.new(0.18, 0.18, 0.18)
w14.Parent = p1
w14.Part0 = p1
w14.Part1 = p14
w14.C0 = CFrame.new(0.51, -0.33, -0.35)
p14.Parent = mnp
p15.Name = 'Gem2'
p15.BrickColor = BrickColor.new('Eggplant')
p15.Shape = 'Ball'
p15.Material = gems
p15.Transparency = transparency
p15.Size = Vector3.new(0.18, 0.18, 0.18)
w15.Parent = p1
w15.Part0 = p1
w15.Part1 = p15
w15.C0 = CFrame.new(0.4, -0.33, -0.53)
p15.Parent = mnp
p16.Name = 'Gem3'
p16.BrickColor = BrickColor.new('Dark blue')
p16.Shape = 'Ball'
p16.Material = gems
p16.Transparency = transparency
p16.Size = Vector3.new(0.18, 0.18, 0.18)
w16.Parent = p1
w16.Part0 = p1
w16.Part1 = p16
w16.C0 = CFrame.new(0.14, -0.33, -0.53)
p16.Parent = mnp
p17.Name = 'Gem4'
p17.BrickColor = BrickColor.new('Really red')
p17.Shape = 'Ball'
p17.Material = gems
p17.Transparency = transparency
p17.Size = Vector3.new(0.18, 0.18, 0.18)
w17.Parent = p1
w17.Part0 = p1
w17.Part1 = p17
w17.C0 = CFrame.new(-0.13, -0.34, -0.53)
p17.Parent = mnp
p18.Name = 'Gem5'
p18.BrickColor = BrickColor.new('Deep orange')
p18.Shape = 'Ball'
p18.Material = gems
p18.Transparency = transparency
p18.Size = Vector3.new(0.18, 0.18, 0.18)
w18.Parent = p1
w18.Part0 = p1
w18.Part1 = p18
w18.C0 = CFrame.new(-0.39, -0.33, -0.52)
p18.Parent = mnp
p19.Name = 'Gem6'
p19.BrickColor = BrickColor.new('New Yeller')
p19.Shape = 'Ball'
p19.Material = gems
p19.Transparency = transparency
p19.Size = Vector3.new(0.24, 0.24, 0.24)
w19.Parent = p1
w19.Part0 = p1
w19.Part1 = p19
w19.C0 = CFrame.new(0, 0.21, -0.52)
p19.Parent = mnp
jump.Parent = ts
puncho.Parent = p1
tp.Parent = p16
hmm.Parent = hd
wait()
hum.JumpPower = 100
hum.WalkSpeed = 30
hum.MaxHealth = 'inf'
hum.Health = 'inf'
hmm:Play()

hum.HealthChanged:connect(function(wat)
	if wat then
	hum.MaxHealth = 'inf'
	hum.Health = 'inf'
	else
		hum.MaxHealth = 'inf'
		hum.Health = 'inf'
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'e' then
		stoneact = true
		p16.Transparency = 0
		p16.Material = 'Neon'
		wait(.2)
		tp:Play()
		wait()
		ts.CFrame = CFrame.new(mse.Hit.X, mse.Hit.Y, mse.Hit.Z)
		wait()
		stoneact = false
		wait(.5)
		p16.Material = 'Glass'
		p16.Transparency = transparency
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'q' then
		if stoneact == false then
		stoneact = true
		jump:Play()
		wait(.5)
		p15.Transparency = 0
		p15.Material = 'Neon'
	local bv = Instance.new('BodyVelocity')
  bv.maxForce = Vector3.new(0, math.huge, 0)
  bv.Velocity = Vector3.new(0, 250, 0)
  bv.Parent = root
hum.WalkSpeed = 60
wait(.7)
bv.Parent = nil
wait(4)
hum.WalkSpeed = 30
stoneact = false
p15.Material = 'Glass'
p15.Transparency = transparency
        end
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'f' then
		if stoneact == false then
			stoneact = true
			p15.Transparency = 0
			p15.Material = 'Neon'
			local detector = Instance.new('Part')
		    detector.Parent = ra
		    detector.Transparency = 1
		    detector.CanCollide = false
		    detector.Size = Vector3.new(1, 0.53, 1)
	     	local wd = Instance.new('Weld')
		    wd.Parent = detector
		    wd.Part0 = ra
		    wd.Part1 = detector
		    wd.C0 = CFrame.new(0, -1, 0)
			detector.Touched:connect(function(wat)
				local mds = wat.Parent:FindFirstChild('HumanoidRootPart')
				local hd = wat.Parent:FindFirstChild('Head')
				local sh = wat.Parent:FindFirstChild('Shirt')
				local pnt = wat.Parent:FindFirstChild('Pants')
				if mds then
					hd.Mesh.MeshType = 'Brick'
					pcall(function()
					sh:Destroy()
					pnt:Destroy()
					puncho:Play()
					end)
					for i,v in pairs(wat.Parent:GetChildren()) do
						if v:IsA('Part') then
							v.Transparency = 0.6
							v.Material = 'Neon'
							v.BrickColor = BrickColor.new('Really red')
						end
					end
					wat.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(math.huge)
					local bv = Instance.new('BodyVelocity', mds)
					bv.MaxForce = Vector3.new(0, 0, math.huge)
					bv.Velocity = Vector3.new(0, 0, 300)
				end
			end)
			ts['Right Shoulder'].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, -1, -9.9347659e-08, 0, 9.9347659e-08, -1, 0)
			wait(.3)
			ts['Right Shoulder'].C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, -5.56362707e-08, 1, 0, -1, -5.56362707e-08, 0)
			wait(.2)
			p15.Material = 'Glass'
			p15.Transparency = transparency
			stoneact = false
			wd:Destroy()
			detector:Destroy()
		end
	end
end)