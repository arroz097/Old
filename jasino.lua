--- [[ Jasino ]] ---
--- the shellnut jason
-- by fo43123

local me = game:GetService('Players').LocalPlayer
local char = me.Character
local hum = char:WaitForChild('Humanoid')
local root = char:WaitForChild('HumanoidRootPart')
local ts = char:WaitForChild('Torso')
local hd = char:WaitForChild('Head')
local rad = math.rad
local act = false
local sine = 0
local change = 1
local mse = me:GetMouse()
if hum.Parent ~= nil then
hum.WalkSpeed = 12
hum.JumpPower = 0
local jason = Instance.new('Part', root)
jason.Size = Vector3.new(4.73, 9.1, 2)
jason.CanCollide = false
local jasonmesh = Instance.new('SpecialMesh', jason)
jasonmesh.Scale = Vector3.new(.2, .2, .2)
jasonmesh.MeshId = 'rbxassetid://524848109'
jasonmesh.TextureId = 'rbxassetid://524848207'
local machete = Instance.new('Part', jason)
machete.CanCollide = false
machete.Size = Vector3.new(0.14, 4.84, 0.46)
local machetemesh = Instance.new('SpecialMesh', machete)
machetemesh.Scale = Vector3.new(.023, .023, .023)
machetemesh.MeshId = 'rbxassetid://441575918'
machetemesh.TextureId = 'rbxassetid://441575955'
local b1 = Instance.new('Part', jason)
local tr = Instance.new('Trail', machete)
tr.Transparency = NumberSequence.new(0)
tr.Lifetime = .1
local at0 = Instance.new('Attachment', machete)
local at1 = Instance.new('Attachment', machete)
at0.Position = Vector3.new(0, 2.112, 0.153)
at1.Position = Vector3.new(0, -1.289, 0.153)
tr.Attachment0 = at0
tr.Attachment1 = at1
b1.Shape = 'Ball'
b1.Material = 'Neon'
b1.BrickColor = BrickColor.new('Really red')
b1.Transparency = .1
b1.Size = Vector3.new(0.17, 0.17, 0.17)
local b2 = Instance.new('Part', jason)
b2.Shape = 'Ball'
b2.Material = 'Neon'
b2.BrickColor = BrickColor.new('Really red')
b2.Transparency = .1
b2.Size = Vector3.new(0.17, 0.17, 0.17)
local b1weld = Instance.new('Weld', jason)
b1weld.Part0 = jason
b1weld.Part1 = b1
b1weld.C0 = CFrame.new(0.163, 3.965, -0.399)
local b2weld = Instance.new('Weld', jason)
b2weld.Part0 = jason
b2weld.Part1 = b2
b2weld.C0 = CFrame.new(-0.17, 3.965, -0.399)
w1 = Instance.new('Weld')
w1.Parent = ts
w1.Part0 = ts
w1.Part1 = jason
w1.C0 = CFrame.new(0, 1.5, 0) * CFrame.Angles(rad(0), rad(0), rad(0))
w2 = Instance.new('Weld')
w2.Parent = jason
w2.Part0 = jason
w2.Part1 = machete
w2.C0 = CFrame.new(2.257, -.2, -1.929) * CFrame.Angles(rad(-90), rad(180), rad(0))
hum.CameraOffset = Vector3.new(0, 1.5, 0)
local rootlerp = Instance.new('ManualWeld', root)
rootlerp.Part0 = ts
rootlerp.Part1 = jason
for i,v in pairs(char:GetChildren()) do
	if v:IsA('Part') and v ~= jason then
		v.Transparency = 1
	end
end

if hd.Parent ~= nil then
	local face = hd:WaitForChild('face')
		if face then
		face.Transparency = 1
	end
end

for i,v in pairs(char:GetChildren()) do
	if v:IsA('Accessory') then
		v.Parent = nil
	end
end

hum.MaxHealth = 'inf'
hum.Health = 'inf'
hum.HealthChanged:connect(function()
	hum.MaxHealth = 'inf'
	hum.Health = 'inf'
end)

function player(var)
	if var.Parent then
		if var.Parent:FindFirstChildOfClass('Humanoid') then
			if var.Parent:FindFirstChild('Torso') and var.Parent:FindFirstChild('Head') then
				if var.Parent:IsA('Model') then
					if var.Parent.Name ~= me.Name then
						return var
					end
				end
			end
		end
	end
end

function tp()
	act = true
	local nani = Instance.new('Sound', root)
	nani.SoundId = 'rbxassetid://130984217'
	nani.Volume = 3
	root.CFrame = CFrame.new(mse.Hit.p + Vector3.new(0, 3, 0)) * CFrame.Angles(0, rad(root.Orientation.Y), 0)
	nani:Play()
	game.Debris:AddItem(nani, nani.PlaybackSpeed + 1.3)
	jason.Transparency = 1
	machete.Transparency = 1
	b1.Transparency = 1
	b2.Transparency = 1
	tr.Transparency = NumberSequence.new(1)
	wait(.35)
	b1.Transparency = .1
	b2.Transparency = .1
	tr.Transparency = NumberSequence.new(0)
	jason.Transparency = 0
	machete.Transparency = 0
	wait(nani.PlaybackSpeed + 1.3)
	act = false
end

function slash()
	act = true
	machete.Touched:connect(function(hit)
		if act then
			if player(hit) then
				player(hit).Parent:BreakJoints()
			end
		end
	end)
	for i = 1, 15 do
		rj.C0 = rj.C0:lerp(rj0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .1)
		swait()
	end
	for i = 1, 15 do
		rj.C0 = rj.C0:lerp(rj0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), .15)
		swait()
	end
	wait(.3)
	act = false
end

function ireallydontlikeyou()
	act = true
	local machete2 = machete:Clone()
	machete2.Parent = char
	local bv = Instance.new('BodyVelocity', machete2)
	bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bv.Velocity = mse.Hit.lookVector*100
	game.Debris:AddItem(machete2, 3)
	machete2.Touched:connect(function(hit)
		if act then
			if player(hit) then
				player(hit).Parent:BreakJoints()
			end
		end
	end)
	wait()
	act = false
end

mse.Button1Down:connect(function()
	if act == false then
		slash()
	end
end)

mse.KeyDown:connect(function(ee)
	if ee == 'r' then
		if act == false then
			tp()
		end
	end
	if ee == 'f' then
		if act == false then
			ireallydontlikeyou()
		end
	end
end)

function swait(t)
	if t == 0 or t == nil then
		game:GetService('RunService').Stepped:Wait()
	else
		for i = 0, t do
			game:GetService('RunService').Stepped:Wait()
		end
	end
end

gy = Instance.new('BodyGyro', root)
gy.D = 450
gy.P = 50000
gy.MaxTorque = Vector3.new(0, 90000, 0)
rj = root['RootJoint']
rj0 = rj.C0
v3 = Vector3.new
sin = math.sin
local anim = char:FindFirstChild('Animate')
if anim then
	anim:Destroy()
end
while true do
	sine = sine + change
	if root.Velocity.Magnitude < 2 then
		change = 1
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1.5, 0), 0.1)
		rj.C0 = rj.C0:lerp(rj0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .1)
	elseif root.Velocity.Magnitude < 20 then
		change = 1
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1.5 + sin(sine/3), 0), 0.1)
		rj.C0 = rj.C0:lerp(rj0 * CFrame.Angles(math.rad(10 * math.sin(sine/3)), math.rad(0) - root.RotVelocity.Y / 35, math.rad(6 * math.cos(sine/3))), .1)
	end
	gy.CFrame = CFrame.new(root.Position, mse.Hit.p)
	swait()
end
else
	error('cannot recognize humanoid')
end
