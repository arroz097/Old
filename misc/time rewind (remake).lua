--- [[ Simple Time Rewind ]] ---
-- by fo43123

local me = game.Players.LocalPlayer
local mouse = me:GetMouse()
local char = me.Character
local hum = char:FindFirstChild('Humanoid')
local hd = char:FindFirstChild('Head')
local ts = char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
local ra = char:FindFirstChild('Right Arm') or char:FindFirstChild('RightUpperArm')
local la = char:FindFirstChild('Left Arm') or char:FindFirstChild('LeftUpperArm')
local rl = char:FindFirstChild('Right Leg') or char:FindFirstChild('RightUpperLeg')
local ll = char:FindFirstChild('Left Leg') or char:FindFirstChild('LeftUpperLeg')
local root = char:FindFirstChild('HumanoidRootPart')
local rj = root:FindFirstChild('RootJoint')
local rs = ts:FindFirstChild('Right Shoulder')
local ls = ts:FindFirstChild('Left Shoulder')
local rh = ts:FindFirstChild('Right Hip')
local lh = ts:FindFirstChild('Left Hip')
local nk = ts:FindFirstChild('Neck')
local anim = char:FindFirstChild('Animate')
local base = workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base')
local rewindclock = script:WaitForChild('RewindClock')
local clockbase = rewindclock:WaitForChild('ClockBase')
local mainclock = rewindclock:WaitForChild('Main')
local cantimerewind = true
local cooldown = false
local selfrewind = false
local cananim = true
local cananimRA = true
local cananimLA = true
local cananimHD = true
local cc = workspace.CurrentCamera
local cf = {n = CFrame.new, a = CFrame.Angles, euler = CFrame.fromEulerAnglesXYZ, orn = CFrame.fromOrientation}
local t = {i = table.insert, c = table.concat, r = table.remove}
local c3 = {rgb = Color3.fromRGB, n = Color3.new, hsv = Color3.fromHSV}
local str = {b = string.byte, s = string.sub, low = string.lower}
local m = {c = math.cos, s = math.sin, r = math.rad, rand = math.random, pi = math.pi, huge = math.huge, tan = math.tan}
local v = {t = Vector3.new, tw = Vector2.new}
local str = string
local past = {}
local lastpast = {}
local sine = 0
local rewind = Instance.new('Sound', hd)
local onrewind = Instance.new('Sound', clockbase)
local NaN = math.huge
local regularwalk = 16
local regularjump = 60
local sine = 0
local change = 1
local rsc0, lsc0, rhc0, lhc0, rjc0, nkc0 = rs.C0, ls.C0, rh.C0, lh.C0, rj.C0, nk.C0
onrewind.Looped = true
onrewind.Volume = 0.6
onrewind.SoundId = 'rbxassetid://1836360798'
rewind.SoundId = 'rbxassetid://864569342'
rewind.Name = 'trewind'
rewind.Volume = 1
rewind.PlaybackSpeed = 1.13
effects = Instance.new('Folder', char)
effects.Name = 'Effects'
print([[
	-- // Moves
	R - Clock/Rewind - (Toggle)
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

function swait(t)
	if t == 0 or t == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0, t do
			ArtificialHB.Event:Wait()
		end
	end
end

function sound(id, parent, vol, pitch, timepos)
	local s = Instance.new('Sound')
	s.Parent = parent
	s.SoundId = id
	s.Volume = vol
	s.PlaybackSpeed = pitch
	s.TimePosition = timepos
	s:Play()
	game.Debris:AddItem(s, s.PlaybackSpeed + 5)
end

function camshake(duration, intensity)
	coroutine.wrap(function()
		for i = 0, duration*60 do
			hum.CameraOffset = v.t(m.rand(-(intensity*10),(intensity*10))/10, m.rand(-(intensity*10),(intensity*10))/10, m.rand(-(intensity*10), (intensity*10))/10)
			swait()
		end
		hum.CameraOffset = v.t(0, 0, 0)
	end)()
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function raycast(pos, direction, range, ignoredecendants)
	return workspace:FindPartOnRay(Ray.new(pos, direction.unit * range), ignoredecendants)
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

function readyrewind()
	cantimerewind = false
	onrewind:Play()
	cananimRA = false
	cananimLA = false
	cananimHD = false
	coroutine.wrap(function()
	repeat
		rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(0), m.r(60 + 1 * m.c(sine/50)), m.r(70)) * cf.n(0, -0.2, 0), 0.1)
		ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(0), m.r(-63.5 - 1.5 * m.c(sine/40)), m.r(-82)) * cf.n(0, 0, 0), 0.1)
		nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(17), m.r(0), m.r(-3)) * cf.n(0, 0, 0), 0.1)
		swait()
	until onrewind.IsPaused
	end)()
		coroutine.wrap(function()
		wait(1)
			cooldown = true
		end)()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA('BasePart') then
			local lastpos = v.CFrame
			table.insert(past, {part = v, change = lastpos})
		end
		if v.Parent then
			local lastparent2 = v.Parent
			table.insert(lastpast, {part2 = v, change4 = lastparent2})
		end
		if v:IsA('Camera') then
			local lastcam = v.CFrame
			table.insert(past, {cam = v, change3 = lastcam})
		end
		if v:IsA('Sound') then
			if v ~= rewind then
				local lastsongpos = v.TimePosition
				table.insert(past, {sound = v, pchange = lastsongpos})
			end
		end
		if v:IsA('Humanoid') then
			local lasthp = v.Health
			local always = lasthp
			table.insert(past, {health = v, hchange = lasthp})
		end
	end
	newpast = workspace.DescendantAdded:Connect(function(v)
		if v:IsA('BasePart') then
			local lastpos = v.CFrame
			local lastparent = v.Parent
			table.insert(past, {part = v, change = lastpos, change4 = lastparent})
		end
		if v.Parent then
			local lastparent2 = v.Parent
			table.insert(lastpast, {part2 = v, change4 = lastparent2})
		end
		if v:IsA('Camera') then
			local lastcampos = v.CFrame
			table.insert(past, {cam = v, change3 = lastcampos})
		end
		if v:IsA('Sound') then
			if v ~= rewind then
				local lastsongpos = v.TimePosition
				table.insert(past, {sound = v, pchange = lastsongpos})
			end
		end
		if v:IsA('Humanoid') then
			local lasthp = v.Health
			local always = lasthp
			table.insert(past, {health = v, hchange = lasthp})
		end
	end)
end

function timerewind()
	if cooldown then
	rewind:Play()
	sine = 0
	onrewind:Pause()
	cananimRA = true
	cananimLA = true
	cananimHD = true
	coroutine.wrap(function()
	local cce = Instance.new('ColorCorrectionEffect', game.Lighting)
	local blur = Instance.new('BlurEffect', game.Lighting); blur.Size = 0
	local effect2 = Instance.new('Part', effects)
	local effect3 = Instance.new('Part', effects)
	effect3.Shape = 'Ball'
	effect3.Material = 'ForceField'
	effect3.Anchored = true
	effect3.CanCollide = false
	effect3.Name = 'eff3'
	effect3.BrickColor = BrickColor.new('Institutional white')
	effect3.Size = v.t(30, 30, 30)
	effect3.Transparency = 0
	effect2.CastShadow = false
	effect2.Shape = 'Ball'
	effect2.BrickColor = BrickColor.new('Institutional white')
	effect2.Material = 'ForceField'
	effect2.Name = 'eff2'
	effect2.Anchored = true
	effect2.CanCollide = false
	effect2.Size = v.t(50, 50, 50)
	effect2.Transparency = 0
	cantimerewind = true
	for i,v in pairs(past) do
		pcall(function()
			v.part.CFrame = v.change
		end)
		pcall(function()
		   	v.cam.CFrame = v.change3
		end)
		pcall(function()
			v.sound.TimePosition = v.pchange
		end)
		pcall(function()
			v.health.Health = v.hchange
		end)
	end
	for i,v in pairs(lastpast) do
		pcall(function()
			v.part2.Parent = v.change4
		end)
	end
	pcall(function()
		newpast:Disconnect()
	end)
	coroutine.wrap(function()
		camshake(0.7, 0.6)
		coroutine.wrap(function()
			for i = 1, 50 do
				cce.TintColor = cce.TintColor:lerp(c3.rgb(255, 255, 255), 0.050)
				swait()
			end
		end)()
		for i = 1, 1000 do
			effect2.CFrame = ts.CFrame
			effect3.CFrame = ts.CFrame
			blur.Size = v.t(blur.Size, 0, 0):lerp(v.t(30, 30, 30), .010).X
			effect2.Transparency = effect2.Transparency + 0.015
			effect3.Transparency = effect3.Transparency + 0.015
			effect2.Size = effect2.Size:lerp(v.t(0, 0, 0), 0.030)
			effect3.Size = effect3.Size:lerp(v.t(0, 0, 0), 0.010)
			if effect2.Transparency >= 1 then
				effect2:Destroy()
			end
			if effect3.Transparency >= 1 then
				effect3:Destroy()
			end
			swait()
		end
	end)()
	coroutine.wrap(function()
		wait(0.8)
		camshake(0.3, 0.2)
	end)()
	wait(1)
	blur:Destroy()
	coroutine.wrap(function() 
		for i = 1, 50 do
			cce.TintColor = cce.TintColor:lerp(c3.rgb(255, 255, 255), 0.1)
			swait()
		end
		cce:Destroy()
	end)()
	end)()
	wait(1.5) -- cooldown
	past = {}
	cooldown = false
	end
end

mouse.KeyDown:connect(function(key)
	if str.lower(key) == 'r' and cantimerewind and cooldown == false then
		readyrewind()
	elseif str.lower(key) == 'r' and cantimerewind == false and cooldown then
		timerewind()
	end
end)

mainclock.Anchored = false
weld(mainclock, ra, mainclock, cf.n(-0.005, -0.43, 0.005), cf.n(0, 0, 0))

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
			if cananimHD then
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(5 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0, 0), 0.1)
			end
			if cananimRA then
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0.050 * m.c(sine/25), 0), 0.1)
			end
			if cananimLA then
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0.050 * m.c(sine/25), 0), 0.1)
			end
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(-5), m.r(-10 + 3 * m.c(sine/30)), m.r(-1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
		elseif rootvel <= 20 or rootvel >= 20 and hitfloor ~= nil then 
			-- walk
			change = 0.9*regularrun
            rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(6), m.r(0) + root.RotVelocity.Y/40, m.r(10 * m.s(sine/6))) * cf.n(0, 0, -0.010 + m.c(sine/3)), 0.050*regularrun)
			if cananimHD then
            nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(2 * m.s(sine/6)), m.r(-2 * m.s(sine/6)), m.r(-8 * m.s(sine/6)) + root.RotVelocity.Y/50) * cf.n(0, 0, 0), .050*regularrun)
			end
			if cananimRA then
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, -0, 0), 0.050*regularrun)
			end
			if cananimLA then
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, 0, 0.050), 0.050*regularrun)
			end
            rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0) + rl.RotVelocity.Y / 40, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(0.05 + m.c(sine/6), 0.1 + m.c(sine/6), 0), 0.080*regularrun)
            lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0) + -ll.RotVelocity.Y / 40, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(-0.05 + m.c(sine/6), 0.1 - m.c(sine/6), 0), 0.080*regularrun)
		end
	end
	swait()
end