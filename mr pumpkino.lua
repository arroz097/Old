script.Name = 'Gay Mr. Pumpkino for gay pumpkins'

--- // Mr. Pumpkino // ---
-- // by fo43123

wait(3)
local playerservice = game:GetService('Players')
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
local tweenservice = game:GetService('TweenService')
local pumpkin = script:WaitForChild('Pumpkino'):WaitForChild('pumpkin')
local peye1 = script:WaitForChild('Pumpkino'):WaitForChild('eye1')
local peye2 = script:WaitForChild('Pumpkino'):WaitForChild('eye2')
local heye1 = script:WaitForChild('details'):WaitForChild('heye1')
local heye2 = script:WaitForChild('details'):WaitForChild('heye2')
local theme = Instance.new('Sound', hd)
local mouse = plr:GetMouse()
local cf = {n = CFrame.new, a = CFrame.Angles, euler = CFrame.fromEulerAnglesXYZ, orn = CFrame.fromOrientation}
local t = {i = table.insert, c = table.concat, r = table.remove}
local c3 = {rgb = Color3.fromRGB, n = Color3.new, hsv = Color3.fromHSV}
local str = {b = string.byte, s = string.sub, low = string.lower}
local m = {c = math.cos, s = math.sin, r = math.rad, rand = math.random, pi = math.pi, huge = math.huge, tan = math.tan}
local style = {bounce = Enum.EasingStyle.Bounce, sine = Enum.EasingStyle.Sine, elastic = Enum.EasingStyle.Elastic, linear = Enum.EasingStyle.Linear}
local direction = {In = Enum.EasingDirection.In, out = Enum.EasingDirection.Out, InOut = Enum.EasingDirection.InOut}
local v = {t = Vector3.new, tw = Vector2.new}
local cam = workspace.CurrentCamera
local cooldown = false
local attack = false
local onsit = false
local onhit = false
local cananim = true
local anim = nil
local effects = nil
local regularwalk = 16
local regularjump = 50
local sine = 0
local change = 1
local rsc0, lsc0, rhc0, lhc0, rjc0, nkc0 = rs.C0, ls.C0, rh.C0, lh.C0, rj.C0, nk.C0
warn(script.Name..' Loaded on '..game.Players.LocalPlayer.Name)
theme.SoundId = 'rbxassetid://180319794'
theme.Volume = 3
theme.Looped = true
theme.PlaybackSpeed = 1
theme:Play()

for _,hats in pairs(char:GetDescendants()) do
	if hats:IsA('Accessory') then
		hats:Destroy()
	end
end

if char:FindFirstChild('Effects') then
	effects = char:FindFirstChild('Effects')
else
	effects = Instance.new('Folder', char)
	effects.Name = 'Effects'
end

hum.HealthChanged:connect(function()
	hum.MaxHealth = 'inf'
	hum.Health = 'inf'
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

function tween(object, info, properties)
	local tweenlol = tweenservice:Create(object, info, properties)
	tweenlol:Play()
end

function clerp(a, b, t)
	return a:lerp(b, t)
end

function raycast(pos, direction, range, ignoredecendants)
	return workspace:FindPartOnRay(Ray.new(pos, direction.unit * range), ignoredecendants)
end

function kill(plr, canparticle)
	if checkPlayer(plr) then
		local varhum = checkPlayer(plr):FindFirstChildOfClass('Humanoid')
		if canparticle then
			sound(hitsounds[math.random(1, #hitsounds)], plr, 5, 1, 0.35)
		end
		if checkPlayer(plr):FindFirstChildOfClass('Humanoid').Health ~= 0 then
			if canparticle then
				aaa = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.3),NumberSequenceKeypoint.new(1, 7)})
			end
			local torso = plr.Parent:FindFirstChild('Torso') or plr.Parent:FindFirstChild('UpperTorso')
			if canparticle then
				bloody(torso, 2)
			end
			checkPlayer(plr):BreakJoints()
		end
	end
end

function damage(player, damagevalue, dmgcoldown)
	if checkPlayer(player) then
		if cooldown then return end
		cooldown = true
		local playerhumanoid = checkPlayer(player):FindFirstChildOfClass('Humanoid')
		if playerhumanoid then
			if damagevalue == 0 or damagevalue == nil then
				damagevalue = m.rand(15, 30)
				playerhumanoid.Health = playerhumanoid.Health - damagevalue
				if playerhumanoid.MaxHealth == 'inf' or playerhumanoid.MaxHealth == m.huge then
					pcall(function()
						coroutine.wrap(function()
							local playercharacter = checkPlayer(player)
							wait(1)
							playercharacter:Destroy()
						end)()
					end)
				end
			else
				playerhumanoid.Health = playerhumanoid.Health - damagevalue
				if playerhumanoid.MaxHealth == 'inf' or playerhumanoid.MaxHealth == m.huge then
					pcall(function()
						coroutine.wrap(function()
							local playercharacter = checkPlayer(player)
							playercharacter:Destroy()
						end)()
					end)
				end
			end
		end
		coroutine.wrap(function()
			if dmgcoldown == 0 or dmgcoldown == nil then
				dmgcoldown = 1
			end
			wait(dmgcoldown)
			cooldown = false
		end)()
	end
end

function damageAll()
	for _,players in pairs(workspace:GetDescendants()) do
		damage(players)
	end
end

function killAll(canparticle)
	for _,gayplayers in pairs(playerservice:GetPlayers()) do
		kill(gayplayers, canparticle)
	end
end

function knockback(comin, go, force, remover)
	local bv = Instance.new('BodyVelocity', go)
	bv.MaxForce = v.t(math.huge, math.huge, math.huge)
	bv.Velocity = cf.n(comin.Position, go.Position).lookVector*force
	if remover == 0 or remover == nil then
		debris:AddItem(bv, 0.1)
	else
		debris:AddItem(bv, remover)
	end
end

function checkPlayer(var)
	if var.Parent then
		if var.Parent:FindFirstChildOfClass('Humanoid') then
			if var.Parent:FindFirstChild('Torso') or var.Parent:FindFirstChild('UpperTorso') and var.Parent:FindFirstChild('Head') then
				if var.Parent:IsA('Model') then
					if var.Parent.Name ~= plr.Name then
						return var.Parent
					end
				end
			end
		end
	end
end

function checkRealPlayer(plr)
--	pcall(function()
		if plr.Parent:IsA('Model') or plr:IsA('Model') then
			for _,v in pairs(playerservice:GetPlayers()) do
				if v.Name == plr.Name then
					return v
				end
			end
		elseif plr:IsA('Player') then
			return plr
		end
	--end)
end

function camshake(player, duration, intensity)
	if checkRealPlayer(player) then
		local shako = script:WaitForChild('shake'):Clone()
		shako:WaitForChild('duration').Value = duration
		shako:WaitForChild('intensity').Value = intensity
		shako.Parent = checkRealPlayer(player).PlayerGui or checkRealPlayer(player).Character or checkRealPlayer(player).Backpack
		shako.Disabled = false
	end
end

function camshakeAll(duration, intensity)
	for _,gayplayers in pairs(playerservice:GetPlayers()) do
		camshake(gayplayers, duration, intensity)
	end
end

function ragdoll(player)
	if checkPlayer(player) then
		if checkPlayer(player):FindFirstChildOfClass('BoolValue') then
		if checkPlayer(player):FindFirstChildOfClass('BoolValue').Name=='alreadyRagdoll' then
		if checkPlayer(player):FindFirstChildOfClass('BoolValue').Value==true then return end
		end
		end
		local gaymodel = checkPlayer(player)
		local alreadyrag = Instance.new('BoolValue', gaymodel)
		local dhd = gaymodel:FindFirstChild('Head')
		local dts = gaymodel:FindFirstChild('Torso')
		local dra = gaymodel:FindFirstChild('Right Arm')
		local dla = gaymodel:FindFirstChild('Left Arm')
		local drl = gaymodel:FindFirstChild('Right Leg')
		local dll = gaymodel:FindFirstChild('Left Leg')
		local droot = gaymodel:FindFirstChild('HumanoidRootPart')
		local drs = dts:FindFirstChild('Right Shoulder')
		local dls = dts:FindFirstChild('Left Shoulder')
		local drh = dts:FindFirstChild('Right Hip')
		local dlh = dts:FindFirstChild('Left Hip')
		alreadyrag.Name = 'alreadyRagdoll'
		alreadyrag.Value = true
		gaymodel:FindFirstChildOfClass('Humanoid').PlatformStand = true
		drs:Destroy()
		dls:Destroy()
		drh:Destroy()
		dlh:Destroy()
		local ahd = Instance.new('Weld', dts)
		ahd.Name = 'Neck'
		ahd.Part0 = dts
		ahd.Part1 = dhd
		ahd.C0 = cf.n(0, 1.5, 0)
		local ara = Instance.new('Glue', dts)
		dra.CFrame = dts.CFrame * cf.n(1.5, 0, 0)
		ara.Name = 'Right Shoulder'
		ara.Part0 = dts
		ara.Part1 = dra
		ara.C0 = cf.n(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		ara.C1 = cf.n(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		local idk1 = Instance.new('Part', gaymodel)
		idk1.Size = v.t(1, 1, 1)
		idk1.Transparency = 0.5
		idk1.CFrame = dra.CFrame * cf.n(0, -0.5, 0)
		local w1 = Instance.new('Weld', dra)
		w1.Part0 = dra
		w1.Part1 = idk1
		w1.C0 = cf.n(0, -0.5, 0)
		local ala = Instance.new('Glue', dts)
		ala.Name = 'Left Shoulder'
		ala.Part0 = dts
		ala.Part1 = dla
		ala.C0 = cf.n(-1.5*dla.Size.X, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		ala.C1 = cf.n(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		local idk2 = Instance.new('Part', gaymodel)
		idk2.Size = v.t(1, 1, 1)
		idk2.Transparency = 1
		idk2.CFrame = dla.CFrame * cf.n(0, -0.5, 0)
		local w2 = Instance.new('Weld', dla)
		w2.Part0 = dla
		w2.Part1 = idk2
		w2.C0 = cf.n(0, -0.5, 0)
		local arl = Instance.new('Glue', dts)
		arl.Name = 'Right Hip'
		arl.Part0 = dts
		arl.Part1 = drl
		arl.C0 = cf.n(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		arl.C1 = cf.n(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
		local idk3 = Instance.new('Part', gaymodel)
		idk3.Size = v.t(1, 1, 1)
		idk3.Transparency = 1
		idk3.CFrame = drl.CFrame * cf.n(0, -0.5, 0)
		local w3 = Instance.new('Weld', drl)
		w3.Part0 = drl
		w3.Part1 = idk3
		w3.C0 = cf.n(0, -0.5, 0)
		local all = Instance.new('Glue', dts)
		all.Name = 'Left Hip'
		all.Part0 = dts
		all.Part1 = dll
		all.C0 = cf.n(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		all.C1 = cf.n(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
		local idk4 = Instance.new('Part', gaymodel)
		idk4.Size = v.t(1, 1, 1)
		idk4.Transparency = 1
		idk4.CFrame = dll.CFrame * cf.n(0, -0.5, 0)
		local w4 = Instance.new('Weld', dll)
		w4.Part0 = dll
		w4.Part1 = idk4
		w4.C0 = cf.n(0, -0.5, 0)
		dra.CFrame = dts.CFrame * cf.n(1.5, 0, 0)
		dla.CFrame = dts.CFrame * cf.n(-1.5, 0, 0)
		drl.CFrame = dts.CFrame * cf.n(0.5, -2, 0)
		dll.CFrame = dts.CFrame * cf.n(-0.5, -2, 0)
	end
end

function ragdollAll()
	for _,lola in pairs(workspace:GetDescendants()) do
		ragdoll(lola)
	end
end

function explosion()
	attack = true
	local ball = Instance.new('Part', effects)
	ball.Shape = 'Ball'
	ball.Material = 'ForceField'
	ball.BrickColor = BrickColor.new('Really black')
	ball.Size = v.t(0, 0, 0)
	ball.Anchored = true
	ball.CanCollide = false
	ball.CFrame = ts.CFrame
	local fakeball = ball:Clone()
	fakeball.Anchored = false
	fakeball.Parent = effects
	fakeball.CFrame = ts.CFrame
	fakeball.Transparency = 1
	local LMAO = fakeball.Touched:connect(function(hit)
		if onhit then return end
		if checkPlayer(hit) then
			onhit = true
			damage(hit, nil, 1)
			knockback(ts, hit, 300)
			camshake(hit.Parent, 15, 3)
			camshake(plr, 15, 5)
			ragdoll(hit)
			wait(1)
			onhit = false
		end
	end)
	for i = 1, 30 do
		fakeball.CFrame = ts.CFrame
		ball.CFrame = ts.CFrame
		ball.Size = ball.Size:lerp(v.t(30, 30, 30), 0.1)
		fakeball.Size = fakeball.Size:lerp(v.t(30, 30, 30), 0.1)
		ball.Transparency = ball.Transparency + 0.050
		if ball.Transparency >= 1 then
			ball:Destroy()
			fakeball:Destroy()
		end
		swait()
	end
	LMAO:Disconnect()
	wait()
	attack = false
end

pumpkin.Anchored = false
weld(hd, hd, pumpkin, cf.n(0, 0, 0), cf.n(0, 0, 0))
heye1.Anchored = false
weld(hd, hd, heye1, cf.n(0.225, 0.27, -0.55), cf.n(0, 0, 0))
heye2.Anchored = false
weld(hd, hd, heye2, cf.n(-0.245, 0.27, -0.54), cf.n(0, 0, 0))
hd.Material = 'Glass'
bd = nil
--[[
if char:FindFirstChildOfClass('BodyColors') then
	bd = char:FindFirstChildOfClass('BodyColors')
	bd.HeadColor = BrickColor.new('Really black')
	bd.RightArmColor = BrickColor.new('Bright yellow')
	bd.LeftArmColor = BrickColor.new('Bright yellow')
	bd.RightLegColor = BrickColor.new('Br. yellowish green')
	bd.LeftLegColor = BrickColor.new('Br. yellowish green')
	bd.TorsoColor = BrickColor.new('Really black')
else
	bd = Instance.new('BodyColors', char)
	bd.HeadColor = BrickColor.new('Really black')
	bd.RightArmColor = BrickColor.new('Bright yellow')
	bd.LeftArmColor = BrickColor.new('Bright yellow')
	bd.RightLegColor = BrickColor.new('Br. yellowish green')
	bd.LeftLegColor = BrickColor.new('Br. yellowish green')
	bd.TorsoColor = BrickColor.new('Really black')
end
]]
for _,decals in pairs(hd:GetChildren()) do
	if decals:IsA('Decal') then
		decals.Parent = nil
	end
end

--[[
if char:FindFirstChildOfClass('Shirt') then
	char:FindFirstChildOfClass('Shirt').ShirtTemplate = 'rbxassetid://102716091'
else
	shirt = Instance.new('Shirt', char)
	shirt.ShirtTemplate = 'rbxassetid://102716091'
end
if char:FindFirstChildOfClass('Pants') then
	char:FindFirstChildOfClass('Pants').PantsTemplate = 'rbxassetid://102712920'
else
	shirt = Instance.new('Pants', char)
	shirt.PantsTemplate = 'rbxassetid://102712920'
end
for _,v in pairs(script:WaitForChild('Pumpkino'):GetChildren()) do
	--if v:IsA('Part') and v ~= heye1 and v ~= heye2 then
		--v.Transparency = 1
	--end
end
]]

mouse.KeyDown:connect(function(key)
	if key == 'm' then
		if theme.IsPlaying then
			theme:Pause()
		else
			theme:Resume()
		end
	elseif key == 'f' then
		if attack then return end
		explosion()
	end
end)

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
					--wait(3)
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
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(5 - 2 * m.c(sine/30)), m.r(5 * m.c(sine/40)), m.r(0)) * cf.n(0, 0, 0), 0.1)
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(90), m.r(80)) * cf.n(0, 0, 0), 0.1)
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(-80), m.r(-85)) * cf.n(0, 0, 0), 0.1)
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(-5), m.r(-10 + 3 * m.c(sine/30)), m.r(-1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
		elseif rootvel <= 20 or rootvel >= 20 and hitfloor ~= nil then 
			-- walk
			change = 0.9*regularrun
            rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(6), m.r(0) + root.RotVelocity.Y/55, m.r(10 * m.s(sine/6))) * cf.n(0, 0, -0.010 + m.c(sine/3)), 0.050*regularrun)
            nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(2 * m.s(sine/6)), m.r(-2 * m.s(sine/6)), m.r(-8 * m.s(sine/6)) + root.RotVelocity.Y/50) * cf.n(0, 0, 0), .1*regularrun)
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, -0, 0), 0.050*regularrun)
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, 0, 0), 0.050*regularrun)
            rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0) + rl.RotVelocity.Y / 55, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(0.05 + m.c(sine/6), 0.1 + m.c(sine/6), 0), 0.080*regularrun)
            lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0) + -ll.RotVelocity.Y / 55, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(-0.05 + m.c(sine/6), 0.1 - m.c(sine/6), 0), 0.080*regularrun)
		end
	end
	swait()
end
