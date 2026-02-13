--- [[ Shinra Tensei remake ]] ---
-- by fo43123

local me = game.Players.LocalPlayer
local mouse = me:GetMouse()
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
local anim = char:FindFirstChild('Animate')
local hitsounds = {'703633905', '264486467', '356551938'}
local base = workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base')
local sine = 0
local fall = 0
local fall2 = 0
local change = 1
local attack = false
local cc = workspace.CurrentCamera
local cos = math.cos
local sin = math.sin
local rad = math.rad
local rand = math.random
local cfn = CFrame.new
local cfa = CFrame.Angles
local v3 = Vector3.new
hum.WalkSpeed = 23
print('R - Activate')

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

function swait(t)
	if t == 0 or t == nil then
		script.Heartbeat.Event:Wait()
	else
		for i = 0, t do
			script.Heartbeat.Event:Wait()
		end
	end
end

function sound(id, parent, volume, pitch, timepos, loop, name)
	local s = Instance.new('Sound')
	s.Parent = parent
	s.SoundId = 'rbxassetid://'..id
	s.Volume = volume
	s.Name = name
	s.PlaybackSpeed = pitch
	s.Looped = loop
	s.TimePosition = timepos
	s:Play()
end

function camshake(duration, intensity)
	coroutine.wrap(function()
		for i = 1, duration do
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), 0.1 * intensity)
			swait()
		end
		hum.CameraOffset = v3(0, 0, 0)
	end)()
end

function tensei()
	attack = true
	local rightarmlerp = Instance.new('ManualWeld', ts)
	rightarmlerp.Part0 = root
	rightarmlerp.Part1 = ra
	rightarmlerp.C0 = cfn(1.5, 0, 0) * cfa(rad(0), rad(0), rad(0))
	local leftarmlerp = Instance.new('ManualWeld', ts)
	leftarmlerp.Part0 = root
	leftarmlerp.Part1 = la
	leftarmlerp.C0 = cfn(-1.5, 0, 0) * cfa(rad(0), rad(0), rad(0))
	local headlerp = Instance.new('ManualWeld', ts)
	headlerp.Part0 = root
	headlerp.Part1 = hd
	headlerp.C0 = cfn(0, 1.5, 0) * cfa(rad(0), rad(0), rad(0))
	local rightleglerp = Instance.new('ManualWeld', ts)
	rightleglerp.Part0 = root
	rightleglerp.Part1 = rl
	rightleglerp.C0 = cfn(0.5, -2, 0) * cfa(rad(0), rad(0), rad(0))
	local leftleglerp = Instance.new('ManualWeld', ts)
	leftleglerp.Part0 = root
	leftleglerp.Part1 = ll
	leftleglerp.C0 = cfn(-0.5, -2, 0) * cfa(rad(0), rad(0), rad(0))
	local torsolerp = Instance.new('ManualWeld', ts)
	torsolerp.Part0 = root
	torsolerp.Part1 = ts
	torsolerp.C0 = cfn(0, 0, 0) * cfa(rad(0), rad(0), rad(0))
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	root.Anchored = true
	sound(1638576136, hd, 10, 1, 4.6, false, 'tensei')
	for i = 1, 35 do
		camshake(10, 0.1)
		torsolerp.C0 = torsolerp.C0:lerp(cfn(0, 0, 0) * cfa(rad(-10), rad(0), rad(0)), 0.1)
		headlerp.C0 = headlerp.C0:lerp(cfn(0, 1.418, -0.424) * cfa(rad(-30), rad(0), rad(0)), 0.1)
		rightarmlerp.C0 = rightarmlerp.C0:lerp(cfn(0.707, 0.161, -0.638) * cfa(rad(60.9), rad(10.2), rad(-60.6)), 0.1)
		leftarmlerp.C0 = leftarmlerp.C0:lerp(cfn(-0.707, 0.161, -0.638) * cfa(rad(60.9), rad(-10.2), rad(60.6)), 0.1)
		rightleglerp.C0 = rightleglerp.C0:lerp(cfn(0.679, -2.056, 0.186) * cfa(rad(-0.15), rad(1.73), rad(9.85)), 0.1)
		leftleglerp.C0 = leftleglerp.C0:lerp(cfn(-0.679, -2.056, 0.186) * cfa(rad(-0.15), rad(-1.73), rad(-9.85)), 0.1)
		swait()
	end
	local effect = Instance.new('Part', char)
	local fakeeffect = Instance.new('Part', char)
	effect.Material = 'ForceField'
	effect.Transparency = 0
	effect.Anchored = true
	effect.CanCollide = false
	effect.Shape = 'Ball'
	fakeeffect.Anchored = false
	fakeeffect.CanCollide = false
	effect.Size = v3(0, 0, 0)
	fakeeffect.Shape = 'Ball'
	fakeeffect.Material = 'Glass'
	fakeeffect.Size = v3(0, 0, 0)
	fakeeffect.Transparency = 1
	fakeeffect.Touched:connect(function(hit) 
		if hit.Parent then
			if not hit:IsDescendantOf(char) and hit ~= base then
				local bv = Instance.new('BodyVelocity', hit)
				hit.Anchored = false
				bv.MaxForce = v3(math.huge, math.huge, math.huge)
				bv.Velocity = cfn(effect.Position, hit.Position).lookVector*500
				hit:BreakJoints()
				game.Debris:AddItem(bv, 0.1)
			end
		end
	end)
	for i = 1, 2000 do
		camshake(10, 3)
		fakeeffect.CFrame = ts.CFrame
		effect.CFrame = ts.CFrame
		torsolerp.C0 = torsolerp.C0:lerp(cfn(0, 0, 0) * cfa(rad(20), rad(0), rad(0)), 0.2)
		headlerp.C0 = headlerp.C0:lerp(cfn(0, 1.373, 0.592) * cfa(rad(30), rad(0), rad(0)), 0.15)
		rightarmlerp.C0 = rightarmlerp.C0:lerp(cfn(1.992, 0.274, 0.283) * cfa(rad(27.6), rad(-12.9), rad(85.6)), 0.2)
		leftarmlerp.C0 = leftarmlerp.C0:lerp(cfn(-1.992, 0.274, 0.283) * cfa(rad(27.6), rad(12.9), rad(-85.6)), 0.2)
		rightleglerp.C0 = rightleglerp.C0:lerp(cfn(0.689, -2.01, -0.429) * cfa(rad(1.7), rad(-9.8), rad(9.8)), 0.2)
		leftleglerp.C0 = leftleglerp.C0:lerp(cfn(-0.689, -2.01, -0.429) * cfa(rad(1.7), rad(9.8), rad(-9.8)), 0.2)
		effect.Size = effect.Size:Lerp(v3(2000, 2000, 2000), 0.00025)
		fakeeffect.Size = fakeeffect.Size:Lerp(v3(2000, 2000, 2000), 0.00025)
		swait()
	end
	fakeeffect:Destroy()
	effect:Destroy()
	for _,v in pairs(hd:GetChildren()) do
		if v:IsA('Sound') then
			if v.Name == 'tensei' then
				v.Parent = nil
			end
		end
	end
	for _,v in pairs(ts:GetChildren()) do
		if v:IsA('ManualWeld') then
			v.Parent = nil
		end
	end
	root.Anchored = false
	hum.WalkSpeed = 23
	hum.JumpPower = 50
	wait(1)
	attack = false
end

mouse.KeyDown:connect(function(key)
	if string.lower(key) == 'r' and attack == false then
		tensei()
	end
end)
