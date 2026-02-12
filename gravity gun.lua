
--- Simple Gravity gun ---
-- [[ Version v.04 ]]
-- by fo43123 --

local me = passadas
local char = me.Character
local hum = char:FindFirstChild('Humanoid')
local hd = char:FindFirstChild('Head')
local ts = char:FindFirstChild('Torso')
local ra = char:FindFirstChild('Right Arm')
local la = char:FindFirstChild('Left Arm')
local rl = char:FindFirstChild('Right Leg')
local ll = char:FindFirstChild('Left Leg')
local root = char:FindFirstChild('HumanoidRootPart')
local nk = ts:FindFirstChild('Neck')
local rs = ts:FindFirstChild('Right Shoulder')
local ls = ts:FindFirstChild('Left Shoulder')
local rh = ts:FindFirstChild('Right Hip')
local lh = ts:FindFirstChild('Left Hip')
local rj = root:FindFirstChild('RootJoint')
local pose = 'idle'
local anim = char:WaitForChild('Animate')
local face = hd:WaitForChild('face')
local attack = false
local cananim = true
local act = false
local got = nil
local e = false
local cangy = false
local mm = Instance.new('Model', ra)
mm.Name = 'Gravity gun'
local grv = Instance.new('Part', mm)
local grvmesh = Instance.new('SpecialMesh', grv)
local grvweld = Instance.new('ManualWeld', ra)
local gy = Instance.new('BodyGyro', face)
gy.D = 450
gy.P = 40000
gy.MaxTorque = Vector3.new(0, 90000, 0)
grv.Size = Vector3.new(1.03, 1, 2.88)
grv.CanCollide = false
grvmesh.Scale = Vector3.new(0.1, 0.1, 0.1)
grvmesh.MeshId = 'rbxassetid://429945742'
grvmesh.TextureId = 'rbxassetid://429945837'
grvweld.Part0 = ra
grvweld.Part1 = grv
grvweld.C0 = CFrame.new(-.6, -1.1, -0.8) * CFrame.Angles(math.rad(-90), math.rad(180), math.rad(0))
hum.WalkSpeed = 16
hum.JumpPower = 50
print([[
	Moves:
	Left mouse Click ( On a Part ) - Enable/Disable Gravity gun
	R - Gravity gun Teleport
	V - Enable/Disable BodyGyro
]])
if anim then
	anim:Destroy()
	for i,v in pairs(hum:GetPlayingAnimationTracks()) do
	v:Stop()
end
end

function on()
	attack = true
	cananim = true
	if mouse.Target ~= nil and mouse.Target ~= workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base') then
	local ee = Instance.new('Part', grv)
		ee.Material = 'Neon'
		ee.Size = Vector3.new(.5, .5, .5)
		ee.BrickColor = BrickColor.new('Deep orange')
		ee.Anchored = true
		ee.Transparency = 0.1
		ee.CanCollide = false
		if mouse.Target:IsA('Part') and mouse.Target ~= workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base') then
			if act == false then
			act = true
			got = mouse.Target
			local gotp = got.Parent
			got.Anchored = true
			repeat
            if got.Size.Z > 5 then
            got.CFrame = grv.CFrame * CFrame.new(-.16, 0, got.Size.Z)
                elseif got.Size.Z < 5 then
            got.CFrame = grv.CFrame * CFrame.new(-.16, 0, 3.3)
            end
			ee.CFrame = grv.CFrame * CFrame.new(-.16, 0, 1.1) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			wait()
			until act == false
			got.Anchored = false
			ee:Destroy()
			wait()
			attack = false
			end
		end
	end
end
	
function tp()
	if e == false then
		e = true
		local ef = Instance.new('Part', root)
		ef.Material = 'Neon'
		ef.BrickColor = BrickColor.new('Deep orange')
		ef.Anchored = true
		ef.CanCollide = false
		ef.Size = Vector3.new(0, 0, 0)
		root.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.rad(root.Orientation.Y), 0)
		for i = 1, 5 do
			ef.Size = ef.Size:lerp(Vector3.new(1.25, 1.25, 1.25), .4)
			ef.Transparency = i/5
			ef.CFrame = grv.CFrame * CFrame.new(-.16, 0, 1.5) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
			wait()
		end
		ef:Destroy()
		wait(.15)
		e = false
	end	
end

function gyro()
	cangy = true
		gy.Parent = root
		repeat
			gy.CFrame = CFrame.new(root.Position, mouse.Hit.p)
			wait()
		until cangy == false
		cangy = false
	gy.Parent = face
end
	
mouse.KeyDown:connect(function(k)
	if k == 'r' then
		tp()
	end
	if k == 'v' and cangy == false then
		gyro()
	elseif k == 'v' and cangy == true then
		cangy = false
	end
end)

mouse.Button1Down:connect(function()
	if attack == false then
		on()
	elseif mouse.Button1Down and attack == true then
		attack = false
		act = false
	end
end)

coroutine.wrap(function()
	while true do
		if root.Velocity.Magnitude < 2 then
			pose = 'idle'
		elseif root.Velocity.Magnitude < 20 then
			pose = 'walk'
		elseif root.Velocity.Y > 1 then
			pose = 'jump'
		end
		wait()
	end
end)()

while true do
	for i = 0, 1.5, .1 do
	if pose == 'idle' and cananim then
		rs.C1 = rs.C1:lerp(CFrame.new(-0.5, 0.5, 0, -0.540752053, 0.0423333235, 0.840116143, -0.837553501, 0.0655687228, -0.542406559, -0.0780472159, -0.996949673, 0), .3)
		ls.C1 = ls.C1:lerp(CFrame.new(0.428625554, 1.80226827, -2.98023224e-08, 0.922985911, 0.1758973, -0.342282265, 0.336230993, 0.0640769526, 0.939597189, 0.187205002, -0.982320845, 0), .3)
		rh.C1 = rh.C1:lerp(CFrame.new(0.499999821, 1.06183183, 0, 0, 0.0612570159, 0.998122036, 0.116754964, 0.991295576, -0.0608380623, -0.993160725, 0.116535701, -0.00715206051), .3)
		lh.C1 = lh.C1:lerp(CFrame.new(-0.499999911, 1.10208642, 5.21540642e-08, 0, -0.0339197405, -0.999424577, 0.078368634, 0.996350825, -0.0338154174, 0.99692446, -0.0783235356, 0.00265824376), .3)
		rj.C1 = rj.C1:lerp(CFrame.new(0, -0.0678989887, 0, -0.859616339, -0.510940135, 0, 0, 0, 1, -0.510940135, 0.859616339, 0), .3)
		nk.C1 = nk.C1:lerp(CFrame.new(0, -0.5, 0, -0.845926881, 0.53329891, 0, 0, 0, 1, 0.53329891, 0.845926881, 0), .3)
	wait()
	else
		break
	end
	end
	for i = 0, 1.5, .1 do
	if pose == 'idle' and cananim then
		rs.C1 = rs.C1:lerp(CFrame.new(-0.5, 0.5, 0, -0.540752053, 0.0423333235, 0.840116143, -0.837553501, 0.0655687228, -0.542406559, -0.0780472159, -0.996949673, 0), .3)
		ls.C1 = ls.C1:lerp(CFrame.new(0.428625554, 1.80226827, -2.98023224e-08, 0.922985911, 0.1758973, -0.342282265, 0.336230993, 0.0640769526, 0.939597189, 0.187205002, -0.982320845, 0), .3)
		rh.C1 = rh.C1:lerp(CFrame.new(0.499999791, 1, 0, 0, 0.0612570159, 0.998122036, 0.116754964, 0.991295576, -0.0608380623, -0.993160725, 0.116535701, -0.00715206051), .3)
		lh.C1 = lh.C1:lerp(CFrame.new(-0.499999881, 0.999999166, 5.21540642e-08, 0, -0.0339197405, -0.999424577, 0.078368634, 0.996350825, -0.0338154174, 0.99692446, -0.0783235356, 0.00265824376), .3)
		rj.C1 = rj.C1:lerp(CFrame.new(0, 0, 0, -0.859616339, -0.510940135, 0, 0, 0, 1, -0.510940135, 0.859616339, 0), .3)
		nk.C1 = nk.C1:lerp(CFrame.new(0, -0.5, 0, -0.845926881, 0.53329891, 0, 0, 0, 1, 0.53329891, 0.845926881, 0), .3)
	wait()
	else
		break
	end
	end
	for i = 0, 1.5, .18 do
	if pose == 'walk' and cananim then
		rs.C1 = rs.C1:lerp(CFrame.new(-0.5, 0.5, 0, -0.540752053, 0.0423333235, 0.840116143, -0.837553501, 0.0655687228, -0.542406559, -0.0780472159, -0.996949673, 0), .3)
		ls.C1 = ls.C1:lerp(CFrame.new(0.428625554, 1.80226827, -2.98023224e-08, 0.922985911, 0.1758973, -0.342282265, 0.336230993, 0.0640769526, 0.939597189, 0.187205002, -0.982320845, 0), .3)
		rh.C1 = rh.C1:lerp(CFrame.new(0.499999791, 1, 8.94069672e-08, -0.25202769, 0.0888243318, 0.963634968, 0.498883039, 0.865183353, 0.0507277362, -0.829215109, 0.493525922, -0.262363136), .3)
		lh.C1 = lh.C1:lerp(CFrame.new(-0.421784699, 1.07188261, 0.279919326, 0.331994563, -0.0580668189, -0.941492379, 0.30971697, 0.949478567, 0.0506548472, 0.890985429, -0.308413297, 0.333205998), .3)
		rj.C1 = rj.C1:lerp(CFrame.new(0, -0.0785331726, 0, -0.859616339, -0.510940135, 0, 0, 0, 1, -0.510940135, 0.859616339, 0), .3)
		nk.C1 = nk.C1:lerp(CFrame.new(0, -0.5, 0, -0.845926881, 0.53329891, 0, 0, 0, 1, 0.53329891, 0.845926881, 0), .3)
		wait()
	else
		break
		end
	end
	for i = 0, 1.5, .18 do
		if pose == 'walk' and cananim then
		rs.C1 = rs.C1:lerp(CFrame.new(-0.5, 0.5, 0, -0.540752053, 0.0423333235, 0.840116143, -0.837553501, 0.0655687228, -0.542406559, -0.0780472159, -0.996949673, 0), .3)
		ls.C1 = ls.C1:lerp(CFrame.new(0.428625554, 1.80226827, -2.98023224e-08, 0.922985911, 0.1758973, -0.342282265, 0.336230993, 0.0640769526, 0.939597189, 0.187205002, -0.982320845, 0), .3)
		rh.C1 = rh.C1:lerp(CFrame.new(0.499999791, 1.00000024, -5.96046448e-08, -0.25202769, 0.0888243318, 0.963634968, -0.434252501, 0.879510283, -0.194643795, -0.86481595, -0.467516452, -0.183088794), .3)
		lh.C1 = lh.C1:lerp(CFrame.new(-0.421784669, 0.82996434, 0.233687401, 0.331994563, -0.0580668189, -0.941492379, -0.489694238, 0.842459142, -0.224637792, 0.806212842, 0.535621941, 0.251256853), .3)
		rj.C1 = rj.C1:lerp(CFrame.new(0, 0.144885302, 0, -0.859616339, -0.510940135, 0, 0, 0, 1, -0.510940135, 0.859616339, 0), .3)
		nk.C1 = nk.C1:lerp(CFrame.new(0, -0.5, 0, -0.845926881, 0.53329891, 0, 0, 0, 1, 0.53329891, 0.845926881, 0), .3)
		wait()
		else
			break
		end
	end
	if hum.WalkSpeed > 16  then
		hum.WalkSpeed = 16
	end
	if hum.JumpPower > 50 then
		hum.JumpPower = 50
	end
	wait()
end
