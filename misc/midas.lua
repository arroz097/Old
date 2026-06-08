-- // Template
-- // by fo43123

--wait(3)
removehats = false
removeclothes = false
newshirt = nil
newpants = nil
local playerservice = game:GetService('Players')
local me = playerservice.LocalPlayer
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
local debris = game:GetService('Debris')
local tweenservice = game:GetService('TweenService')
local midasArm = script:WaitForChild('FakeArm')
local unbreakbleGoldo = script:WaitForChild('UnbreakableGold')
local placeholda = script:WaitForChild('PlaceHolder')
local cc = workspace.CurrentCamera
local cf = {n = CFrame.new, a = CFrame.Angles, euler = CFrame.fromEulerAnglesXYZ, orn = CFrame.fromOrientation}
local t = {i = table.insert, c = table.concat, r = table.remove}
local c3 = {rgb = Color3.fromRGB, n = Color3.new, hsv = Color3.fromHSV}
local str = {b = string.byte, s = string.sub, low = string.lower}
local m = {c = math.cos, s = math.sin, r = math.rad, rand = math.random, pi = math.pi, huge = math.huge, tan = math.tan}
local v = {t = Vector3.new, tw = Vector2.new}
local str = string
local sine = 0
local golds = {}
local NaN = math.huge
local regularwalk = 16
local regularjump = 60
local sine = 0
local change = 1
local cooldown = false
local cananim = true
local cananimRA = true
local cananimLA = true
local cananimRL = true
local cananimLL = true
local cananimRJ = true
local cananimHD = true
local rsc0, lsc0, rhc0, lhc0, rjc0, nkc0 = rs.C0, ls.C0, rh.C0, lh.C0, rj.C0, nk.C0
warn(script.Name..' Loaded on '..game.Players.LocalPlayer.Name)
local anim = Instance.new('Animation', hum)
anim.AnimationId = 'rbxassetid://4186109135'
track = hum:LoadAnimation(anim)
track:Play()

if removehats then
	for _,hats in pairs(char:GetDescendants()) do
		if hats:IsA('Accessory') then
			hats:Destroy()
		end
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

if removeclothes then
	if char:FindFirstChildOfClass('Shirt') then
		if newshirt == nil then
			for _,v in pairs(char:GetChildren()) do
				if v:IsA('Shirt') then
					v:Destroy()
				end
			end
		else
			char:FindFirstChildOfClass('Shirt').ShirtTemplate = newshirt
		end
	else
		if newshirt == nil then
			for _,v in pairs(char:GetChildren()) do
				if v:IsA('Shirt') then
					v:Destroy()
				end
			end
		else
			shirt = Instance.new('Shirt', char)
			shirt.ShirtTemplate = newshirt
		end
	end
	if char:FindFirstChildOfClass('Pants') then
		if newpants == nil then
			for _,v in pairs(char:GetChildren()) do
				if v:IsA('Pants') then
					v:Destroy()
				end
			end
		else
			char:FindFirstChildOfClass('Pants').PantsTemplate = newpants
		end
	else
		if newpants == nil then
			for _,v in pairs(char:GetChildren()) do
				if v:IsA('Pants') then
					v:Destroy()
				end
			end
		else
			pants = Instance.new('Pants', char)
			pants.PantsTemplate = newpants
		end
	end
end

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
			--sound(hitsounds[math.random(1, #hitsounds)], plr, 5, 1, 0.35)
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
					if var.Parent.Name ~= me.Name then
						return var.Parent
					end
				end
			end
		end
	end
end

function checkRealPlayer(plr)
	if plr.Parent:IsA('Model') or plr:IsA('Model') then
		for _,v in pairs(playerservice:GetPlayers()) do
			if v.Name == plr.Name then
				return v
			end
		end
	elseif plr:IsA('Player') then
		return plr
	end
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

function u()

end

function ragdollAll()
	for _,lola in pairs(workspace:GetDescendants()) do
		ragdoll(lola)
	end
end

midasArm.Anchored = false
ra.CastShadow = false
midasArm.CastShadow = false
weld(ra, ra, midasArm, cf.n(0, 0, 0), cf.n(0, 0, 0))
midasArm.Transparency = 0.15

coroutine.wrap(function()
	midasArm.Touched:connect(function(limo)
		if cooldown then cooldown = false end
			if not limo:IsDescendantOf(char) then
				--print(limo.Parent)
				if limo:IsA'Part' then
					if checkPlayer(limo) then
						local npc = checkPlayer(limo)
						if npc:FindFirstChildOfClass('LocalScript') then
							npc:FindFirstChildOfClass('LocalScript'):Destroy()
						end
						if npc:FindFirstChildOfClass('Script') then
							npc:FindFirstChildOfClass('Script'):Destroy()
						end
						if npc:FindFirstChildOfClass('Humanoid') then
							npc:FindFirstChildOfClass('Humanoid'):Destroy()
						end
						if npc:FindFirstChildOfClass('Pants') then
							npc:FindFirstChildOfClass('Pants'):Destroy()
						end
						if npc:FindFirstChildOfClass('Shirt') then
							npc:FindFirstChildOfClass('Shirt'):Destroy()
						end
					end
					--[[
					local pHolder = placeholda:Clone()
					pHolder.Parent = limo.Parent
					limo.Parent = pHolder
					local unbgold = unbreakbleGoldo:Clone()
					unbgold.Parent = workspace
					unbgold.Disabled = false
					--]]
					limo.Material = 'Glass'
					for i = 1, 100 do
						limo.Color = limo.Color:lerp(Color3.fromRGB(239, 184, 56), 0.05)
							--if limo.Parent:FindFirstChildOfClass('Accessory') then	limo.Parent:FindFirstChildOfClass('Accessory'):FindFirstChild('Part'):FindFirstChildOfClass('SpecialMesh').TextureId = 'rbxassetid://'
						--end
					swait()
				end
			end
		end
	end)
end)()

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
					if v ~= anim then
						v:Stop()
					end
				end
				coroutine.wrap(function()
					wait(0.5)
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
		if vertvel > 1 and hitfloor == nil then
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
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(25), m.r(0), m.r(0)) * cf.n(0, 0, 0), .1)
			rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-30), m.r(0) - ra.RotVelocity.Y/30, m.r(-0)) * cf.n(0, -0.2, 0), .050)
			ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-30), m.r(0) - la.RotVelocity.Y/30, m.r(0)) * cf.n(0, -0.2, -0), .050)
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0), m.r(0), m.r(-0)) * cf.n(0.55, 1, 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(0)) * cf.n(0, 0, 0), 0.1)
		elseif rootvel < 2 and hitfloor ~= nil then
			-- idle
			change = 0.8
			rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(0 - 1 * m.c(sine/30)), m.r(0), m.r(-0)) * cf.n(0, 0, 0 + 0.05 * m.c(sine/30)), 0.1)
			nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(5 - 2 * m.c(sine/30)), m.r(0), m.r(-10)) * cf.n(0, 0, 0), 0.1)
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(10), m.r(160)) * cf.n(0, 0.050 * m.c(sine/25), 0), 0.070)
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-3 - 2 * m.c(sine/30)), m.r(0), m.r(0)) * cf.n(0, 0.050 * m.c(sine/25), 0), 0.1)
			rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(-5), m.r(-10 + 3 * m.c(sine/30)), m.r(-1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
			lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0), m.r(0), m.r(1 * m.c(sine/30))) * cf.n(0, -0.05 * m.c(sine/30), 0), 0.1)
		elseif rootvel <= 20 or rootvel >= 20 and hitfloor ~= nil then 
			-- walk
			change = 0.9*regularrun
			if cananimRJ then
            rj.C0 = clerp(rj.C0, rjc0 * cf.a(m.r(7.5), m.r(0) + root.RotVelocity.Y/55, m.r(10 * m.s(sine/6))) * cf.n(0, 0, -0.010 + m.c(sine/3)), 0.050*regularrun)
			end
			if cananimHD then
            nk.C0 = clerp(nk.C0, nkc0 * cf.a(m.r(2 * m.s(sine/6)), m.r(-2 * m.s(sine/6)), m.r(-8 * m.s(sine/6)) + root.RotVelocity.Y/50) * cf.n(0, 0, 0), .1*regularrun)
			end
			if cananimRA then
            rs.C0 = clerp(rs.C0, rsc0 * cf.a(m.r(-5), m.r(60), m.r(90)) * cf.n(0, -0, 0), 0.070*regularrun)
			end
			if cananimLA then
            ls.C0 = clerp(ls.C0, lsc0 * cf.a(m.r(-5), m.r(5 * m.c(sine/6)), m.r(-60 * m.s(sine/6))) * cf.n(0, 0, 0), 0.050*regularrun)
			end
			if cananimRL then
            rh.C0 = clerp(rh.C0, rhc0 * cf.a(m.r(0) + rl.RotVelocity.Y / 55, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(0.05 + m.c(sine/6), 0.1 + m.c(sine/6), 0), 0.080*regularrun)
			end
			if cananimLL then
            lh.C0 = clerp(lh.C0, lhc0 * cf.a(m.r(0) + -ll.RotVelocity.Y / 55, m.r(0), m.r(90 * m.s(sine/6))) * cf.n(-0.05 + m.c(sine/6), 0.1 - m.c(sine/6), 0), 0.080*regularrun)
			end
		end
	end
	swait()
end