--- blackhole
-- by fo43123
local me = game:GetService('Players').LocalPlayer
local char = me.Character
local hum = char:WaitForChild('Humanoid')
local hd = char['Head']
local ts = char['Torso']
local ra = char['Right Arm']
local la = char['Left Arm']
local rl = char['Right Leg']
local ll = char['Left Leg']
local root = char['HumanoidRootPart']
local nk = ts['Neck']
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local rh = ts['Right Hip']
local lh = ts['Left Hip']
local rj = root['RootJoint']
local anim = char:WaitForChild('Animate')
local attack = false
local pose = nil
local cananim = true
hum.WalkSpeed = 16
hum.JumpPower = 50
local mse = me:GetMouse()

function get_in(class)
	local debounce = false
	class.Touched:connect(function(hito)
		if hito:IsA'Part' and hito.Parent.Name ~= me.Name and hito ~= workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base') then
			debounce = true
			hito.Anchored = true
			hito.CanCollide = false
			wait(.1)
			for i = 1, 50 do
			hito.CFrame = hito.CFrame:lerp(CFrame.new(hito.Position.X, -20, hito.Position.Z), .050)
			wait()
			end
			game.Debris:AddItem(hito, 2)
			--wait(2)
			--debounce = false
		end
	end)
end

function black()
	attack = true
	local bl = Instance.new('Part', char)
	bl.Shape = 'Cylinder'
	bl.Material = 'Neon'
	bl.BrickColor = BrickColor.new('Really black')
	bl.Size = Vector3.new(0, 0, 0)
	bl.Anchored = true
	bl.CanCollide = false
	get_in(bl)
	for i = 1, 200 do
		bl.Size = bl.Size:lerp(Vector3.new(0.05, 100, 100), .025)
		bl.CFrame = ts.CFrame * CFrame.new(0, -2.90, 0) * CFrame.Angles(0, 0, math.rad(90))
		wait()
	end
	for i = 1, 15 do
		bl.Transparency = i/15
		wait()
	end
	bl:Destroy()
	wait(1)
	attack = false
end

mse.KeyDown:connect(function(k)
	if k == 'f' and attack == false then
		black()
	end
end)
