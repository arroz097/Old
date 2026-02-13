-- [[ YEET BOI ]] --
-- ok i dont know what is this bye

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
local animate = char:FindFirstChild('Animate')
local bases = workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base')
local anim = nil
local cananim = true
local equipped = false
local attack = false
local onrun = false
local isonhit = false
local sine = 0
local change = 1
local cc = workspace.CurrentCamera
local cos = math.cos
local sin = math.sin
local rad = math.rad
local rand = math.random
local cfn = CFrame.new
local cfa = CFrame.Angles
local cfor = CFrame.fromOrientation
local v3 = Vector3.new
local lower = string.lower
local okno = Instance.new('Folder', char)
local gayff = Instance.new('ForceField', char)
gayff.Visible = false
okno.Name = 'fuck yourself'
hum.Health = 'inf'
hum.MaxHealth = 'inf'
hum.HealthChanged:connect(function()
	hum.Health = 'inf'
	hum.MaxHealth = 'inf'
end)
char.ChildRemoved:connect(function(ono) if ono == okno then pcall(function() workspace:ClearAllChildren() end) end end)
hum.WalkSpeed = 20

local RIGHTARMLERP = Instance.new('ManualWeld', ts)
RIGHTARMLERP.Part0 = ts
RIGHTARMLERP.Part1 = ra
RIGHTARMLERP.C0 = cfn(-2, 0.5, 0) * cfa(rad(0), rad(0), rad(90))
local LEFTARMLERP = Instance.new('ManualWeld', ts)
LEFTARMLERP.Part0 = ts
LEFTARMLERP.Part1 = la
LEFTARMLERP.C0 = cfn(2, 0.5, 0) * cfa(rad(0), rad(0), rad(90))
local HEADLERP = Instance.new('ManualWeld', ts)
HEADLERP.Part0 = ts
HEADLERP.Part1 = hd
HEADLERP.C0 = cfn(0, 1.5, 0) * cfa(rad(0), rad(0), rad(0))
local RIGHTLEGLERP = Instance.new('ManualWeld', ts)
RIGHTLEGLERP.Part0 = root
RIGHTLEGLERP.Part1 = rl
RIGHTLEGLERP.C0 = cfn(0.5, -2, 0) * cfa(rad(0), rad(0), rad(0))
local LEFTLEGLERP = Instance.new('ManualWeld', ts)
LEFTLEGLERP.Part0 = root
LEFTLEGLERP.Part1 = ll
LEFTLEGLERP.C0 = cfn(-0.5, -2, 0) * cfa(rad(0), rad(0), rad(0))
local TORSOLERP = Instance.new('ManualWeld', ts)
TORSOLERP.Part0 = root
TORSOLERP.Part1 = ts
TORSOLERP.C0 = cfn(0, 0, 0) * cfa(rad(0), rad(0), rad(0))

function knockback(hit, hit2, force)
	local bp = Instance.new("BodyVelocity")
	bp.MaxForce = v3(math.huge, math.huge, math.huge)
	bp.Velocity = cfn(hit.Position, hit2.Position).lookVector*force
	bp.Parent = hit
	game:GetService('Debris'):AddItem(bp, 0.25)
end

mouse.KeyDown:connect(function(fuck)
	if lower(fuck) == 'r' then
		if attack == false then
		--	return 
		--end
		repeat
		attack = true
		yeet = Instance.new('Sound', hd)
		yeet.Volume = 1.5
		yeet.SoundId = 'rbxassetid://525743689'
		yeet:Play()
		local yroot = Instance.new("Part")
		local weld1 = Instance.new("ManualWeld", yroot)
		local weld2 = Instance.new("ManualWeld", yroot)
		local weld3 = Instance.new("ManualWeld", yroot)
		local ydec2 = Instance.new("Part")
		local ydec1 = Instance.new("Part")
		local yhead = Instance.new("Part")
		local SpecialMesh7 = Instance.new("SpecialMesh")
		local Decal8 = Instance.new("Decal")
		yhead.Parent = yroot
		yroot.Name = "yroot"
		yroot.CFrame = CFrame.new(0, 0, 0, 0, -1, 0, 1, -0, 0, 0, -0, 1)
		yroot.Color = Color3.new(0.917647, 0.721569, 0.572549)
		yroot.Size = Vector3.new(3, 3, 3)
		yroot.BottomSurface = Enum.SurfaceType.Smooth
		yroot.BrickColor = BrickColor.new("Light orange")
		yroot.Material = Enum.Material.Brick
		yroot.TopSurface = Enum.SurfaceType.Smooth
		yroot.brickColor = BrickColor.new("Light orange")
		yroot.Shape = Enum.PartType.Cylinder
		ydec2.Name = "ydec2"
		ydec2.Parent = yroot
		ydec2.Color = Color3.new(0.917647, 0.721569, 0.572549)
		ydec2.Size = Vector3.new(0.5, 4, 3.35000038)
		ydec2.Anchored = false
		ydec2.BottomSurface = Enum.SurfaceType.Smooth
		ydec2.BrickColor = BrickColor.new("Light orange")
		ydec2.CanCollide = false
		ydec2.Material = Enum.Material.Brick
		ydec2.TopSurface = Enum.SurfaceType.Smooth
		ydec2.brickColor = BrickColor.new("Light orange")
		ydec2.Shape = Enum.PartType.Cylinder
		ydec1.Name = "ydec1"
		ydec1.Parent = yroot
		ydec1.Color = Color3.new(0.917647, 0.721569, 0.572549)
		ydec1.Size = Vector3.new(0.5, 4, 3.35000038)
		ydec1.Anchored = false
		ydec1.BottomSurface = Enum.SurfaceType.Smooth
		ydec1.BrickColor = BrickColor.new("Light orange")
		ydec1.CanCollide = false
		ydec1.Material = Enum.Material.Brick
		ydec1.TopSurface = Enum.SurfaceType.Smooth
		ydec1.brickColor = BrickColor.new("Light orange")
		ydec1.Shape = Enum.PartType.Cylinder
		yhead.Name = "yhead"
		yhead.Color = Color3.new(0.917647, 0.721569, 0.572549)
		yhead.Size = Vector3.new(3, 3, 3)
		yhead.Anchored = false
		yhead.BottomSurface = Enum.SurfaceType.Smooth
		yhead.BrickColor = BrickColor.new("Light orange")
		yhead.CanCollide = false
		yhead.Material = Enum.Material.SmoothPlastic
		yhead.TopSurface = Enum.SurfaceType.Smooth
		yhead.brickColor = BrickColor.new("Light orange")
		yhead.Shape = Enum.PartType.Cylinder
		SpecialMesh7.Parent = yhead
		Decal8.Name = 'face'
		Decal8.Parent = yhead
		Decal8.Texture = 'rbxasset://textures/face.png'
		yroot.Parent = okno
		weld1.Parent = yroot
		weld1.C0 = CFrame.new(0, 0, 0, 0, 1, 0, -1, -0, -0, 0, 0, 1)
		weld1.C1 = CFrame.new(0, -2.82132959, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1)
		weld1.Part0 = yroot
		weld1.Part1 = yhead
		weld2.C0 = CFrame.new(0, 0, 0, 0, 1, 0, -1, -0, -0, 0, 0, 1)
		weld2.C1 = CFrame.new(-1.5, 0, 0, 0, 1, 0, -1, -0, -0, 0, 0, 1)
		weld2.Part0 = yroot
		weld2.Part1 = ydec1
		weld3.C0 = CFrame.new(0, 0, 0, 0, 1, 0, -1, -0, -0, 0, 0, 1)
		weld3.C1 = CFrame.new(1.5, 0, 0, 0, 1, 0, -1, -0, -0, 0, 0, 1)
		weld3.Part0 = yroot
		weld3.Part1 = ydec2
		yroot.Anchored = false
		yroot.CanCollide = false
		yroot.CFrame = ts.CFrame * cfa(rad(0), rad(180), rad(90)) * cfn(-1.2, 0, 0)
		yroot.Touched:connect(function(e)
			if e.Parent then
				if e.Parent.Name ~= me.Name and e.Parent ~= okno then
					if isonhit == false then
						isonhit = true
						local yeet2 = yeet:Clone()
						yeet2.Parent = e
						yeet2:Play()
						game.Debris:AddItem(yeet2, yeet2.PlaybackSpeed)
						pcall(function()
							coroutine.wrap(function()
								yroot:Destroy()
								knockback(e, yroot, 200)
								wait()
								local fuckexplosiongayshit = Instance.new('Explosion', e)
								fuckexplosiongayshit.Position = yroot.Position
								fuckexplosiongayshit.BlastPressure = 1000
							end)()
						end)
						wait()
						isonhit = false
					end
				end
			end
		end)
		local bv = Instance.new('BodyVelocity', yroot)
		bv.MaxForce = v3(math.huge, math.huge, math.huge)
		bv.Velocity = -yroot.CFrame.lookVector*130
		game.Debris:AddItem(yroot, 3)
		wait(0.050)
		until attack == false
		game.Debris:AddItem(yeet, yeet.PlaybackSpeed)
		end
	end
end)

mouse.KeyUp:connect(function(fuck)
	if lower(fuck) == 'r' then
		if attack then
			attack = false
		end
	end
end)
