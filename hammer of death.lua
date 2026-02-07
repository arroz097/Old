--- [[ Hammer Of Death ]] ---
-- by fo43123

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
local anim = char:WaitForChild('Animate')
local sine = 0
local fall = 0
local fall2 = 0
local change = 1
local attack = false
local cananim = true
local isonhit = false
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
local ww = Instance.new('Sound', hd); ww.Looped = true; ww.Volume = 3; ww.SoundId = 'rbxassetid://1843497734'
local mouse = me:GetMouse()
hum.WalkSpeed = 35
hum.JumpPower = 100
ww:Play()
print([[
	( - Hammer Of Death Moves - )
	LMB - Hammer Slam
	R - Teleport
	F - Smash
	( ------------------------- )
]])
hum.Health = 'inf'
hum.MaxHealth = 'inf'
if anim then
	anim:Destroy()
	for i,v in pairs(hum:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end

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

--wepon creation
char:WaitForChild('Body Colors').RightArmColor = BrickColor.new('Black')
local wepon = Instance.new('Folder', char)
wepon.Name = 'Hammer'
local o1 = Instance.new('Part', wepon)
local o2 = Instance.new('Part', wepon)
local o3 = Instance.new('Part', wepon)
local o4 = Instance.new('Part', wepon)
local o5 = Instance.new('Part', wepon)
local armdec = Instance.new('Part', ra)
local maindec = Instance.new('Part', o4)
local o4mesh = Instance.new('SpecialMesh', o4)
local weld1 = Instance.new('ManualWeld', o1)
local weld2 = Instance.new('ManualWeld', o1)
local weld3 = Instance.new('ManualWeld', o1)
local weld4 = Instance.new('ManualWeld', o1)
local weld5 = Instance.new('ManualWeld', ra)
local armweld = Instance.new('ManualWeld', ra)
local mainweld = Instance.new('ManualWeld', o4)
armdec.Size = ra.Size * 1.001
armdec.CanCollide = false
armdec.Material = 'Granite'
armdec.Transparency = 0.5
armdec.BrickColor = BrickColor.new('Really black')
armweld.Part0 = ra
armweld.Part1 = armdec
maindec.Size = v3(0.76, 0.76, 1.47)
maindec.CanCollide = false
maindec.Material = 'Granite'
maindec.Transparency = 0.5
maindec.BrickColor = BrickColor.new('Really black')
mainweld.Part0 = o4
mainweld.Part1 = maindec
o1.Name = 'cabogay'
o1.Material = 'Granite'
o1.CanCollide = false
o1.BrickColor = BrickColor.new('Really black')
o1.Size = v3(4.15, 0.2, 0.2)
o1.Shape = 'Cylinder'
o2.Name = 'dec2'
o2.Material = 'Granite'
o2.CanCollide = false
o2.BrickColor = BrickColor.new('Black')
o2.Size = v3(0.14, 0.25, 0.25)
o2.Shape = 'Cylinder'
o3.Name = 'dec1'
o3.Material = 'Granite'
o3.CanCollide = false
o3.BrickColor = BrickColor.new('Really black')
o3.Size = v3(0.85, 0.25, 0.25)
o3.Shape = 'Cylinder'
o4.Name = 'main'
o4.Material = 'SmoothPlastic'
o4.CanCollide = false
o4.BrickColor = BrickColor.new('Black')
o4.Shape = 'Block'
o4.Size = v3(1.11, 1.02, 1.67)
o4mesh.MeshId = 'rbxassetid://2541450270'
o4mesh.Scale = v3(0.015, 0.015, 0.03)
o5.Name = 'dec3'
o5.Material = 'Granite'
o5.CanCollide = false
o5.BrickColor = BrickColor.new('Black')
o5.Size = v3(0.65, 0.2, 0.2)
o5.Shape = 'Cylinder'
weld1.Part0 = o1
weld1.Part1 = o3
weld1.C1 = cfn(-1.75000036, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld2.Part0 = o1
weld2.Part1 = o2
weld2.C1 = cfn(2.02211809, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld3.Part0 = o1
weld3.Part1 = o5
weld3.C1 = cfn(-1.86500037, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld4.Part0 = o1
weld4.part1 = o4
weld4.C1 = cfn(-1.7442565, -0.0106686354, -0.00667709112, 1, 0, 0, 0, 1, 0, 0, 0, 1)
weld5.Part0 = ra
weld5.Part1 = o1
weld5.C1 = cfn(-.2, 0, 1) * cfa(rad(0), rad(-90), rad(-90))

function clerp(a, b, t)
	return a:lerp(b, t)
end

function player(var)
	if var.Parent then
		if var.Parent:IsA('Model') and var.Parent:FindFirstChildOfClass('Humanoid') then
			if var.Parent:FindFirstChild('Torso') or var:FindFirstChild('Head') then
				if var.Parent.Name ~= me.Name then
					return var
				end
			end
		end
	end
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

function smash()
	attack = true
	cananim = false
	for i = 1, 8 do
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(-40)) * cfn(0, 0, 0), .35)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-5), rad(0), rad(-0)) * cfn(0, 0, 0), .35)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(0), rad(10), rad(-160)) * cfn(0, 0, 0), .35)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(10), rad(0)) * cfn(0, 0, 0), .35)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(10), rad(20)) * cfn(0, 0, 0), .35)
		if root.Velocity.Magnitude < 2 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
			rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), .35)
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(10)) * cfn(0, 0, 0), .35)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, 0, 0), .35)
		elseif root.Velocity.Magnitude > 20 then
			rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0) - root.RotVelocity.Y / 20, rad(-40)) * cfn(0, 0, 0), .35)
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) - rl.RotVelocity.Y / 20, rad(0), rad(60 * sin(sine/4))) * cfn(0, -0.1 * sin(sine/6), 0), .35)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) - -ll.RotVelocity.Y / 20, rad(0), rad(60 * sin(sine/4))) * cfn(0, -0.1 * sin(sine/6), 0), .35)
		end
		swait()
	end
	coroutine.wrap(function()
	for i = 1, 10 do
		sine = sine + 1
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(20), rad(0), rad(40)) * cfn(0, 0, 0), .35)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(15), rad(0), rad(0)) * cfn(0, 0, 0), .35)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(0), rad(30), rad(40)) * cfn(0, -.5, 0), .35)
		if root.Velocity.Magnitude < 2 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
			rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(40)) * cfn(0, 0, 0), .35)
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(10)) * cfn(0, 0, 0), .35)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, 0, 0), .35)
		elseif root.Velocity.Magnitude > 20 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
			rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0) - root.RotVelocity.Y / 20, rad(40)) * cfn(0, 0, 0), .35)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) - rl.RotVelocity.Y / 20, rad(0), rad(60 * sin(sine/4))) * cfn(0, -0.1 * sin(sine/6), 0), .35)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) - -ll.RotVelocity.Y / 20, rad(0), rad(60 * sin(sine/4))) * cfn(0, -0.1 * sin(sine/6), 0), .35)
		end
		swait()
	end
	end)()
	o4.Touched:connect(function(p)
		if isonhit == false then
			if player(p) then
				if attack then
					isonhit = true
					local bv = Instance.new('BodyVelocity', p)
					local effect2 = Instance.new('Part', o4)
					local effect = Instance.new('Part', char)
					local ayy = Instance.new('Sound', effect)
					effect.Anchored = true
					effect.CanCollide = false
					effect.BrickColor = BrickColor.new('Really black')
					effect.Name = 'Effect1'
					local effectmesh = Instance.new('SpecialMesh', effect)
					effectmesh.Scale = v3(0, 0, 0)
					effectmesh.Offset = v3(0, 0, -1)
					effectmesh.MeshId = 'rbxassetid://20329976'
					effect.CFrame = ts.CFrame * cfn(0, -3 ,0) * cfa(rad(5), 0, 0)
					ayy.Volume = 5
					ayy.PlaybackSpeed = 3
					ayy.SoundId = 'rbxassetid://743499393'
					ayy.PlayOnRemove = true
					game.Debris:AddItem(ayy, ayy.PlaybackSpeed)
					bv.MaxForce = v3(math.huge, math.huge, math.huge)
					bv.Velocity = cfn(ts.Position, player(p).Position).lookVector*300
					effect2.Material = 'Neon'
					effect2.BrickColor = BrickColor.new('Really black')
					effect2.Size = v3(0, 0, 0)
					effect2.Shape = 'Ball'
					effect2.Anchored = true
					effect2.Name = 'Effect2'
					effect2.CanCollide = false
					coroutine.wrap(function()
						for i = 1, 100 do
							if player(p) then
								effect2.CFrame = player(p).CFrame
							else
								effect2.CFrame = o4.CFrame
							end
							effect2.Transparency = effect2.Transparency + 0.1
							if player(p) then
								effect2.Size = effect2.Size:lerp(v3(20 * player(p).Size.X, 20 * player(p).Size.Y, 20 * player(p).Size.Z), 0.1)
							else
								effect2.Size = effect2.Size:lerp(v3(20, 20, 20), 0.1)
							end
							if effect2.Transparency >= 1 then
								effect2:Destroy()
							end
							swait()
						end
					end)()
					coroutine.wrap(function()
						for i = 1, 100 do
							effect.Transparency = effect.Transparency + 0.060
							if player(p) then
							if player(p).Size.X >= 3 and player(p).Size.Y >= 3 and player(p).Size.X >= 3 then
								effectmesh.Scale = effectmesh.Scale:lerp(v3(10 * player(p).Size.X, 3 * player(p).Size.Y, 10 * player(p).Size.Z), 0.1)
							else
								effectmesh.Scale = effectmesh.Scale:lerp(v3(10, 5, 10), 0.1)
							end
							else
								effectmesh.Scale = effectmesh.Scale:lerp(v3(10, 5, 10), 0.1)
							end
						if effect.Transparency >= 1 then
							effect:Destroy()
						end
						swait()
						end
					end)()
					coroutine.wrap(function()
						for i = 1, 15 do
							hum.CameraOffset = v3(rand(-1, 1), rand(-1, 1), rand(-1, 1))
							swait()
						end
						
					end)()
					game:GetService('Debris'):AddItem(bv, .1)
					player(p).Parent:BreakJoints()
					wait(0.1)
					player(p).Parent.Parent = nil
					wait(0.65)
					isonhit = false
				end
			end
		end
	end)
	for i = 1, 15 do
		hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1.5, 1.5), rand(-1.5, 1.5), rand(-1.5, 1.5)), .2)
		swait()
	end
	hum.CameraOffset = v3(0, 0, 0)
	cananim = true
	attack = false
end

function slam()
	attack = true
	cananim = false
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	for i = 1, 15 do
		rj.C0 = rj.C0:lerp(rj0 * cfa(rad(-35.63), rad(0), rad(0)) * cfn(0, 0, 0), 0.25)
		nk.C0 = nk.C0:lerp(nk0 * cfa(rad(-15), rad(0), rad(0)) * cfn(0, 0, 0), 0.25)
		rs.C0 = rs.C0:lerp(rs0 * cfa(rad(-6.73), rad(0), rad(-30)) * cfn(0, 0, 0), 0.25)
		ls.C0 = ls.C0:lerp(ls0 * cfa(rad(-6.73), rad(0), rad(30)) * cfn(0, 0, 0), 0.25)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0), rad(0), rad(-35)) * cfn(0, 0, 0), 0.25)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0), rad(0), rad(0)) * cfn(-0.4, 1, 0), 0.25)
		swait()
	end
	for i = 1, 10 do
		rj.C0 = rj.C0:lerp(rj0 * cfa(rad(20.63), rad(0), rad(0)) * cfn(0, 0, 0), 0.45)
		nk.C0 = nk.C0:lerp(nk0 * cfa(rad(15), rad(0), rad(0)) * cfn(0, 0, 0), 0.45)
		rs.C0 = rs.C0:lerp(rs0 * cfa(rad(-6.73), rad(0), rad(-20)) * cfn(0, 0, 0), 0.45)
		ls.C0 = ls.C0:lerp(ls0 * cfa(rad(-6.73), rad(0), rad(20)) * cfn(0, 0, 0), 0.45)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0), rad(0), rad(20)) * cfn(0, 0, 0), 0.45)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0), rad(0), rad(-20)) * cfn(-0.4, -0.15, 0), 0.45)
		swait()
	end
	coroutine.wrap(function()
		for i = 1, 15 do
			hum.CameraOffset = v3(rand(-1, 1), rand(-1, 1), rand(-1, 1))
			swait()
		end
	end)()
	local effect = Instance.new('Part', ts)
	local effect2 = Instance.new('Part', ts)
	local fakeeffect = Instance.new('Part', ts)
	fakeeffect.Anchored = false
	fakeeffect.CanCollide = false
	fakeeffect.Transparency = 1
	fakeeffect.Shape = 'Ball'
	fakeeffect.Size = v3(0, 0, 0)
	effect.Anchored = true
	effect.CanCollide = false
	effect.BrickColor = BrickColor.new('Really black')
	effect2.BrickColor = BrickColor.new('Really black')
	effect2.Anchored = true
	effect2.CanCollide = false
	effect2.Shape = 'Ball'
	effect2.Material = 'Neon'
	effect2.Size = v3(0, 0, 0)
	local effectmesh = Instance.new('SpecialMesh', effect)
	effectmesh.Scale = v3(0, 0, 0)
	effectmesh.Offset = v3(0, 0, -6)
	effectmesh.MeshId = 'rbxassetid://20329976'
	effect.CFrame = ts.CFrame * cfn(0, -3, 0) * cfa(rad(20), rad(0), rad(0))
	effect2.CFrame = ts.CFrame
	coroutine.wrap(function()
	for i = 1, 100 do
		fakeeffect.CFrame = ts.CFrame
		effect.Transparency = effect.Transparency + 0.090
		effect2.Transparency = effect.Transparency + 0.090
		effectmesh.Scale = effectmesh.Scale:lerp(v3(100, 35, 100), 0.1)
		effect2.Size = effect2.Size:lerp(v3(140, 140, 140), 0.1)
		fakeeffect.Size = v3(140, 140, 140)
		if effect.Transparency >= 1 then
			effect:Destroy()
			effect2:Destroy()
			fakeeffect:Destroy()
		end
		swait()
	end
	end)()
	fakeeffect.Touched:connect(function(p)
		if player(p) then
			if attack then
				local bv = Instance.new('BodyVelocity', player(p))
				local ayy = Instance.new('Sound', effect)
				ayy.Volume = 5
				ayy.PlaybackSpeed = 5
				ayy.SoundId = 'rbxassetid://743499393'
				ayy.PlayOnRemove = true
				bv.MaxForce = v3(math.huge, math.huge, math.huge)
				bv.Velocity = cfn(fakeeffect.Position, player(p).Position).lookVector*300
				game.Debris:AddItem(bv, 0.1)
				wait()
				player(p).Parent:BreakJoints()
			end
		end
	end)
	hum.WalkSpeed = 35
	hum.JumpPower = 100
	cananim = true
	wait()
	attack = false
end

function tp()
	attack = true
	cananim = true
	local effect2 = Instance.new('Part', ts)
	effect2.BrickColor = BrickColor.new('Really black')
	effect2.Anchored = true
	effect2.CanCollide = false
	effect2.Shape = 'Ball'
	effect2.Material = 'Neon'
	effect2.Size = v3(0, 0, 0)
	root.CFrame = cfn(mouse.hit.p + v3(0, 3, 0)) * cfa(0, rad(root.Orientation.Y), 0)
	coroutine.wrap(function()
		for i = 1, 15 do
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), 0.5)
			swait()
		end
	end)()
	coroutine.wrap(function()
		for i = 1, 100 do
			effect2.CFrame = ts.CFrame
			effect2.Transparency = effect2.Transparency + 0.1
			effect2.Size = effect2.Size:lerp(v3(30, 30, 30), 0.1)
			if effect2.Transparency >= 1 then
				effect2:Destroy()
			end
			swait()
		end
	end)()
	wait()
	attack = false
end

mouse.Button1Down:connect(function(k)
	if attack == false then
		smash()
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'r' and attack == false then
		tp()
	end
	if k == 'f' and attack == false then
		slam()
	end
end)

hum.HealthChanged:connect(function()
	hum.MaxHealth = 'inf'
	hum.Health = 'inf'
	local effect2 = Instance.new('Part', ts)
	local effect = Instance.new('Part', char)
	local fakeeffect = Instance.new('Part', ts)
	local ayy = Instance.new('Sound', effect)
	ayy.PlayOnRemove = true
	effect.Anchored = true
	effect.CanCollide = false
	effect.BrickColor = BrickColor.new('Really black')
	effect.Name = 'Effect1'
	local effectmesh = Instance.new('SpecialMesh', effect)
	effectmesh.Scale = v3(0, 0, 0)
	effectmesh.Offset = v3(0, 0, -3.5)
	effectmesh.MeshId = 'rbxassetid://20329976'
	effect.CFrame = ts.CFrame * cfn(0, -3, 0) * cfa(rad(0), 0, 0)
	ayy.Volume = 5
	ayy.PlaybackSpeed = 5
	ayy.SoundId = 'rbxassetid://743499393'
	game.Debris:AddItem(ayy, ayy.PlaybackSpeed)
	effect2.Material = 'Neon'
	effect2.BrickColor = BrickColor.new('Really black')
	effect2.Size = v3(0, 0, 0)
	effect2.Shape = 'Ball'
	effect2.Anchored = true
	fakeeffect.Parent = ts
	fakeeffect.Shape = 'Ball'
	fakeeffect.Anchored = false
	fakeeffect.CanCollide = false
	fakeeffect.Transparency = 1
	effect2.Name = 'Effect2'
	effect2.CanCollide = false
	coroutine.wrap(function()
		for i = 1, 100 do
			effect2.CFrame = ts.CFrame
			fakeeffect.CFrame = ts.CFrame
			fakeeffect.Size = fakeeffect.Size:lerp(v3(100, 100, 100), 0.1)
			effect2.Transparency = effect2.Transparency + 0.1
			effect2.Size = effect2.Size:lerp(v3(100, 100, 100), 0.1)
			if effect2.Transparency >= 1 then
				effect2:Destroy()
				fakeeffect:Destroy()
			end
			swait()						
		end
	end)()		
	coroutine.wrap(function()
		for i = 1, 100 do
			effect.Transparency = effect.Transparency + 0.060
			effectmesh.Scale = effectmesh.Scale:lerp(v3(60, 15, 60), 0.1)
			if effect.Transparency >= 1 then
				effect:Destroy()
			end
			swait()
		end
	end)()
	coroutine.wrap(function()
		for i = 1, 15 do			
			hum.CameraOffset = v3(rand(-1, 1), rand(-1, 1), rand(-1, 1))
			swait()
		end
	end)()
	fakeeffect.Touched:connect(function(p)
		if player(p) then
			local bv = Instance.new('BodyVelocity', player(p))
			bv.MaxForce = v3(math.huge, math.huge, math.huge)
			bv.Velocity = cfn(fakeeffect.Position, player(p).Position).lookVector*300
			game:GetService('Debris'):AddItem(bv, .1)
			wait()
			player(p).Parent:BreakJoints()
		end
	end)
end)

while true do
	sine = sine + change
	local tsvel = (root.Velocity * v3(1, 0, 1)).magnitude
	local verticalvel = (root.Velocity).y
	cc.FieldOfView = 70 + ww.PlaybackLoudness/90
	hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), ww.PlaybackLoudness/5000)
	if verticalvel > 1 and cananim then
		fall = 0
		fall2 = 0
		change = 1
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(-10), rad(0) - root.RotVelocity.Y/30, rad(0)) * cfn(0, 0, 0), .35)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-15), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-90), rad(0), rad(0)) * cfn(0, -0.5, -0.5), .15)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-90), rad(0), rad(0)) * cfn(0, -0.5, -0.5), .15)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5) - rl.RotVelocity.Y / 30, rad(0), rad(0)) * cfn(0, 0, 0), .35)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5) - -ll.RotVelocity.Y / 30, rad(0), rad(0)) * cfn(0, 0, 0), .35)
	elseif verticalvel < -1 and cananim then
		fall = fall + 2
		fall2 = fall2 + 2
		change = 1
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(fall), rad(0) - root.RotVelocity.Y/30, rad(0)) * cfn(0, 0, 0), .35)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(10), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-90 - fall2), rad(0), rad(-0)) * cfn(0, -0.5, -0.5), .15)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-90 - fall2), rad(0), rad(0)) * cfn(0, -0.5, -0.5), .15)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) - rl.RotVelocity.Y / 30, rad(0), rad(0)) * cfn(0, 0, 0), .35)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) - -ll.RotVelocity.Y / 30, rad(0), rad(0)) * cfn(0, 0, 0), .35)
		if fall >= 180 then
			fall = 180
		end
		if fall2 >= 40 then
			fall2 = 40
		end
	elseif tsvel < 2 and cananim then
		fall = 0
		fall2 = 0
		change = 1
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0.025 * sin(sine/20)), .15)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-2 * sin(sine/20)), rad(0), rad(6)) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-10), rad(-10 * sin(sine/20)), rad(0)) * cfn(0, 0, 0), .15)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(10 * sin(sine/20)), rad(0)) * cfn(0, 0, 0), .15)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(0)) * cfn(0, -0.025 * sin(sine/20), 0), .15)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, -0.025 * sin(sine/20), 0), .15)
	elseif tsvel > 20 and cananim then
		fall = 0
		fall2 = 0
		change = 1
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(10 + sin(sine/4)), rad(0) - root.RotVelocity.Y/30, rad(6 * sin(sine/4))) * cfn(0, 0, 0.050 * sin(sine/6)), .35)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-4), rad(0), rad(0) + root.RotVelocity.Y/50) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(0), rad(0) - ra.RotVelocity.Y/50 - -0.1 + sin(sine/4)/12, rad(-70 * sin(sine/4))) * cfn(0, 0, 0.050), .35)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(0), rad(0) - la.RotVelocity.Y/50 - 0.1 + sin(sine/4)/12, rad(-70 * sin(sine/4))) * cfn(0, 0, 0.050), .35)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) - rl.RotVelocity.Y / 30, rad(0), rad(70 * sin(sine/4))) * cfn(0, -0.1 * sin(sine/6), 0), .35)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) - -ll.RotVelocity.Y / 30, rad(0), rad(70 * sin(sine/4))) * cfn(0, -0.1 * sin(sine/6), 0), .35)
	end
	swait()
end
