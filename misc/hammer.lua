--- [[ Hammer Script ]] ---
-- by fo43123
local me = game.Players.LocalPlayer
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
local sine = 0
local rot = 0
local attack = false
local cananim = true
local isonhit = false
local rj0 = rj.C0
local rs0 = rs.C0
local ls0 = ls.C0
local rh0 = rh.C0
local lh0 = lh.C0
local nk0 = nk.C0
local cos = math.cos
local sin = math.sin
local rad = math.rad
local rand = math.random
local cfn = CFrame.new
local cfa = CFrame.Angles
local v3 = Vector3.new
local ww = Instance.new('Sound', hd); ww.Looped = true; ww.Volume = 1; ww.SoundId = 'rbxassetid://'
hum.WalkSpeed = 23
ww:Play()

--wepon creation
local wepon = Instance.new('Folder', char)
wepon.Name = 'Hammer'
local o1 = Instance.new('Part', wepon)
local o2 = Instance.new('Part', wepon)
local o3 = Instance.new('Part', wepon)
local o4 = Instance.new('Part', wepon)
local o5 = Instance.new('Part', wepon)
local o4mesh = Instance.new('SpecialMesh', o4)
local weld1 = Instance.new('ManualWeld', o1)
local weld2 = Instance.new('ManualWeld', o1)
local weld3 = Instance.new('ManualWeld', o1)
local weld4 = Instance.new('ManualWeld', o1)
local weld5 = Instance.new('ManualWeld', ra)
o1.Name = 'cabogay'
o1.Material = 'Wood'
o1.CanCollide = false
o1.BrickColor = BrickColor.new('Nougat')
o1.Size = v3(4.15, 0.2, 0.2)
o1.Shape = 'Cylinder'
o2.Name = 'dec2'
o2.Material = 'Wood'
o2.CanCollide = false
o2.BrickColor = BrickColor.new('Dark orange')
o2.Size = v3(0.14, 0.25, 0.25)
o2.Shape = 'Cylinder'
o3.Name = 'dec1'
o3.Material = 'Wood'
o3.CanCollide = false
o3.BrickColor = BrickColor.new('Nougat')
o3.Size = v3(0.85, 0.25, 0.25)
o3.Shape = 'Cylinder'
o4.Name = 'main'
o4.Material = 'SmoothPlastic'
o4.CanCollide = false
o4.BrickColor = BrickColor.new('Hurricane grey')
o4.Shape = 'Block'
o4.Size = v3(1.11, 1.02, 1.67)
o4mesh.MeshId = 'rbxassetid://2541450270'
o4mesh.Scale = v3(0.015, 0.015, 0.03)
o5.Name = 'dec3'
o5.Material = 'Wood'
o5.CanCollide = false
o5.BrickColor = BrickColor.new('Nougat')
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
		game:GetService('RunService').Stepped:Wait(0)
	else
		for i = 0, t do
			game:GetService('RunService').Stepped:Wait(0)
		end
	end
end

function smash()
	attack = true
	cananim = false
	local damage = rand(30, 40)
	local strongdamage = rand(100, 1000)
	for i = 1, 20 do
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(-40)) * cfn(0, 0, 0), .2)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-5), rad(0), rad(50)) * cfn(0, 0, 0), .2)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(0), rad(10), rad(-160)) * cfn(0, 0, 0), .2)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(10), rad(0)) * cfn(0, 0, 0), .2)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(10), rad(20)) * cfn(0, 0, 0), .2)
		if root.Velocity.Magnitude < 2 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(10)) * cfn(0, 0, 0), .2)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, 0, 0), .2)
		elseif root.Velocity.Magnitude > 20 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0), rad(0) + rl.RotVelocity.Y/50, rad(60 * cos(sine/6))) * cfn(0, 0, 0), .2)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0), rad(0) + ll.RotVelocity.Y/50, rad(60 * cos(sine/6))) * cfn(0, 0, 0), .2)
		end
		swait()
	end
	coroutine.wrap(function()
	for i = 1, 20 do
		sine = sine + 1
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(20), rad(0), rad(40)) * cfn(0, 0, 0), .2)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(15), rad(0), rad(0)) * cfn(0, 0, 0), .2)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(0), rad(30), rad(40)) * cfn(0, -.5, 0), .2)
		if root.Velocity.Magnitude < 2 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(10)) * cfn(0, 0, 0), .2)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, 0, 0), .2)
		elseif root.Velocity.Magnitude > 20 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
			rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0), rad(0) + rl.RotVelocity.Y/50, rad(60 * cos(sine/6))) * cfn(0, 0, 0), .2)
			lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0), rad(0) + ll.RotVelocity.Y/50, rad(60 * cos(sine/6))) * cfn(0, 0, 0), .2)
		end
		swait()
	end
	end)()
	local effect = Instance.new('Part', char)
	effect.Anchored = true
	effect.CanCollide = false
	effect.BrickColor = BrickColor.new('Institutional white')
	local effectmesh = Instance.new('SpecialMesh', effect)
	effectmesh.Scale = v3(0, 0, 0)
	effectmesh.MeshId = 'rbxassetid://20329976'
	coroutine.wrap(function()
		for i = 1, 100 do
			rot = rot + 3
			local lenght = 0
			lenght = lenght + 1
			effect.CFrame = o4.CFrame * cfn(0, 0, lenght) * cfa(rad(90), rad(rot), rad(0))
			effect.Transparency = effect.Transparency + .080
			effectmesh.Scale = effectmesh.Scale:lerp(v3(5, 1, 5), .1)
			if effect.Transparency >= 1 then
				effect:Destroy()
				lenght = nil
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
					bv.MaxForce = v3(math.huge, math.huge, math.huge)
					bv.Velocity = cfn(o4.Position, player(p).Position).lookVector*60
					coroutine.wrap(function()
						for i = 1, 10 do
							hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), .5)
							swait()
						end
					end)()
					game:GetService('Debris'):AddItem(bv, .1)
					player(p).Parent:BreakJoints()
					print(damage)
					wait(0.65)
					isonhit = false
				end
			end
		end
	end)
	for i = 1, 15 do
		hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), .2)
		swait()
	end
	hum.CameraOffset = v3(0, 0, 0)
	cananim = true	
	wait()
	attack = false
end

while true do
	sine = sine + 1
	local tsvel = (root.Velocity * v3(1, 0, 1)).magnitude
	local verticalvel = (root.Velocity).y
	if verticalvel > 1 and cananim then
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(-10), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-15), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-20), rad(-10), rad(20)) * cfn(0, -.2, 0), .15)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-20), rad(10), rad(-20)) * cfn(0, -.2, 0), .15)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-10), rad(-5), rad(-10)) * cfn(0, 0, 0), .15)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-10), rad(5), rad(10)) * cfn(0, 0, 0), .15)
	elseif verticalvel < -1 and cananim then
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(10), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-20), rad(0), rad(-0)) * cfn(0, 0, 0), .15)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-20), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(0), rad(0)) * cfn(0, 0, 0), .15)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(0), rad(-0)) * cfn(0, 0, 0), .15)
	elseif tsvel < 2 and cananim then
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0.025 * cos(sine/60)), .1)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(-2 * cos(sine/60)), rad(0), rad(6)) * cfn(0, 0, 0), .1)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(-10), rad(-10 * cos(sine/60)), rad(0)) * cfn(0, 0, 0), .1)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(-10), rad(10 * cos(sine/60)), rad(0)) * cfn(0, 0, 0), .1)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(-5), rad(-5), rad(0)) * cfn(0, -0.025 * cos(sine/60), 0), .1)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(-5), rad(5), rad(0)) * cfn(0, -0.025 * cos(sine/60), 0), .1)
	elseif tsvel > 20 and cananim then
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
		rj.C0 = clerp(rj.C0, rj0 * cfa(rad(-5 * sin(sine/3)), rad(0) - root.RotVelocity.Y/30, rad(6 * cos(sine/6))) * cfn(0, 0, 0.050 * cos(sine/6)), .35)
		nk.C0 = clerp(nk.C0, nk0 * cfa(rad(0), rad(0), rad(0) + root.RotVelocity.Y/50) * cfn(0, 0, 0), .15)
		rs.C0 = clerp(rs.C0, rs0 * cfa(rad(0), rad(0) + ra.RotVelocity.Y/50, rad(-60 * cos(sine/6))) * cfn(0, 0, 0), .35)
		ls.C0 = clerp(ls.C0, ls0 * cfa(rad(0), rad(0) + la.RotVelocity.Y/50, rad(-60 * cos(sine/6))) * cfn(0, 0, 0), .35)
		rh.C0 = clerp(rh.C0, rh0 * cfa(rad(0) - root.RotVelocity.Y/30, rad(0), rad(60 * cos(sine/6))) * cfn(0, 0, 0), .35)
		lh.C0 = clerp(lh.C0, lh0 * cfa(rad(0) - -root.RotVelocity.Y/30, rad(0), rad(60 * cos(sine/6))) * cfn(0, 0, 0), .35)
	end
	swait()
end