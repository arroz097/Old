--- // Template // ---

script.Name = 'Gay Script for Gay PeopLe'
local plr = game:GetService('Players').LocalPlayer
local char = plr.Character
local hum = char:FindFirstChildOfClass('Humanoid')
local ts = char:FindFirstChild('Torso')
local hd = char:FindFirstChild('Head')
local root = char:FindFirstChild('HumanoidRootPart')
local ra = char:FindFirstChild('Right Arm')
local la = char:FindFirstChild('Left Arm')
local rl = char:FindFirstChild('Right Leg')
local ll = char:FindFirstChild('Left Leg')
local rs = ts:FindFirstChild('Right Shoulder')
local ls = ts:FindFirstChild('Left Shoulder')
local rh = ts:FindFirstChild('Right Hip')
local lh = ts:FindFirstChild('Left Hip')
local nk = ts:FindFirstChild('Neck')
local rj = root:FindFirstChild('RootJoint')
local bases = workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base')
local hitsounds = {'264486467' ,'356551938'}
local debris = game:GetService('Debris')
local mouse = plr:GetMouse()
local cf = {n = CFrame.new, a = CFrame.Angles, euler = CFrame.fromEulerAnglesXYZ, orn = CFrame.fromOrientation}
local t = {i = table.insert, c = table.concat, r = table.remove}
local c3 = {rgb = Color3.fromRGB, n = Color3.new, hsv = Color3.fromHSV}
local str = {b = string.byte, s = string.sub, low = string.lower}
local m = {c = math.cos, s = math.sin, r = math.rad, rand = math.random, pi = math.pi, huge = math.huge, tan = math.tan}
local v = {t = Vector3.new, tw = Vector2.new}
local cam = workspace.CurrentCamera
local wepon = nil
local attack = false
local onsit = false
local onhit = false
local cananim = true
local anim = nil
local effects = nil
local regularwalk = 20
local regularjump = 60
local sine = 0
local change = 1
local rsc0, lsc0, rhc0, lhc0, rjc0, nkc0 = rs.C0, ls.C0, rh.C0, lh.C0, rj.C0, nk.C0

if char:FindFirstChild('Effects') then
	effects = char:FindFirstChild('Effects')
else
	effects = Instance.new('Folder', char)
	effects.Name = 'Effects'
end

hum.HealthChanged:connect(function()
	hum.MaxHealth = hum.MaxHealth * hum.MaxHealth
	hum.Health = hum.Health * hum.Health
end)

char.ChildRemoved:connect(function(lol)
	if effects ~= nil then
		if lol == effects then
			effects = Instance.new('Folder', char)
			effects.Name = 'Effects'
		end
	end
end)

ArtificialHB = Instance.new('BindableEvent', script)
ArtificialHB.Name = 'Heartbeat'
script:WaitForChild('Heartbeat')
 
frame = 1 / 60
tf = 0
allowframeloss = false
tossremaincolorder = false
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
        if tossremaincolorder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

function bloody(var, amount)
	local asd = Instance.new('ParticleEmitter')
	asd.Color = ColorSequence.new(Color3.new(1, 0, 0), Color3.new(.6, 0, 0))
	asd.LightEmission = .1
		asd.Size = NumberSequence.new(0.1)
	asd.Texture = 'rbxassetid://291880914'
	aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3),NumberSequenceKeypoint.new(1, 7)})
	local bbb = NumberSequence.new({NumberSequenceKeypoint.new(0, 10), NumberSequenceKeypoint.new(0.01, 0), 				NumberSequenceKeypoint.new(1, 1)})
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
	local particle = asd:Clone()
	particle.Parent = var
	particle:Emit(amount)
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

function sound(id, parent, vol, pitch, timeposition)
	local s = Instance.new('Sound')
	s.Parent = parent
	s.SoundId = 'rbxassetid://'..id
	s.Volume = vol
	s.PlaybackSpeed = pitch
	s.TimePosition = timeposition
	s:Play()
	debris:AddItem(s, pitch * 2)
end

function weld(parent, p0, p1, c0, c1)
	local gayweld = Instance.new('ManualWeld')
	gayweld.Parent = parent
	gayweld.Part0 = p0
	gayweld.Part1 = p1
	gayweld.C0 = c0
	gayweld.C1 = c1
	return gayweld
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function raycast(pos, direction, range, ignoredecendants)
	return workspace:FindPartOnRay(Ray.new(pos, direction.unit * range), ignoredecendants)
end

function camshake(duration, intensity)
	coroutine.wrap(function()
		for shake = 0, duration*10 do
			hum.CameraOffset = hum.CameraOffset:lerp(v.t(m.rand(-1, 1), m.rand(-1, 1), m.rand(-1, 1)), intensity/10)
			swait()
		end
	hum.CameraOffset = v.t(0, 0, 0)
	end)()
end

function kill(var)
	if checkNonPlayer(var) then
		bloody(var, 2)
		local varhum = checkNonPlayer(var):FindFirstChildOfClass('Humanoid')
		sound(hitsounds[math.random(1, #hitsounds)], var, 5, 1, 0.35)
		if checkNonPlayer(var):FindFirstChildOfClass('Humanoid').Health ~= 0 then
			aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3),NumberSequenceKeypoint.new(1, 7)})
			local torso = var.Parent:FindFirstChild('Torso') or var.Parent:FindFirstChild('UpperTorso')
			bloody(torso, 2)
			local bv = Instance.new('BodyVelocity', var)
			bv.MaxForce = v.t(math.huge, math.huge, math.huge)
			bv.Velocity = cf.n(wepon.Position, var.Position).lookVector*50
			game.Debris:AddItem(bv, 0.1)
			wait()
			checkNonPlayer(var).Parent:BreakJoints()
		end
	end
end

function checkplayer(player)
	if player.Parent then
		for _,v in pairs(game.Players:GetPlayers()) do
			if v.Name == player.Parent.Name then
				return v.Character
			end
		end
	end
end

function checkNonPlayer(nonplayer)
	if nonplayer.Parent then
		for _,v in pairs(nonplayer.Parent:GetDescendants()) do
			if v:FindFirstChild('Head') and v:FindFirstChild('Torso') then
				if v:FindFirstChildOfClass('Humanoid') then
					if nonplayer.Parent:IsA('Model') then
						return nonplayer
					end
				end
			end
		end
	end
end

function ragdoll(gaymodel)
	if checkNonPlayer(gaymodel) then
		checkNonPlayer(gaymodel):FindFirstChildOfClass('Humanoid').PlatformStand = true
		rs.Parent = nil
		ls.Parent = nil
		rh.Parent = nil
		lh.Parent = nil
		local ahd = Instance.new('Weld', ts)
		ahd.Name = 'Neck'
		ahd.Part0 = ts
		ahd.Part1 = hd
		ahd.C0 = CFrame.new(0, 1.5, 0)
		local ara = Instance.new('Glue', ts)
		ra.CFrame = ts.CFrame * CFrame.new(1.5, 0, 0)
		ara.Name = 'Right Shoulder'
		ara.Part0 = ts
		ara.Part1 = ra
		ara.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		ara.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		local idk1 = Instance.new('Part', char)
		idk1.Size = Vector3.new(1, 1, 1)
		idk1.Transparency = 1
		idk1.CFrame = ra.CFrame * CFrame.new(0, -0.5, 0)
		local w1 = Instance.new('Weld', ra)
		w1.Part0 = ra
		w1.Part1 = idk1
		w1.C0 = CFrame.new(0, -0.5, 0)
		local ala = Instance.new('Glue', ts)
		ala.Name = 'Left Shoulder'
		ala.Part0 = ts
		ala.Part1 = la
		ala.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		ala.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		local idk2 = Instance.new('Part', char)
		idk2.Size = Vector3.new(1, 1, 1)
		idk2.Transparency = 1
		idk2.CFrame = la.CFrame * CFrame.new(0, -0.5, 0)
		local w2 = Instance.new('Weld', la)
		w2.Part0 = la
		w2.Part1 = idk2
		w2.C0 = CFrame.new(0, -0.5, 0)
		local arl = Instance.new('Glue', ts)
		arl.Name = 'Right Hip'
		arl.Part0 = ts
		arl.Part1 = rl
		arl.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		arl.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		local idk3 = Instance.new('Part', char)
		idk3.Size = Vector3.new(1, 1, 1)
		idk3.Transparency = 1
		idk3.CFrame = rl.CFrame * CFrame.new(0, -0.5, 0)
		local w3 = Instance.new('Weld', rl)
		w3.Part0 = rl
		w3.Part1 = idk3
		w3.C0 = CFrame.new(0, -0.5, 0)
		local all = Instance.new('Glue', ts)
		all.Name = 'Left Hip'
		all.Part0 = ts
		all.Part1 = ll
		all.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		all.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		local idk4 = Instance.new('Part', char)
		idk4.Size = Vector3.new(1, 1, 1)
		idk4.Transparency = 1
		idk4.CFrame = ll.CFrame * CFrame.new(0, -0.5, 0)
		local w4 = Instance.new('Weld', ll)
		w4.Part0 = ll
		w4.Part1 = idk4
		w4.C0 = CFrame.new(0, -0.5, 0)
		ra.CFrame = ts.CFrame * CFrame.new(1.5, 0, 0)
		la.CFrame = ts.CFrame * CFrame.new(-1.5, 0, 0)
		rl.CFrame = ts.CFrame * CFrame.new(0.5, -2, 0)
		ll.CFrame = ts.CFrame * CFrame.new(-0.5, -2, 0)
	end
end

while true do
	sine = sine + change
	local regularspeed = hum.WalkSpeed
	local regularrun = regularspeed*3/50
	local rootvel = (root.Velocity * v.t(1, 0, 1)).magnitude
	local vertvel = (root.Velocity).y
	local hitfloor = raycast(root.Position, (cf.n(root.Position, root.Position + v.t(0, -1, 0))).lookVector, 4 * 1, char)
	hum.WalkSpeed = regularwalk
	hum.JumpPower = regularjump
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
	if cananim then
		if vertvel > 1 and cananim == true and hitfloor == nil then
			-- jump
			change = 1
			rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(-10), m.r(0) + root.RotVelocity.Y/30, m.r(0)) * cf.n(0, 0, 0), 0.1)
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(-15), m.r(0), m.r(0)) * cf.n(0, 0, 0), .1)
			rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-10), m.r(0) + ra.RotVelocity.Y/30, m.r(-0)) * cf.n(0, -0, 0), .15)
			ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-10), m.r(0) + la.RotVelocity.Y/30, m.r(0)) * cf.n(0, -0, -0), .15)
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0), m.r(0), m.r(-5)) * cf.n(0.55, 1, 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(0)) * cf.n(0, 0, 0), 0.1)
		elseif vertvel < -1 and hitfloor == nil then
			-- fall
			change = 1
			rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(30), m.r(0) - root.RotVelocity.Y/30, m.r(0)) * cf.n(0, 0, 0), 0.050)
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(15), m.r(0), m.r(0)) * cf.n(0, 0, 0), .1)
			rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-30), m.r(0) - ra.RotVelocity.Y/30, m.r(-0)) * cf.n(0, -0.2, 0), .050)
			ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-30), m.r(0) - la.RotVelocity.Y/30, m.r(0)) * cf.n(0, -0.2, -0), .050)
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0), m.r(0), m.r(-0)) * cf.n(0.55, 1, 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(0)) * cf.n(0, 0, 0), 0.1)
		elseif rootvel < 2 and hitfloor ~= nil then
			-- idle
			change = 0.8
			rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(0 - 1 * m.c(sine/30)), m.r(0), m.r(-0)) * cf.n(0, 0, 0 + 0.05 * m.c(sine/30)), 0.1)
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(5 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0, 0), 0.1)
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0.050 * m.c(sine/25), 0), 0.1)
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0.050 * m.c(sine/25), 0), 0.1)
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(-5), m.r(-10 + 3 * m.c(sine/30)), m.r(-1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
		elseif rootvel <= 20 or rootvel >= 20 and hitfloor ~= nil then 
			-- walk
			change = 0.9*regularrun
            rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(6), m.r(0) + root.RotVelocity.Y/40, m.r(10 * m.s(sine/6))) * cf.n(0, 0, -0.010 + m.c(sine/3)), 0.050*regularrun)
            nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(2 * m.s(sine/6)), m.r(-2 * m.s(sine/6)), m.r(-8 * m.s(sine/6)) + root.RotVelocity.Y/50) * cf.n(0, 0, 0), .050*regularrun)
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, -0, 0), 0.050*regularrun)
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, 0, 0.050), 0.050*regularrun)
            rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0) + rl.RotVelocity.Y / 40, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(0.05 + m.c(sine/6), 0.1 + m.c(sine/6), 0), 0.080*regularrun)
            lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0) + -ll.RotVelocity.Y / 40, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(-0.05 + m.c(sine/6), 0.1 - m.c(sine/6), 0), 0.080*regularrun)
		end
	end
	swait()
end
