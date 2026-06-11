--- [[ Soldier rocket ]] ---
-- by fo43123

local me = game:GetService('Players').LocalPlayer
local char = me.Character
local hum = char.Humanoid
local ts = char['Torso']
local hed = char['Head']
local rs = ts['Right Shoulder']
local ra = char['Right Arm']
local root = char['HumanoidRootPart']
local act = false
local a = false
local b = false
local baz = Instance.new('Part', ts)
local equip = Instance.new('Sound', baz)
local what = Instance.new('Sound', hed)
local bazm = Instance.new('SpecialMesh', baz)
local weld = Instance.new('Weld', ts)
local baz2 = Instance.new('Part', ra)
local bazm2 = Instance.new('SpecialMesh', baz2)
local weld2 = Instance.new('Weld', ra)
local idk = Instance.new('Part', baz)
local weld3 = Instance.new('Weld', baz2)
local deaths = {1080610583, 1106908323, 1106908778}
local mse = me:GetMouse()
baz.CanCollide = false
equip.SoundId = 'rbxassetid://169799883'
equip.Volume = 4
what.SoundId = 'rbxassetid://875922141'
what.Volume = 1
what.Looped = true
what:Play()
bazm.MeshId = 'rbxassetid://430320180'
bazm.TextureId = 'rbxassetid://430320184'
bazm.Scale = Vector3.new(0.5, 0.5, 0.5)
weld.Part0 = ts
weld.Part1 = baz
weld.C0 = CFrame.new(0.09, 0.37, 0.485) * CFrame.Angles(0, math.rad(180), math.rad(45))
baz2.CanCollide = false
baz2.Transparency = 1
bazm2.MeshId = 'rbxassetid://430320180'
bazm2.TextureId = 'rbxassetid://430320184'
bazm2.Scale = Vector3.new(0.5, 0.5, 0.5)
weld2.Part0 = ra
weld2.Part1 = baz2
weld2.C0 = CFrame.new(-0.02, -0.41, -0.615) * CFrame.Angles(0, 0, math.rad(180))
idk.Size = Vector3.new(0.47, 0.06, 0.44)
idk.Transparency = 1
idk.CanCollide = false
weld3.Part0 = baz2
weld3.Part1 = idk
weld3.C0 = CFrame.new(-0.025, 2.33, -0.19)
hum.WalkSpeed = 25
hum.JumpPower = 50
hum.MaxHealth = 500
hum.Health = 500

mse.KeyDown:connect(function(k)
	if k == 'f' then
		if act == false then
			act = true
			baz.Transparency = 1
			baz2.Transparency = 0
			hum.JumpPower = 0
			hum.WalkSpeed = 14
			ts.Anchored = true
			hum.PlatformStand = true
			what.Volume = 0.4
			equip:Play()
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, -1, 1.19248806e-08, 0, -1.19248806e-08, -1, 0)
			while wait() do
				repeat
			root.CFrame = CFrame.new(root.CFrame.p, mse.Hit.p) * CFrame.new(0, 0, 0)
			wait()
				until act == false
				break
			end
		elseif act == true then
			hum.PlatformStand = false
			ts.Anchored = false
			baz.Transparency = 0
			baz2.Transparency = 1
			hum.JumpPower = 50
			hum.WalkSpeed = 25
			what.Volume = 1
			rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			act = false
		end
	end
end)
local isup = false
mse.Button1Down:connect(function()
	if act == true then
		isup = false
		repeat
			wait()
			coroutine.wrap(function()
		local rocket = Instance.new('Part', idk)
		local shoot = Instance.new('Sound', rocket)
		local emi = Instance.new('ParticleEmitter', rocket)
		emi.Color = ColorSequence.new(Color3.new(0.333333, 0.333333, 0.333333),Color3.new(0.333333, 0.333333, 0.333333))
		emi.Texture = 'rbxasset://textures/particles/smoke_main.dds'
		emi.Transparency = NumberSequence.new(0.1)
		emi.Lifetime = NumberRange.new(0.7)
		emi.Speed = NumberRange.new(1.5)
        shoot.SoundId = 'rbxassetid://1540686713'
        shoot.Volume = 1
        local explode = Instance.new('Sound', rocket)
        explode.SoundId = 'rbxassetid://2214680392'
        explode.Volume = 4
		rocket.CanCollide = false
		rocket.Size = Vector3.new(0.51, 0.49, 2.14)
		local sp = Instance.new('SpecialMesh', rocket)
		sp.MeshId = 'rbxassetid://430335269'
		sp.TextureId = 'rbxassetid://430335273'
		sp.Scale = Vector3.new(0.5, 0.5, 0.5)
		rocket.CFrame = CFrame.new(idk.CFrame.p, mse.Hit.p) * CFrame.Angles(0, math.rad(180), 0)
		local bv = Instance.new('BodyVelocity', rocket)
		bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		bv.Velocity = mse.Hit.lookVector*180
			local s = shoot:Clone()
			s.Parent=shoot.Parent
			shoot:Play()
			game.Debris:AddItem(shoot, 1)
		wait()
		rocket.Touched:connect(function(hito)
			if hito:IsA('Part') or hito:IsA('MeshPart') then
				if a == false then
					a = true
				explode:Play()
				local exp = Instance.new('Explosion', rocket)
				exp.BlastPressure = 1000
				exp.BlastRadius = 5
						exp.Position = rocket.Position
						hito:BreakJoints()
				wait(1.35)
				rocket:Destroy()
				a = false
				end
			end
		end)
		wait(.5)
		b = false
		wait(3)
				rocket:Destroy()
				end)()
		until isup == true
	end
end)

mse.Button1Up:connect(function()
	isup = true
end)

hum.Died:connect(function()
	local die = Instance.new('Sound', hed)
	die.SoundId = 'rbxassetid://'..deaths[math.random(1, #deaths)]
	die.Volume = 10
	die:Play()
end)