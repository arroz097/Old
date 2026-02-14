---- [[ Humvee script ]] ----
-- by fo43123

--[[ LocalPlayer customization]]--

local p = game:GetService('Players').fo43123; p:ClearCharacterAppearance()
local char = p.Character
local hum = char.Humanoid; hum.WalkSpeed = 60; hum.JumpPower = 0; hum.MaxHealth = 5000; hum.Health = 5000
local ff = Instance.new('ForceField', char); ff.Visible = false
local hd = char.Head; hd.Transparency = 1; hd.face.Transparency = 1
local ts = char.Torso; ts.Transparency = 1
local rl = char['Right Leg']; rl.Transparency = 1
local ll = char['Left Leg']; ll.Transparency = 1
local ra = char['Right Arm']; ra.Transparency = 1
local la = char['Left Arm']; la.Transparency = 1
local cooldown = true
local mse = p:GetMouse()

--[[ Humvee parts / Welds / Sounds ]]--

local car = Instance.new('Part', char); car.Name = 'Car'
local carmesh = Instance.new('SpecialMesh', car); carmesh.Name = 'Car Mesh'
local carweld = Instance.new('Weld', char); carweld.Part0 = ts; carweld.Part1 = car
local turret = Instance.new('Part', car); turret.Name = 'Turret'; turret.Size = Vector3.new(0.11, 0.17, 0.05); turret.CanCollide = false; turret.Transparency = 1
local turretweld = Instance.new('Weld', char); turretweld.Part0 = car; turretweld.Part1 = turret
local turretshoot = Instance.new('Sound', turret); turretshoot.SoundId = 'rbxassetid://376582729'; turretshoot.Volume = 3.5; turretshoot.Name = 'Turret Shoot'
local turreteffect = Instance.new('ParticleEmitter', turret); turreteffect.Enabled = false
local turreteffect2 = Instance.new('PointLight', turret); turreteffect2.Range = 9; turreteffect2.Brightness = 5; turreteffect2.Color = BrickColor.new('Brick yellow').Color; turreteffect2.Enabled = false
local motoridle = Instance.new('Sound', car); motoridle.Volume = 3; motoridle.SoundId = 'rbxassetid://516357430'; motoridle.Looped = true; motoridle.Name = 'Motor Idle'; motoridle:Resume()
local spotl = Instance.new('SpotLight', car); spotl.Angle = 80; spotl.Brightness = 10; spotl.Enabled = false; spotl.Face = 'Front'; spotl.Range = 25
local light = Instance.new('Sound', car); light.Volume = 1.5; light.SoundId = 'rbxassetid://537744814'
local ussr = Instance.new('Sound', car); ussr.Volume = 4; ussr.Looped = true; ussr.SoundId = 'rbxassetid://1064109642'
turreteffect.Texture = 'rbxassetid://461242617'
turreteffect.Size = NumberSequence.new(1,0)
turreteffect.Rate = 20
turreteffect.Lifetime = NumberRange.new(.1)
carmesh.MeshId = 'rbxassetid://550138900'
carmesh.TextureId = 'rbxassetid://550139064'
carmesh.Scale = Vector3.new(.22, .22, .22)
carweld.C0 = CFrame.new(0.01, 0.01, 0.01)
turretweld.C0 = CFrame.new(-0.01, 2.7, -5.8)
print('Humvee Loaded.')

--[[ Functions / Damage ]]--

mse.Button1Down:connect(function()
	if cooldown == true then
		cooldown = false
		turretshoot.PlaybackSpeed = math.random(0.8, 1.2)
		turretshoot:Play()
		turreteffect.Enabled = true
		turreteffect2.Enabled = true
		wait(.1)
		turreteffect.Enabled = false
		turreteffect2.Enabled = false
		local sht = Instance.new('Part', turret); sht.CanCollide = false; sht.Size = Vector3.new(0.82, 0.82, 0.82); sht.Shape = 'Ball'; sht.BrickColor = BrickColor.new('Deep orange'); sht.Transparency = 0.7; sht.Material = 'Neon'; sht.Name = 'Bullet'; sht.CFrame = turret.CFrame
		local bv = Instance.new('BodyVelocity', sht); bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bv.Velocity = mse.Hit.LookVector*250
		sht.Touched:connect(function(hit)
			local pl = hit.Parent:FindFirstChild('Humanoid')
			if pl then
				pl:TakeDamage(math.random(6, 9))
			end
		end)
		wait(.1)
		cooldown = true
		sht:Remove()
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'm' then
		if ussr.IsPlaying == false then
			ussr:Resume()
		elseif ussr.IsPlaying == true then
			ussr:Pause()
		end
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'l' then
		if spotl.Enabled == false then
			light.PlaybackSpeed = 1
			light:Play()
			spotl.Enabled = true
		elseif spotl.Enabled == true then
			light.PlaybackSpeed = 0.9
			light:Play()
			spotl.Enabled = false
		end
	end
end)

local bl = Instance.new('BlurEffect', workspace.CurrentCamera); bl.Size = 0
while wait() do
	bl.Size = turretshoot.PlaybackLoudness/100
end
