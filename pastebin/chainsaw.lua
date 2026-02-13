--- // Chainsaw // ---
-- // by fo43123

script.Name = 'Gay Chainsaw For Gay People'
local me = game:GetService('Players').LocalPlayer
local char = me.Character
local hum = char['Humanoid']
local hd = char['Head']
local ts = char['Torso']
local ra = char['Right Arm']
local la = char['Left Arm']
local rl = char['Right Leg']
local ll = char['Left Leg']
local root = char['HumanoidRootPart']
local rj = root['RootJoint']
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local rh = ts['Right Hip']
local lh = ts['Left Hip']
local nk = ts['Neck']
local hitsounds = {'703633905', '264486467' ,'356551938'}
local sine = 0
local change = 1
local attack = false
local cananim = true
local equipped = false
local cooldown = true
local isonhit = false
local backidle = false
local hold = false
local onrun = false
local rj0 = rj.C0
local rs0 = rs.C0
local ls0 = ls.C0
local rh0 = rh.C0
local lh0 = lh.C0
local nk0 = nk.C0
local cc = workspace.CurrentCamera
local cos = math.cos
local sin = math.sin
local rad = math.rad
local rand = math.random
local cfn = CFrame.new
local cfa = CFrame.Angles
local v3 = Vector3.new
local ww = Instance.new('Sound', hd); ww.Looped = true; ww.Volume = 3; ww.SoundId = 'rbxassetid://'; ww.PlaybackSpeed = 0.51
local ww2 = Instance.new('Sound', hd); ww2.Looped = true; ww2.Volume = 5; ww2.SoundId = 'rbxassetid://'
local mouse = me:GetMouse()
hum.Name = 'Gay Humanoid For Gay People'
hum.Health = 'inf'
hum.MaxHealth = 'inf'
hum.WalkSpeed = 16
hum.JumpPower = 50
ww:Play()
print([[
	F - Equip Chainsaw
	LMB - Chainsaw attack (Equipped)
]])

ArtificialHB = Instance.new('BindableEvent', script)
ArtificialHB.Name = 'Heartbeat'
script:WaitForChild('Heartbeat')

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()

game:GetService('RunService').Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

local chainsaw = Instance.new('Part', char)
local chainsaw2 = Instance.new('Part', char)
local chainsawidle = Instance.new('Sound', chainsaw2)
local chainsawON = Instance.new('Sound', chainsaw2)
local asd = Instance.new('ParticleEmitter')
chainsawmesh = Instance.new('SpecialMesh', chainsaw)
chainsaw2mesh = Instance.new('SpecialMesh', chainsaw2)
chainsawweld = Instance.new('ManualWeld', chainsaw)
chainsaw2weld = Instance.new('ManualWeld', chainsaw2)
chainsaw.CanCollide = false
chainsaw2.CanCollide = false
chainsaw.Size = v3(0, 0, 0)
chainsaw2.Size = v3(1, 1, 4)
chainsawmesh.Scale = v3(0.08, 0.08, 0.08)
chainsaw2mesh.Scale = v3(0.08, 0.08, 0.08)
chainsawmesh.MeshId = 'rbxassetid://536945307'
chainsawmesh.TextureId = 'rbxassetid://536945378'
chainsaw2mesh.MeshId = 'rbxassetid://536945307'
chainsaw2mesh.TextureId = 'rbxassetid://536945378'
chainsawweld.Part0 = ts
chainsawweld.Part1 = chainsaw
chainsaw2weld.Part0 = ra
chainsaw2weld.Part1 = chainsaw2
chainsawweld.C0 = cfn(0.2, -0.3, 0.65) * cfa(rad(-90), rad(90), rad(0))
chainsaw2weld.C0 = cfn(0, 0, 0) * cfa(rad(0), rad(0), rad(0))
chainsaw2.Transparency = 1
chainsawidle.SoundId = 'rbxassetid://1165167610'
chainsawON.SoundId = 'rbxassetid://1165167936'
chainsawON.Volume = 2
chainsawON.Looped = true
chainsawidle.Volume = 3
chainsawidle.Looped = true
asd.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.6, 0, 0))
asd.LightEmission = .1
asd.Size = NumberSequence.new(0.2)
asd.Texture = 'rbxassetid://291880914'
aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3),NumberSequenceKeypoint.new(1, 7)})
bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 10), NumberSequenceKeypoint.new(0.01, 0), NumberSequenceKeypoint.new(1, 1)})
asd.Transparency = bbb
asd.Size = aaa
asd.ZOffset = .9
asd.Acceleration = Vector3.new(0, -5, 0)
asd.LockedToPart = false
asd.EmissionDirection = "Back"
asd.Lifetime = NumberRange.new(1, 2)
asd.Rotation = NumberRange.new(-100, 100)
asd.RotSpeed = NumberRange.new(-100, 100)
asd.Speed = NumberRange.new(10)
asd.Enabled = false
asd.VelocitySpread = 100

function bloody(var, amount)
	local particle = asd:Clone()
	particle.Parent = var
	particle:Emit(amount)
end

function csound(id, parent, volume, pitch)
	local gaysound = Instance.new('Sound')
	gaysound.Parent = parent
	gaysound.SoundId = 'rbxassetid://'..id
	gaysound.PlaybackSpeed = pitch
	gaysound:Play()
	game.Debris:AddItem(gaysound, 5)
end

function kill(var)
	if player(var) then
		bloody(var, 2)
		local varhum = var.Parent:FindFirstChildOfClass('Humanoid')
		csound(hitsounds[math.random(1, #hitsounds)], var, 5, 1)
		if player(var).Parent:FindFirstChildOfClass('Humanoid').Health ~= 0 then
			local torso = var.Parent:FindFirstChild('Torso') or var.Parent:FindFirstChild('UpperTorso')
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3 * player(var).Size.X/5 * player(var).Size.Y/5 * player(var).Size.Z/5),NumberSequenceKeypoint.new(1, 7)})
			asd.Size = aaa
			bloody(torso, 2)
			player(var).Parent:BreakJoints()
			coroutine.wrap(function()
				for i = 1, 15 do
					hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), 0.5)
					swait()
				end
			end)()
			coroutine.wrap(function()
				if attack then
					hum.WalkSpeed = 19.9
					wait(1)
					hum.WalkSpeed = 14
				end
			end)()
			local bv = Instance.new('BodyVelocity', var)
			bv.MaxForce = v3(math.huge, math.huge, math.huge)
			bv.Velocity = cfn(chainsaw2.Position, var.Position).lookVector*50
			game.Debris:AddItem(bv, 0.1)
		end
	end
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function player(var)
	if var.Parent then
		if var.Parent:IsA('Model') and var.Parent:FindFirstChildOfClass('Humanoid') then
			if var.Parent:FindFirstChild('Torso') or var:FindFirstChild('Head') or var.Parent:FindFirstChild('UpperTorso') then
				if var.Parent.Name ~= me.Name then
					return var
				end
			end
		end
	end
end

function raycast(pos, direction, range, ignoredecendants)
	return workspace:FindPartOnRay(Ray.new(pos, direction.unit * range), ignoredecendants)
end

function swait(t)
	if t == 0 or t == nil then
		script.Heartbeat.Event:Wait()
	else
		for i = 0, t do
			script.Heartbeat.Event:Wait()
		end
	end
end

function activate()
	attack = true
	hold = true
	chainsawidle:Pause()
	aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3),NumberSequenceKeypoint.new(1, 7)})
	asd.Size = aaa
	hit = chainsaw2.Touched:connect(function(hit)
		kill(hit)
	end)
	local bg = Instance.new('BodyGyro', root)
	bg.MaxTorque = v3(0, 9000, 0)
	bg.D = 400
	bg.P = 9000
	hum.WalkSpeed = 12
	repeat
		bg.CFrame = cfn(root.Position, mouse.Hit.p)
		chainsaw2weld.C0 = chainsaw2weld.C0:lerp(cfn(-1, -1.55, -1.3) * cfa(rad(-30 + 10 * sin(sine/1)), rad(20 + 10 * sin(sine/1)), rad(10 + 10 * sin(sine/1))), 0.1)
		if attack and equipped then
			nk.C0 = clerp(nk.C0, nk0 * cfa(rad(3), rad(0), rad(0)) * cfn(0, 0, 0), .1)
			rs.C0 = clerp(rs.C0, rs0 * cfa(rad(11), rad(-3 + 3 * cos(sine/2)), rad(52)) * cfn(0, -0, 0), .1)
			ls.C0 = clerp(ls.C0, ls0 * cfa(rad(0), rad(-40 - 3 * cos(sine/2)), rad(-85)) * cfn(0, -0.95, 0), .1)
			chainsawON:Resume()
		end
		swait()
	until attack == false
	hum.WalkSpeed = 16
	bg:Destroy()
	hit:disconnect()
end

function equip()
	equipped = true
	cananim = false
	chainsaw.Transparency = 1
	chainsaw2.Transparency = 0
	hum.WalkSpeed = 16
	chainsawidle.Volume = 3
	chainsawidle:Resume()
	ww:Pause()
	ww2:Resume()
	repeat
		if attack == false and backidle == false then
			chainsaw2weld.C0 = chainsaw2weld.C0:lerp(cfn(-2, -0.9, -0.3) * cfa(rad(-50 + 1 * sin(sine/1)), rad(75 + 1 * sin(sine/1)), rad(0 + 3 * sin(sine/1))), 1)
		end
		if backidle then
			chainsaw2weld.C0 = chainsaw2weld.C0:lerp(cfn(-2, -0.9, -0.3) * cfa(rad(-50 + 10 * sin(sine/1)), rad(75 + 10 * sin(sine/1)), rad(0 + 10 * sin(sine/1))), 0.080)
		end
		if chainsawidle.IsPaused and equipped then
			cc.FieldOfView = 70 + chainsawON.PlaybackLoudness/90
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), chainsawON.PlaybackLoudness/5000)
		end
		if chainsawON.IsPlaying == false and equipped then
			chainsawidle:Resume()
		end
		if chainsawidle.IsPlaying and equipped then
			cc.FieldOfView = 70 + chainsawidle.PlaybackLoudness/90
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), chainsawidle.PlaybackLoudness/5000)
		end
		hum.JumpPower = 0
		if (root.Velocity * v3(1, 0, 1)).magnitude < 2 then
			rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0.07 * sin(sine/30)), .090)
			nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-5 * sin(sine/30)), rad(0), rad(0)) * cfn(0, 0, 0), .090)
			if attack == false and equipped then
				rs.C0 = clerp(rs.C0, rs0 * cfa(rad(11), rad(-3), rad(55)) * cfn(0, -0.2, 0), .090)
				ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-0), rad(-40), rad(-80)) * cfn(0, 0, 0), .1)
			end
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-10), rad(0)) * cfn(0, -0.07 * sin(sine/30), 0), .1)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(10), rad(0)) * cfn(0, -0.07 * sin(sine/30), 0), .1)
		elseif (root.Velocity * v3(1, 0, 1)).magnitude < 20 then
			rj.C0 = clerp(rj.C0, rj0 * cfa(rad(6), rad(0) + root.RotVelocity.Y/40, rad(10 * sin(sine/6))) * cfn(0, 0, 0.010 + cos(sine/3)), 0.050)
			nk.C0 = clerp(nk.C0, nk0 * cfa(rad(2 * sin(sine/6)), rad(-2 * sin(sine/6)), rad(-8 * sin(sine/6)) + root.RotVelocity.Y/50) * cfn(0, 0, 0), .050)
			if attack == false and equipped then
				rs.C0 = clerp(rs.C0, rs0 * cfa(rad(11), rad(-3), rad(55)) * cfn(0, -0.2, 0), 0.1)
				ls.C0 = clerp(ls.C0, ls0 * cfa(rad(0), rad(-47), rad(-80)) * cfn(0, 0, 0), 0.1)
			end
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) + rl.RotVelocity.Y / 40, rad(0), rad(90 * sin(sine/6))) * cfn(-0.030 + cos(sine/6), -0.030 + cos(sine/6), 0), 0.080)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) + -ll.RotVelocity.Y / 40, rad(0), rad(90 * sin(sine/6))) * cfn(-0.030 + cos(sine/6), -0.010 - cos(sine/6), 0), 0.080)
		end
		swait()
	until equipped == false
end

function unequip()
	coroutine.wrap(function()
		for i = 1, 15 do
			chainsawidle.Volume = chainsawidle.Volume - 0.2
			if chainsawidle.Volume <= 0 then
				chainsawidle:Stop()
			end
			swait()
		end
	end)()
	cananim = true
	ww:Resume()
	ww2:Pause()
	cooldown = false
	chainsawON:Stop()
	hum.JumpPower = 50
	chainsaw2.Transparency = 1
	chainsaw.Transparency = 0
	if onrun then
		hum.WalkSpeed = 18
	else
		hum.WalkSpeed = 16
	end
	pcall(function()
	hit:Disconnect()
	end)
	if root:FindFirstChildOfClass('BodyGyro') then
		root:FindFirstChildOfClass('BodyGyro').Parent = nil
	end
	equipped = false
	wait(0.5)
	cooldown = true
end

mouse.Button1Down:connect(function()
	if hold == false and equipped and attack == false then
		hold = true
		backidle = false
		activate()
	end
end)

mouse.Button1Up:connect(function()
	if hold and attack then
		hold = false
		attack = false
		backidle = true
		chainsawON:Stop()
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'f' and equipped == false and cooldown then
		equip()
	elseif k == 'f' and equipped then
		unequip()
	end	
end)

mouse.KeyDown:connect(function(k)
	if k == 'q' and equipped == false then
		if onrun == false then
			onrun = true
			hum.WalkSpeed = 18
		elseif onrun then
			onrun = false
			hum.WalkSpeed = 16
		end
	end
end)

while true do
	sine = sine + change
	local tsvel = (root.Velocity * v3(1, 0, 1)).magnitude
	local verticalvel = (root.Velocity).y
	local hitfloor = raycast(root.Position, (cfn(root.Position, root.Position + v3(0, -1, 0))).lookVector, 4 * 1, char)
	if equipped == false then
		cc.FieldOfView = 70 + ww.PlaybackLoudness/500
		hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), ww.PlaybackLoudness/10000)
		if equipped and ww2.IsPlaying then
			cc.FieldOfView = 70 + ww2.PlaybackLoudness/500
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), ww2.PlaybackLoudness/15000)
		end
	end
	pcall(function()
		for i,v in pairs(char:GetChildren()) do
			if v:IsA('LocalScript') and v.Name == 'Animate' then
				v.Parent = nil
				for i,v in pairs(hum:GetPlayingAnimationTracks()) do
					v:Stop()
				end
				coroutine.wrap(function()
					wait(3)
					for i,v in pairs(hum:GetChildren()) do
						if v:IsA('Animator') then
							v.Parent = nil
						end
					end
				end)()
			end
		end
	end)
	if verticalvel > 1 and cananim and hitfloor == nil then
		change = 1
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(-10), rad(0) + root.RotVelocity.Y/30, rad(0)) * cfn(0, 0, 0), 0.1)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-15), rad(0), rad(0)) * cfn(0, 0, 0), .1)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-10), rad(0) + ra.RotVelocity.Y/30, rad(-0)) * cfn(0, -0, 0), .15)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(0) + la.RotVelocity.Y/30, rad(0)) * cfn(0, -0, -0), .15)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0), rad(0), rad(-0)) * cfn(0.55, 1, 0), 0.1)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
	elseif verticalvel < -1 and cananim and hitfloor == nil then
		change = 1
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(30), rad(0) - root.RotVelocity.Y/30, rad(0)) * cfn(0, 0, 0), 0.050)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(10), rad(0), rad(0)) * cfn(0, 0, 0), .1)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-30), rad(0) - ra.RotVelocity.Y/30, rad(-0)) * cfn(0, -0.2, 0), .050)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-30), rad(0) - la.RotVelocity.Y/30, rad(0)) * cfn(0, -0.2, -0), .050)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0), rad(0), rad(-0)) * cfn(0.55, 1, 0), 0.1)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
	elseif tsvel < 2 and cananim and hitfloor ~= nil then
		change = 1
		chainsawweld.C0 = chainsawweld.C0:lerp(cfn(-0.2, -0.3, 0.65) * cfa(rad(-90), rad(90), rad(0)), 0.1)
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0.07 * sin(sine/30)), .1)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-2 * sin(sine/30)), rad(0), rad(15)) * cfn(0, 0, 0), .1)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-10), rad(-1 + 5 * sin(sine/30)), rad(-0)) * cfn(0, -0, 0), .1)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(1 + 5 * sin(sine/30)), rad(0)) * cfn(0, 0, 0), .1)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(0)) * cfn(0, -0.07 * sin(sine/30), 0), .1)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, -0.07 * sin(sine/30), 0), .1)
	elseif onrun == false and tsvel < 20 and cananim and hitfloor ~= nil then
		change = 0.9
		chainsawweld.C0 = chainsawweld.C0:lerp(cfn(-0.2, -0.3 + 0.2 * cos(sine/3), 0.65) * cfa(rad(-90) + -0.5 * cos(sine/3), rad(90), rad(0)), 0.030)
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(6), rad(0) + root.RotVelocity.Y/40, rad(10 * sin(sine/6))) * cfn(0, 0, -0.010 + cos(sine/3)), 0.050)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(2 * sin(sine/6)), rad(-2 * sin(sine/6)), rad(-8 * sin(sine/6)) + root.RotVelocity.Y/50) * cfn(0, 0, 0), .050)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-5), rad(5 * cos(sine/6)), rad(-60 * sin(sine/6))) * cfn(0, -0, 0), 0.050)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-5), rad(5 * cos(sine/6)), rad(-60 * sin(sine/6))) * cfn(0, 0, 0.050), 0.050)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) + rl.RotVelocity.Y / 40, rad(0), rad(90 * sin(sine/6))) * cfn(0.05 + cos(sine/6), 0.1 + cos(sine/6), 0), 0.080)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) + -ll.RotVelocity.Y / 40, rad(0), rad(90 * sin(sine/6))) * cfn(-0.05 + cos(sine/6), 0.1 - cos(sine/6), 0), 0.080)
	elseif onrun and tsvel < 20 and cananim and hitfloor ~= nil then
		change = 0.9
		chainsawweld.C0 = chainsawweld.C0:lerp(cfn(-0.2, -0.3 + 0.2 * cos(sine/3), 0.65) * cfa(rad(-90) + -0.5 * cos(sine/3), rad(90), rad(0)), 0.050)
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(8), rad(0) + root.RotVelocity.Y/40, rad(10 * sin(sine/6))) * cfn(0, 0, 0.010 + cos(sine/3)), 0.060)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(2 * sin(sine/6)), rad(-2 * sin(sine/6)), rad(-8 * sin(sine/6)) + root.RotVelocity.Y/50) * cfn(0, 0, 0), .060)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-5), rad(5 * cos(sine/6)), rad(-60 * sin(sine/6))) * cfn(0, -0, 0), 0.060)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-5), rad(5 * cos(sine/6)), rad(-60 * sin(sine/6))) * cfn(0, 0, 0.060), 0.060)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) + rl.RotVelocity.Y / 40, rad(0), rad(90 * sin(sine/6))) * cfn(0.05 + cos(sine/6), 0.1 + cos(sine/6), 0), 0.090)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) + -ll.RotVelocity.Y / 40, rad(0), rad(90 * sin(sine/6))) * cfn(-0.05 + cos(sine/6), 0.1 - cos(sine/6), 0), 0.090)
	end
	if hum.WalkSpeed > 20 and onrun == false and attack == false then
		hum.WalkSpeed = 16
	elseif hum.WalkSpeed < 20 and onrun and attack == false then
		hum.WalkSpeed = 18
	end
	swait()
end
