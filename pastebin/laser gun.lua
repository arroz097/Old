--- [[ Laser gun ]] ---
-- by fo43123

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
local sicko = Instance.new('Sound', hd)
sicko.Volume = 1.5
sicko.SoundId = 'rbxassetid://1722896592'
sicko.Looped = true
sicko:Play()
hum.WalkSpeed = 19.99
print([[
	-- MoveList -- 
	LMB - Laser Shoot
	F - Charged Shoot
	Q - Toggle Run
	M - Toggle Music
]])

local RIGHTARMLERP = Instance.new('ManualWeld', ts)
RIGHTARMLERP.Part0 = ts
RIGHTARMLERP.Part1 = ra
RIGHTARMLERP.C0 = cfn(1.5, 0, 0) * cfa(rad(0), rad(0), rad(0))
local LEFTARMLERP = Instance.new('ManualWeld', ts)
LEFTARMLERP.Part0 = ts
LEFTARMLERP.Part1 = la
LEFTARMLERP.C0 = cfn(-1.5, 0, 0) * cfa(rad(0), rad(0), rad(0))
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

-- laser gun model
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new('Model', char)
mas.Name = 'LaserGun'
effects = Instance.new('Folder', char)
effects.Name = 'Effects'
Part0 = Instance.new("Part")
Part1 = Instance.new("Part")
Part2 = Instance.new("Part")
Part3 = Instance.new("Part")
Part4 = Instance.new("Part")
Part5 = Instance.new("Part")
Part6 = Instance.new("Part")
ManualWeld7 = Instance.new("ManualWeld")
ManualWeld8 = Instance.new("ManualWeld")
ManualWeld9 = Instance.new("ManualWeld")
ManualWeld10 = Instance.new("ManualWeld")
ManualWeld11 = Instance.new("ManualWeld")
ManualWeld12 = Instance.new("ManualWeld")
ManualWeld13 = Instance.new("ManualWeld")
ManualWeld14 = Instance.new("ManualWeld")
ManualWeld15 = Instance.new("ManualWeld")
ManualWeld16 = Instance.new("ManualWeld")
ManualWeld17 = Instance.new("ManualWeld")
ManualWeld18 = Instance.new("ManualWeld")
ManualWeld19 = Instance.new("ManualWeld")
ManualWeld20 = Instance.new("ManualWeld")
ManualWeld21 = Instance.new("ManualWeld")
ManualWeld22 = Instance.new("ManualWeld")
ManualWeld23 = Instance.new("ManualWeld")
ManualWeld24 = Instance.new("ManualWeld")
ManualWeld25 = Instance.new("ManualWeld")
ManualWeld26 = Instance.new("ManualWeld")
ManualWeld27 = Instance.new("ManualWeld")
ManualWeld28 = Instance.new("ManualWeld")
ManualWeld29 = Instance.new("ManualWeld")
ManualWeld30 = Instance.new("ManualWeld")
ManualWeld31 = Instance.new("ManualWeld")
ManualWeld32 = Instance.new("ManualWeld")
ManualWeld33 = Instance.new("ManualWeld")
ManualWeld34 = Instance.new("ManualWeld")
ManualWeld35 = Instance.new("ManualWeld")
ManualWeld36 = Instance.new("ManualWeld")
ManualWeld37 = Instance.new("ManualWeld")
ManualWeld38 = Instance.new("ManualWeld")
ManualWeld39 = Instance.new("ManualWeld")
ManualWeld40 = Instance.new("ManualWeld")
ManualWeld41 = Instance.new("ManualWeld")
ManualWeld42 = Instance.new("ManualWeld")
ManualWeld43 = Instance.new("ManualWeld")
ManualWeld44 = Instance.new("ManualWeld")
ManualWeld45 = Instance.new("ManualWeld")
ManualWeld46 = Instance.new("ManualWeld")
ManualWeld47 = Instance.new("ManualWeld")
ManualWeld48 = Instance.new("ManualWeld")
gripweld = Instance.new('ManualWeld')
Part49 = Instance.new("Part")
Part50 = Instance.new("Part")
Part51 = Instance.new("Part")
Part52 = Instance.new("Part")
Part53 = Instance.new("Part")
Part54 = Instance.new("Part")
Part55 = Instance.new("Part")
Part56 = Instance.new("Part")
Part57 = Instance.new("Part")
Part58 = Instance.new("Part")
Part59 = Instance.new("Part")
Part60 = Instance.new("Part")
Part61 = Instance.new("Part")
Part62 = Instance.new("Part")
Part63 = Instance.new("Part")
Part64 = Instance.new("Part")
Part65 = Instance.new("Part")
Part66 = Instance.new("Part")
Part67 = Instance.new("Part")
Part68 = Instance.new("Part")
Part69 = Instance.new("Part")
Part70 = Instance.new("Part")
Part71 = Instance.new("Part")
Part72 = Instance.new("Part")
Part73 = Instance.new("Part")
Part74 = Instance.new("Part")
Part75 = Instance.new("Part")
Part76 = Instance.new("Part")
Part77 = Instance.new("Part")
Part78 = Instance.new("Part")
Part79 = Instance.new("Part")
Part80 = Instance.new("Part")
Part81 = Instance.new("Part")
Part82 = Instance.new("Part")
Part0.Name = "a5"
Part0.Parent = mas
Part0.CFrame = CFrame.new(0.44999975, 0.269999921, 0.00499999709, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part0.Position = Vector3.new(0.44999975, 0.269999921, 0.00499999709)
Part0.Size = Vector3.new(0.0799999386, 0.400000036, 0.200000077)
Part0.BottomSurface = Enum.SurfaceType.Smooth
Part0.CanCollide = false
Part0.Material = Enum.Material.DiamondPlate
Part0.TopSurface = Enum.SurfaceType.Smooth
Part1.Name = "d9"
Part1.Parent = mas
Part1.CFrame = CFrame.new(0.0899997056, 0.440000147, 0.185000196, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part1.Position = Vector3.new(0.0899997056, 0.440000147, 0.185000196)
Part1.Color = Color3.new(0.654902, 0.368627, 0.607843)
Part1.Size = Vector3.new(3.86000013, 1, 0.150000468)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Lilac")
Part1.CanCollide = false
Part1.Material = Enum.Material.Neon
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Lilac")
Part1.Shape = Enum.PartType.Cylinder
Part2.Name = "d16"
Part2.Parent = mas
Part2.CFrame = CFrame.new(1.54499984, 1.48000097, 0.0149999876, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part2.Position = Vector3.new(1.54499984, 1.48000097, 0.0149999876)
Part2.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part2.Size = Vector3.new(4.02999926, 0.26000011, 0.0899998695)
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.BrickColor = BrickColor.new("Dark stone grey")
Part2.CanCollide = false
Part2.Material = Enum.Material.DiamondPlate
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.brickColor = BrickColor.new("Dark stone grey")
Part2.Shape = Enum.PartType.Cylinder
Part3.Name = "d2"
Part3.Parent = mas
Part3.CFrame = CFrame.new(-0.434999824, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part3.Position = Vector3.new(-0.434999824, 1, 0)
Part3.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part3.Size = Vector3.new(0.190000013, 1.10000002, 1.10000002)
Part3.BottomSurface = Enum.SurfaceType.Smooth
Part3.BrickColor = BrickColor.new("Dark stone grey")
Part3.CanCollide = false
Part3.Material = Enum.Material.DiamondPlate
Part3.TopSurface = Enum.SurfaceType.Smooth
Part3.brickColor = BrickColor.new("Dark stone grey")
Part3.Shape = Enum.PartType.Cylinder
Part4.Name = "d1"
Part4.Parent = mas
Part4.CFrame = CFrame.new(2.69371295, 0.609683573, 0.175000012, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1)
Part4.Orientation = Vector3.new(0, 0, 15)
Part4.Position = Vector3.new(2.69371295, 0.609683573, 0.175000012)
Part4.Rotation = Vector3.new(0, 0, 15)
Part4.Color = Color3.new(0.654902, 0.368627, 0.607843)
Part4.Size = Vector3.new(1.48999989, 0.14000003, 0.270000607)
Part4.BottomSurface = Enum.SurfaceType.Smooth
Part4.BrickColor = BrickColor.new("Lilac")
Part4.CanCollide = false
Part4.Material = Enum.Material.Neon
Part4.TopSurface = Enum.SurfaceType.Smooth
Part4.brickColor = BrickColor.new("Lilac")
Part4.Shape = Enum.PartType.Cylinder
Part5.Name = "d30"
Part5.Parent = mas
Part5.CFrame = CFrame.new(2.18309999, 1.07482338, -0.0850001648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part5.Position = Vector3.new(2.18309999, 1.07482338, -0.0850001648)
Part5.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part5.Size = Vector3.new(0.159999982, 1, 0.990000427)
Part5.BottomSurface = Enum.SurfaceType.Smooth
Part5.BrickColor = BrickColor.new("Dark stone grey")
Part5.CanCollide = false
Part5.Material = Enum.Material.DiamondPlate
Part5.TopSurface = Enum.SurfaceType.Smooth
Part5.brickColor = BrickColor.new("Dark stone grey")
Part5.Shape = Enum.PartType.Cylinder
Part6.Name = "grip"
Part6.Parent = mas
Part6.Size = Vector3.new(0.5, 1, 0.350000054)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.CanCollide = false
Part6.Material = Enum.Material.DiamondPlate
Part6.TopSurface = Enum.SurfaceType.Smooth
ManualWeld7.Parent = Part6
ManualWeld7.Part0 = Part6
ManualWeld7.Part1 = Part65
ManualWeld7.part1 = Part65
ManualWeld8.Parent = Part6
ManualWeld8.C1 = CFrame.new(-0.235000014, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld8.Part0 = Part6
ManualWeld8.Part1 = Part52
ManualWeld8.part1 = Part52
ManualWeld9.Parent = Part6
ManualWeld9.C1 = CFrame.new(-2.99571395, -0.170000002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld9.Part0 = Part6
ManualWeld9.Part1 = Part79
ManualWeld9.part1 = Part79
ManualWeld10.Parent = Part6
ManualWeld10.C1 = CFrame.new(-2.99571395, -0.249999955, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld10.Part0 = Part6
ManualWeld10.Part1 = Part78
ManualWeld10.part1 = Part78
ManualWeld11.Parent = Part6
ManualWeld11.C1 = CFrame.new(-0.0949999243, -0.124999948, -0.00499999709, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld11.Part0 = Part6
ManualWeld11.Part1 = Part60
ManualWeld11.part1 = Part60
ManualWeld12.Parent = Part6
ManualWeld12.C1 = CFrame.new(-0.44999975, -0.269999921, -0.00499999709, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld12.Part0 = Part6
ManualWeld12.Part1 = Part0
ManualWeld12.part1 = Part0
ManualWeld13.Parent = Part6
ManualWeld13.C1 = CFrame.new(-0.0349999666, -0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld13.Part0 = Part6
ManualWeld13.Part1 = Part50
ManualWeld13.part1 = Part50
ManualWeld14.Parent = Part6
ManualWeld14.C1 = CFrame.new(-0.920000017, -1, -0.00500012189, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld14.Part0 = Part6
ManualWeld14.Part1 = Part70
ManualWeld14.part1 = Part70
ManualWeld15.Parent = Part6
ManualWeld15.C1 = CFrame.new(-1.16000128, -0.98999995, -2.23517418e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld15.Part0 = Part6
ManualWeld15.Part1 = Part67
ManualWeld15.part1 = Part67
ManualWeld16.Parent = Part6
ManualWeld16.C1 = CFrame.new(-2.75972462, 0.108274877, -0.175000012, 0.965925872, 0.258818984, 0, -0.258818984, 0.965925872, 0, 0, 0, 1)
ManualWeld16.Part0 = Part6
ManualWeld16.Part1 = Part4
ManualWeld16.part1 = Part4
ManualWeld17.Parent = Part6
ManualWeld17.C1 = CFrame.new(0.434999824, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld17.Part0 = Part6
ManualWeld17.Part1 = Part3
ManualWeld17.part1 = Part3
ManualWeld18.Parent = Part6
ManualWeld18.C1 = CFrame.new(0.0949997902, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld18.Part0 = Part6
ManualWeld18.Part1 = Part72
ManualWeld18.part1 = Part72
ManualWeld19.Parent = Part6
ManualWeld19.C1 = CFrame.new(-3.51756072, -1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld19.Part0 = Part6
ManualWeld19.Part1 = Part73
ManualWeld19.part1 = Part73
ManualWeld20.Parent = Part6
ManualWeld20.C1 = CFrame.new(-1.54000008, -1.03999996, 0.444999844, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld20.Part0 = Part6
ManualWeld20.Part1 = Part75
ManualWeld20.part1 = Part75
ManualWeld21.Parent = Part6
ManualWeld21.C1 = CFrame.new(1.6049999, -0.48999998, 1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld21.Part0 = Part6
ManualWeld21.Part1 = Part59
ManualWeld21.part1 = Part59
ManualWeld22.Parent = Part6
ManualWeld22.C1 = CFrame.new(-3.45999956, -1, 0.00999992527, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld22.Part0 = Part6
ManualWeld22.Part1 = Part71
ManualWeld22.part1 = Part71
ManualWeld23.Parent = Part6
ManualWeld23.C1 = CFrame.new(-3.62500095, -1, 0.0199998766, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld23.Part0 = Part6
ManualWeld23.Part1 = Part69
ManualWeld23.part1 = Part69
ManualWeld24.Parent = Part6
ManualWeld24.C1 = CFrame.new(-0.0899997056, -0.440000147, -0.185000196, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld24.Part0 = Part6
ManualWeld24.Part1 = Part1
ManualWeld24.part1 = Part1
ManualWeld25.Parent = Part6
ManualWeld25.C1 = CFrame.new(1.03499973, -0.980000019, -0.00999992155, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld25.Part0 = Part6
ManualWeld25.Part1 = Part74
ManualWeld25.part1 = Part74
ManualWeld26.Parent = Part6
ManualWeld26.C1 = CFrame.new(0.704999566, -0.519999981, 1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld26.Part0 = Part6
ManualWeld26.Part1 = Part57
ManualWeld26.part1 = Part57
ManualWeld27.Parent = Part6
ManualWeld27.Part0 = Part6
ManualWeld27.Part1 = Part82
ManualWeld27.part1 = Part82
ManualWeld28.Parent = Part6
ManualWeld28.C1 = CFrame.new(-1.35500014, -0.519999981, 1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld28.Part0 = Part6
ManualWeld28.Part1 = Part49
ManualWeld28.part1 = Part49
ManualWeld29.Parent = Part6
ManualWeld29.C1 = CFrame.new(-1.91999972, -0.48999998, 1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld29.Part0 = Part6
ManualWeld29.Part1 = Part77
ManualWeld29.part1 = Part77
ManualWeld30.Parent = Part6
ManualWeld30.C1 = CFrame.new(-3.57999992, -1, 0.00999984331, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld30.Part0 = Part6
ManualWeld30.Part1 = Part53
ManualWeld30.part1 = Part53
ManualWeld31.Parent = Part6
ManualWeld31.C1 = CFrame.new(-1.54499984, -1.48000097, -0.0149999876, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld31.Part0 = Part6
ManualWeld31.Part1 = Part2
ManualWeld31.part1 = Part2
ManualWeld32.Parent = Part6
ManualWeld32.C1 = CFrame.new(-1.54499984, -1.46000099, 0.125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld32.Part0 = Part6
ManualWeld32.Part1 = Part80
ManualWeld32.part1 = Part80
ManualWeld33.Parent = Part6
ManualWeld33.C1 = CFrame.new(-3.61553025, -1, 0.0250003319, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld33.Part0 = Part6
ManualWeld33.Part1 = Part76
ManualWeld33.part1 = Part76
ManualWeld34.Parent = Part6
ManualWeld34.C1 = CFrame.new(-1.54499984, -1.05000126, -0.494999945, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld34.Part0 = Part6
ManualWeld34.Part1 = Part51
ManualWeld34.part1 = Part51
ManualWeld35.Parent = Part6
ManualWeld35.C1 = CFrame.new(-1.54499984, -1.05000126, -0.494999945, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld35.Part0 = Part6
ManualWeld35.Part1 = Part51
ManualWeld35.part1 = Part51
ManualWeld36.Parent = Part6
ManualWeld36.C1 = CFrame.new(1.20499957, -0.995000005, 2.14204192e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld36.Part0 = Part6
ManualWeld36.Part1 = Part58
ManualWeld36.part1 = Part58
ManualWeld37.Parent = Part6
ManualWeld37.C1 = CFrame.new(-3.56499934, -1, 0.0300001204, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld37.Part0 = Part6
ManualWeld37.Part1 = Part55
ManualWeld37.part1 = Part55
ManualWeld38.Parent = Part6
ManualWeld38.C1 = CFrame.new(0.750000477, -1.34000111, -0.0149999876, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld38.Part0 = Part6
ManualWeld38.Part1 = Part81
ManualWeld38.part1 = Part81
ManualWeld39.Parent = Part6
ManualWeld39.C1 = CFrame.new(0.750000477, -1.30000114, 0.124999993, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld39.Part0 = Part6
ManualWeld39.Part1 = Part54
ManualWeld39.part1 = Part54
ManualWeld40.Parent = Part6
ManualWeld40.C1 = CFrame.new(1.03000009, -0.48999998, 1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld40.Part0 = Part6
ManualWeld40.Part1 = Part66
ManualWeld40.part1 = Part66
ManualWeld41.Parent = Part6
ManualWeld41.C1 = CFrame.new(-2.78999925, -1.00999999, 0.00243542343, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld41.Part0 = Part6
ManualWeld41.Part1 = Part61
ManualWeld41.part1 = Part61
ManualWeld42.Parent = Part6
ManualWeld42.C1 = CFrame.new(-2.78999925, -1.00999999, 0.00243542343, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld42.Part0 = Part6
ManualWeld42.Part1 = Part61
ManualWeld42.part1 = Part61
ManualWeld43.Parent = Part6
ManualWeld43.C1 = CFrame.new(-2.52999949, -1.07482338, 0.0850001648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld43.Part0 = Part6
ManualWeld43.Part1 = Part68
ManualWeld43.part1 = Part68
ManualWeld44.Parent = Part6
ManualWeld44.C1 = CFrame.new(1.12920988, -0.980000019, 0.0427353457, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld44.Part0 = Part6
ManualWeld44.Part1 = Part64
ManualWeld44.part1 = Part64
ManualWeld45.Parent = Part6
ManualWeld45.C1 = CFrame.new(-3.78912425, -1, 0.0328193009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld45.Part0 = Part6
ManualWeld45.Part1 = Part56
ManualWeld45.part1 = Part56
ManualWeld46.Parent = Part6
ManualWeld46.C1 = CFrame.new(-3.78912425, -1, 0.0328193009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld46.Part0 = Part6
ManualWeld46.Part1 = Part56
ManualWeld46.part1 = Part56
ManualWeld47.Parent = Part6
ManualWeld47.C1 = CFrame.new(-3.13071442, -0.674999893, 0.0199999958, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld47.Part0 = Part6
ManualWeld47.Part1 = Part62
ManualWeld47.part1 = Part62
ManualWeld48.Parent = Part6
ManualWeld48.C1 = CFrame.new(-2.18309999, -1.07482338, 0.0850001648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld48.Part0 = Part6
ManualWeld48.Part1 = Part5
ManualWeld48.part1 = Part5
Part49.Name = "d13"
Part49.Parent = mas
Part49.CFrame = CFrame.new(1.35500014, 0.519999981, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part49.Position = Vector3.new(1.35500014, 0.519999981, -1.63912773e-07)
Part49.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part49.Size = Vector3.new(0.25, 1, 0.600000381)
Part49.BottomSurface = Enum.SurfaceType.Smooth
Part49.BrickColor = BrickColor.new("Dark stone grey")
Part49.CanCollide = false
Part49.Material = Enum.Material.DiamondPlate
Part49.TopSurface = Enum.SurfaceType.Smooth
Part49.brickColor = BrickColor.new("Dark stone grey")
Part49.Shape = Enum.PartType.Cylinder
Part50.Name = "a6"
Part50.Parent = mas
Part50.CFrame = CFrame.new(0.0349999666, 0.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part50.Position = Vector3.new(0.0349999666, 0.5, 0)
Part50.Size = Vector3.new(3.93000007, 1, 0.5)
Part50.BottomSurface = Enum.SurfaceType.Smooth
Part50.CanCollide = false
Part50.Material = Enum.Material.DiamondPlate
Part50.TopSurface = Enum.SurfaceType.Smooth
Part50.Shape = Enum.PartType.Cylinder
Part51.Name = "d19"
Part51.Parent = mas
Part51.CFrame = CFrame.new(1.54499984, 1.05000126, 0.494999945, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part51.Position = Vector3.new(1.54499984, 1.05000126, 0.494999945)
Part51.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part51.Size = Vector3.new(4.02999926, 0.26000011, 0.0899998695)
Part51.BottomSurface = Enum.SurfaceType.Smooth
Part51.BrickColor = BrickColor.new("Dark stone grey")
Part51.CanCollide = false
Part51.Material = Enum.Material.DiamondPlate
Part51.TopSurface = Enum.SurfaceType.Smooth
Part51.brickColor = BrickColor.new("Dark stone grey")
Part51.Shape = Enum.PartType.Cylinder
Part52.Name = "main"
Part52.Parent = mas
Part52.CFrame = CFrame.new(0.235000014, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part52.Position = Vector3.new(0.235000014, 1, 0)
Part52.Size = Vector3.new(1.47000003, 1, 1)
Part52.BottomSurface = Enum.SurfaceType.Smooth
Part52.CanCollide = false
Part52.Material = Enum.Material.DiamondPlate
Part52.TopSurface = Enum.SurfaceType.Smooth
Part52.Shape = Enum.PartType.Cylinder
Part53.Name = "d15"
Part53.Parent = mas
Part53.CFrame = CFrame.new(3.57999992, 1, -0.00999984331, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part53.Position = Vector3.new(3.57999992, 1, -0.00999984331)
Part53.Color = Color3.new(0.831373, 0.564706, 0.741176)
Part53.Size = Vector3.new(0.340000004, 1.10000002, 0.700000346)
Part53.BottomSurface = Enum.SurfaceType.Smooth
Part53.BrickColor = BrickColor.new("Sunrise")
Part53.CanCollide = false
Part53.Material = Enum.Material.Neon
Part53.TopSurface = Enum.SurfaceType.Smooth
Part53.brickColor = BrickColor.new("Sunrise")
Part53.Shape = Enum.PartType.Cylinder
Part54.Name = "d23"
Part54.Parent = mas
Part54.CFrame = CFrame.new(-0.750000477, 1.30000114, -0.124999993, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part54.Position = Vector3.new(-0.750000477, 1.30000114, -0.124999993)
Part54.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part54.Size = Vector3.new(0.700000226, 0.26000011, 0.0899998695)
Part54.BottomSurface = Enum.SurfaceType.Smooth
Part54.BrickColor = BrickColor.new("Dark stone grey")
Part54.CanCollide = false
Part54.Material = Enum.Material.DiamondPlate
Part54.TopSurface = Enum.SurfaceType.Smooth
Part54.brickColor = BrickColor.new("Dark stone grey")
Part54.Shape = Enum.PartType.Cylinder
Part55.Name = "d21"
Part55.Parent = mas
Part55.CFrame = CFrame.new(3.56499934, 1, -0.0300001204, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part55.Position = Vector3.new(3.56499934, 1, -0.0300001204)
Part55.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part55.Size = Vector3.new(0.190000013, 1.17999995, 1.37999976)
Part55.BottomSurface = Enum.SurfaceType.Smooth
Part55.BrickColor = BrickColor.new("Dark stone grey")
Part55.CanCollide = false
Part55.Material = Enum.Material.DiamondPlate
Part55.TopSurface = Enum.SurfaceType.Smooth
Part55.brickColor = BrickColor.new("Dark stone grey")
Part55.Shape = Enum.PartType.Cylinder
Part56.Name = "d28"
Part56.Parent = mas
Part56.CFrame = CFrame.new(3.78912425, 1, -0.0328193009, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part56.Position = Vector3.new(3.78912425, 1, -0.0328193009)
Part56.Color = Color3.new(0.831373, 0.564706, 0.741176)
Part56.Size = Vector3.new(0.190000013, 1.10000002, 0.710001349)
Part56.BottomSurface = Enum.SurfaceType.Smooth
Part56.BrickColor = BrickColor.new("Sunrise")
Part56.CanCollide = false
Part56.Material = Enum.Material.Neon
Part56.TopSurface = Enum.SurfaceType.Smooth
Part56.brickColor = BrickColor.new("Sunrise")
Part56.Shape = Enum.PartType.Cylinder
Part57.Name = "d11"
Part57.Parent = mas
Part57.CFrame = CFrame.new(-0.704999566, 0.519999981, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part57.Position = Vector3.new(-0.704999566, 0.519999981, -1.63912773e-07)
Part57.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part57.Size = Vector3.new(0.25, 1, 0.600000381)
Part57.BottomSurface = Enum.SurfaceType.Smooth
Part57.BrickColor = BrickColor.new("Dark stone grey")
Part57.CanCollide = false
Part57.Material = Enum.Material.DiamondPlate
Part57.TopSurface = Enum.SurfaceType.Smooth
Part57.brickColor = BrickColor.new("Dark stone grey")
Part57.Shape = Enum.PartType.Cylinder
Part58.Name = "d20"
Part58.Parent = mas
Part58.CFrame = CFrame.new(-1.20499957, 0.995000005, -2.14204192e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part58.Position = Vector3.new(-1.20499957, 0.995000005, -2.14204192e-07)
Part58.Color = Color3.new(0.694118, 0.654902, 1)
Part58.Transparency = 0.89999997615814
Part58.Size = Vector3.new(0.529999971, 0.530000448, 0.620000482)
Part58.BottomSurface = Enum.SurfaceType.Smooth
Part58.BrickColor = BrickColor.new("Pastel violet")
Part58.CanCollide = false
Part58.Material = Enum.Material.Neon
Part58.TopSurface = Enum.SurfaceType.Smooth
Part58.brickColor = BrickColor.new("Pastel violet")
Part58.Shape = Enum.PartType.Cylinder
Part59.Name = "d6"
Part59.Parent = mas
Part59.CFrame = CFrame.new(-1.6049999, 0.48999998, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part59.Position = Vector3.new(-1.6049999, 0.48999998, -1.63912773e-07)
Part59.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part59.Size = Vector3.new(0.549999893, 1, 0.600000381)
Part59.BottomSurface = Enum.SurfaceType.Smooth
Part59.BrickColor = BrickColor.new("Dark stone grey")
Part59.CanCollide = false
Part59.Material = Enum.Material.DiamondPlate
Part59.TopSurface = Enum.SurfaceType.Smooth
Part59.brickColor = BrickColor.new("Dark stone grey")
Part59.Shape = Enum.PartType.Cylinder
Part60.Name = "a4"
Part60.Parent = mas
Part60.CFrame = CFrame.new(0.0949999243, 0.124999948, 0.00499999709, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part60.Position = Vector3.new(0.0949999243, 0.124999948, 0.00499999709)
Part60.Size = Vector3.new(0.649999857, 0.110000134, 0.200000077)
Part60.BottomSurface = Enum.SurfaceType.Smooth
Part60.CanCollide = false
Part60.Material = Enum.Material.DiamondPlate
Part60.TopSurface = Enum.SurfaceType.Smooth
Part61.Name = "d25"
Part61.Parent = mas
Part61.CFrame = CFrame.new(2.78999925, 1.00999999, -0.00243542343, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part61.Position = Vector3.new(2.78999925, 1.00999999, -0.00243542343)
Part61.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part61.Size = Vector3.new(0.159999982, 1, 0.850000501)
Part61.BottomSurface = Enum.SurfaceType.Smooth
Part61.BrickColor = BrickColor.new("Dark stone grey")
Part61.CanCollide = false
Part61.Material = Enum.Material.DiamondPlate
Part61.TopSurface = Enum.SurfaceType.Smooth
Part61.brickColor = BrickColor.new("Dark stone grey")
Part61.Shape = Enum.PartType.Cylinder
Part62.Name = "d29"
Part62.Parent = mas
Part62.CFrame = CFrame.new(3.13071442, 0.674999893, -0.0199999958, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part62.Position = Vector3.new(3.13071442, 0.674999893, -0.0199999958)
Part62.Color = Color3.new(0.411765, 0.4, 0.360784)
Part62.Size = Vector3.new(0.701428473, 0.17285727, 0.382000059)
Part62.BottomSurface = Enum.SurfaceType.Smooth
Part62.BrickColor = BrickColor.new("Flint")
Part62.CanCollide = false
Part62.Material = Enum.Material.DiamondPlate
Part62.TopSurface = Enum.SurfaceType.Smooth
Part62.brickColor = BrickColor.new("Flint")
Part63.Name = "main"
Part63.Parent = mas
Part63.CFrame = CFrame.new(1.06499958, 1, -0.0248420238, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part63.Position = Vector3.new(1.06499958, 1, -0.0248420238)
Part63.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part63.Size = Vector3.new(1.74999964, 1, 0.900000095)
Part63.BottomSurface = Enum.SurfaceType.Smooth
Part63.BrickColor = BrickColor.new("Dark stone grey")
Part63.CanCollide = false
Part63.Material = Enum.Material.DiamondPlate
Part63.TopSurface = Enum.SurfaceType.Smooth
Part63.brickColor = BrickColor.new("Dark stone grey")
Part63.Shape = Enum.PartType.Cylinder
Part64.Name = "d27"
Part64.Parent = mas
Part64.CFrame = CFrame.new(-1.12920988, 0.980000019, -0.0427353457, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part64.Position = Vector3.new(-1.12920988, 0.980000019, -0.0427353457)
Part64.Color = Color3.new(0.411765, 0.4, 0.360784)
Part64.Size = Vector3.new(0.190000013, 1.10000002, 0.700000286)
Part64.BottomSurface = Enum.SurfaceType.Smooth
Part64.BrickColor = BrickColor.new("Flint")
Part64.CanCollide = false
Part64.Material = Enum.Material.DiamondPlate
Part64.TopSurface = Enum.SurfaceType.Smooth
Part64.brickColor = BrickColor.new("Flint")
Part64.Shape = Enum.PartType.Cylinder
Part65.Name = "a1"
Part65.Parent = mas
Part65.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part65.Size = Vector3.new(0.390000105, 0.880000055, 0.380000412)
Part65.BottomSurface = Enum.SurfaceType.Smooth
Part65.BrickColor = BrickColor.new("Dark stone grey")
Part65.CanCollide = false
Part65.Material = Enum.Material.DiamondPlate
Part65.TopSurface = Enum.SurfaceType.Smooth
Part65.brickColor = BrickColor.new("Dark stone grey")
Part66.Name = "d24"
Part66.Parent = mas
Part66.CFrame = CFrame.new(-1.03000009, 0.48999998, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part66.Position = Vector3.new(-1.03000009, 0.48999998, -1.63912773e-07)
Part66.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part66.Size = Vector3.new(0.159999982, 1, 0.600000381)
Part66.BottomSurface = Enum.SurfaceType.Smooth
Part66.BrickColor = BrickColor.new("Dark stone grey")
Part66.CanCollide = false
Part66.Material = Enum.Material.DiamondPlate
Part66.TopSurface = Enum.SurfaceType.Smooth
Part66.brickColor = BrickColor.new("Dark stone grey")
Part66.Shape = Enum.PartType.Cylinder
Part67.Name = "ray"
Part67.Parent = mas
Part67.CFrame = CFrame.new(1.16000128, 0.98999995, 2.23517418e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part67.Position = Vector3.new(1.16000128, 0.98999995, 2.23517418e-08)
Part67.Color = Color3.new(0.654902, 0.368627, 0.607843)
Part67.Size = Vector3.new(5.22000217, 1, 0.520000458)
Part67.BottomSurface = Enum.SurfaceType.Smooth
Part67.BrickColor = BrickColor.new("Lilac")
Part67.CanCollide = false
Part67.Material = Enum.Material.Neon
Part67.TopSurface = Enum.SurfaceType.Smooth
Part67.brickColor = BrickColor.new("Lilac")
Part67.Shape = Enum.PartType.Cylinder
Part68.Name = "d26"
Part68.Parent = mas
Part68.CFrame = CFrame.new(2.52999949, 1.07482338, -0.0850001648, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part68.Position = Vector3.new(2.52999949, 1.07482338, -0.0850001648)
Part68.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part68.Size = Vector3.new(0.159999982, 1, 0.990000427)
Part68.BottomSurface = Enum.SurfaceType.Smooth
Part68.BrickColor = BrickColor.new("Dark stone grey")
Part68.CanCollide = false
Part68.Material = Enum.Material.DiamondPlate
Part68.TopSurface = Enum.SurfaceType.Smooth
Part68.brickColor = BrickColor.new("Dark stone grey")
Part68.Shape = Enum.PartType.Cylinder
Part69.Name = "d8"
Part69.Parent = mas
Part69.CFrame = CFrame.new(3.62500095, 1, -0.0199998766, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part69.Position = Vector3.new(3.62500095, 1, -0.0199998766)
Part69.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part69.Size = Vector3.new(0.50999999, 1.10000002, 0.840000272)
Part69.BottomSurface = Enum.SurfaceType.Smooth
Part69.BrickColor = BrickColor.new("Dark stone grey")
Part69.CanCollide = false
Part69.Material = Enum.Material.DiamondPlate
Part69.TopSurface = Enum.SurfaceType.Smooth
Part69.brickColor = BrickColor.new("Dark stone grey")
Part69.Shape = Enum.PartType.Cylinder
Part70.Name = "a7"
Part70.Parent = mas
Part70.CFrame = CFrame.new(0.920000017, 1, 0.00500012189, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part70.Position = Vector3.new(0.920000017, 1, 0.00500012189)
Part70.Size = Vector3.new(4, 1, 0.730000257)
Part70.BottomSurface = Enum.SurfaceType.Smooth
Part70.CanCollide = false
Part70.Material = Enum.Material.DiamondPlate
Part70.TopSurface = Enum.SurfaceType.Smooth
Part70.Shape = Enum.PartType.Cylinder
Part71.Name = "d7"
Part71.Parent = mas
Part71.CFrame = CFrame.new(3.45999956, 1, -0.00999992527, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part71.Position = Vector3.new(3.45999956, 1, -0.00999992527)
Part71.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part71.Size = Vector3.new(0.339999974, 1.10000002, 0.940000176)
Part71.BottomSurface = Enum.SurfaceType.Smooth
Part71.BrickColor = BrickColor.new("Dark stone grey")
Part71.CanCollide = false
Part71.Material = Enum.Material.DiamondPlate
Part71.TopSurface = Enum.SurfaceType.Smooth
Part71.brickColor = BrickColor.new("Dark stone grey")
Part71.Shape = Enum.PartType.Cylinder
Part72.Name = "d3"
Part72.Parent = mas
Part72.CFrame = CFrame.new(-0.0949997902, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part72.Position = Vector3.new(-0.0949997902, 1, 0)
Part72.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part72.Size = Vector3.new(0.190000013, 1.10000002, 1.10000002)
Part72.BottomSurface = Enum.SurfaceType.Smooth
Part72.BrickColor = BrickColor.new("Dark stone grey")
Part72.CanCollide = false
Part72.Material = Enum.Material.DiamondPlate
Part72.TopSurface = Enum.SurfaceType.Smooth
Part72.brickColor = BrickColor.new("Dark stone grey")
Part72.Shape = Enum.PartType.Cylinder
Part73.Name = "d4"
Part73.Parent = mas
Part73.CFrame = CFrame.new(3.51756072, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part73.Position = Vector3.new(3.51756072, 1, 0)
Part73.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part73.Size = Vector3.new(0.190000013, 1.10000002, 1.10000002)
Part73.BottomSurface = Enum.SurfaceType.Smooth
Part73.BrickColor = BrickColor.new("Dark stone grey")
Part73.CanCollide = false
Part73.Material = Enum.Material.DiamondPlate
Part73.TopSurface = Enum.SurfaceType.Smooth
Part73.brickColor = BrickColor.new("Dark stone grey")
Part73.Shape = Enum.PartType.Cylinder
Part74.Name = "d10"
Part74.Parent = mas
Part74.CFrame = CFrame.new(-1.03499973, 0.980000019, 0.00999992155, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part74.Position = Vector3.new(-1.03499973, 0.980000019, 0.00999992155)
Part74.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part74.Size = Vector3.new(0.190000013, 1.10000002, 0.920000196)
Part74.BottomSurface = Enum.SurfaceType.Smooth
Part74.BrickColor = BrickColor.new("Dark stone grey")
Part74.CanCollide = false
Part74.Material = Enum.Material.DiamondPlate
Part74.TopSurface = Enum.SurfaceType.Smooth
Part74.brickColor = BrickColor.new("Dark stone grey")
Part74.Shape = Enum.PartType.Cylinder
Part75.Name = "d5"
Part75.Parent = mas
Part75.CFrame = CFrame.new(1.54000008, 1.03999996, -0.444999844, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part75.Position = Vector3.new(1.54000008, 1.03999996, -0.444999844)
Part75.Color = Color3.new(0.654902, 0.368627, 0.607843)
Part75.Size = Vector3.new(4.02000046, 1, 0.150000468)
Part75.BottomSurface = Enum.SurfaceType.Smooth
Part75.BrickColor = BrickColor.new("Lilac")
Part75.CanCollide = false
Part75.Material = Enum.Material.Neon
Part75.TopSurface = Enum.SurfaceType.Smooth
Part75.brickColor = BrickColor.new("Lilac")
Part75.Shape = Enum.PartType.Cylinder
Part76.Name = "d18"
Part76.Parent = mas
Part76.CFrame = CFrame.new(3.61553025, 1, -0.0250003319, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part76.Position = Vector3.new(3.61553025, 1, -0.0250003319)
Part76.Color = Color3.new(0.831373, 0.564706, 0.741176)
Part76.Size = Vector3.new(0.190000013, 1.10000002, 0.95000118)
Part76.BottomSurface = Enum.SurfaceType.Smooth
Part76.BrickColor = BrickColor.new("Sunrise")
Part76.CanCollide = false
Part76.Material = Enum.Material.Neon
Part76.TopSurface = Enum.SurfaceType.Smooth
Part76.brickColor = BrickColor.new("Sunrise")
Part76.Shape = Enum.PartType.Cylinder
Part77.Name = "d14"
Part77.Parent = mas
Part77.CFrame = CFrame.new(1.91999972, 0.48999998, -1.63912773e-07, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part77.Position = Vector3.new(1.91999972, 0.48999998, -1.63912773e-07)
Part77.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part77.Size = Vector3.new(0.139999941, 1, 0.600000381)
Part77.BottomSurface = Enum.SurfaceType.Smooth
Part77.BrickColor = BrickColor.new("Dark stone grey")
Part77.CanCollide = false
Part77.Material = Enum.Material.DiamondPlate
Part77.TopSurface = Enum.SurfaceType.Smooth
Part77.brickColor = BrickColor.new("Dark stone grey")
Part77.Shape = Enum.PartType.Cylinder
Part78.Name = "a3"
Part78.Parent = mas
Part78.CFrame = CFrame.new(2.99571395, 0.249999955, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part78.Position = Vector3.new(2.99571395, 0.249999955, 0)
Part78.Size = Vector3.new(0.431428641, 1.02285719, 0.302000105)
Part78.BottomSurface = Enum.SurfaceType.Smooth
Part78.CanCollide = false
Part78.Material = Enum.Material.DiamondPlate
Part78.TopSurface = Enum.SurfaceType.Smooth
Part79.Name = "a2"
Part79.Parent = mas
Part79.CFrame = CFrame.new(2.99571395, 0.170000002, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part79.Position = Vector3.new(2.99571395, 0.170000002, 0)
Part79.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part79.Size = Vector3.new(0.336514443, 0.759314477, 0.327886105)
Part79.BottomSurface = Enum.SurfaceType.Smooth
Part79.BrickColor = BrickColor.new("Dark stone grey")
Part79.CanCollide = false
Part79.Material = Enum.Material.DiamondPlate
Part79.TopSurface = Enum.SurfaceType.Smooth
Part79.brickColor = BrickColor.new("Dark stone grey")
Part80.Name = "d17"
Part80.Parent = mas
Part80.CFrame = CFrame.new(1.54499984, 1.46000099, -0.125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part80.Position = Vector3.new(1.54499984, 1.46000099, -0.125)
Part80.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part80.Size = Vector3.new(4.02999926, 0.26000011, 0.0899998695)
Part80.BottomSurface = Enum.SurfaceType.Smooth
Part80.BrickColor = BrickColor.new("Dark stone grey")
Part80.CanCollide = false
Part80.Material = Enum.Material.DiamondPlate
Part80.TopSurface = Enum.SurfaceType.Smooth
Part80.brickColor = BrickColor.new("Dark stone grey")
Part80.Shape = Enum.PartType.Cylinder
Part81.Name = "d22"
Part81.Parent = mas
Part81.CFrame = CFrame.new(-0.750000477, 1.34000111, 0.0149999876, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part81.Position = Vector3.new(-0.750000477, 1.34000111, 0.0149999876)
Part81.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part81.Size = Vector3.new(0.700000226, 0.26000011, 0.0899998695)
Part81.BottomSurface = Enum.SurfaceType.Smooth
Part81.BrickColor = BrickColor.new("Dark stone grey")
Part81.CanCollide = false
Part81.Material = Enum.Material.DiamondPlate
Part81.TopSurface = Enum.SurfaceType.Smooth
Part81.brickColor = BrickColor.new("Dark stone grey")
Part81.Shape = Enum.PartType.Cylinder
Part82.Name = "d12"
Part82.Parent = mas
Part82.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part82.Size = Vector3.new(0.25, 1, 0.600000381)
Part82.BottomSurface = Enum.SurfaceType.Smooth
Part82.BrickColor = BrickColor.new("Dark stone grey")
Part82.CanCollide = false
Part82.Material = Enum.Material.DiamondPlate
Part82.TopSurface = Enum.SurfaceType.Smooth
Part82.brickColor = BrickColor.new("Dark stone grey")
Part82.Shape = Enum.PartType.Cylinder
gripweld.Parent = char
gripweld.Part0 = ra
gripweld.Part1 = Part5
gripweld.C0 = cfn(-2.4, -0.65, -0.65) * cfa(rad(-75), rad(180), rad(-14))
for i,v in pairs(mas:GetChildren()) do
	pcall(function() v:MakeJoints() end)
end
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
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

function swait(t)
	if t == 0 or t == nil then
		script.Heartbeat.Event:Wait()
	else
		for i = 0, t do
			script.Heartbeat.Event:Wait()
		end
	end
end

function sound(id, parent, volume, pitch, timepos, name)
	local s = Instance.new('Sound')
	s.Parent = parent
	s.SoundId = 'rbxassetid://'..id
	s.Volume = volume
	s.Name = name
	s.PlaybackSpeed = pitch
	s.TimePosition = timepos
	s:Play()
	game.Debris:AddItem(s, 5)
end

function camshake(duration, intensity)
	coroutine.wrap(function()
		for i = 1, duration do
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), 0.1 * intensity)
			swait()
		end
		hum.CameraOffset = v3(0, 0, 0)
	end)()
end

function raycast(pos, direction, range, ignoredecendants)
	return workspace:FindPartOnRay(Ray.new(pos, direction.unit * range), ignoredecendants)
end

function shoot()
	attack = true
	cananim = false
	local bg = Instance.new('BodyGyro', hd)
	bg.MaxTorque = v3(0, 9000, 0)
	bg.D = 175
	bg.P = 20000
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	for i = 1, 20 do
		bg.CFrame = cfn(hd.Position, mouse.Hit.p)
		gripweld.C0 = gripweld.C0:lerp(cfn(-2.2, -1.3, -0.65) * cfa(rad(-75), rad(160), rad(-14)), 0.15)
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0, 0) * cfor(rad(0), rad(-70), rad(0)), 0.15)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(0, 1.5, 0) * cfor(rad(0), rad(80), rad(0)), 0.15)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.354, 0.271, -1) * cfor(rad(76), rad(-60), rad(-76)), 0.15)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.65, 0.511, -1) * cfor(rad(80), rad(-20), rad(-50)), 0.15)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.423, -2.055, 0.726) * cfor(rad(-10), rad(0), rad(10)), 0.15)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.423, -2.055, -0.526) * cfor(rad(10), rad(0), rad(-10)), 0.15)
		swait()
	end
	camshake(20, 5)
	local ray = Ray.new(ra.CFrame.p, (mouse.Hit.p - ra.CFrame.p).unit * 999.999)
	local part, pos = workspace:FindPartOnRay(ray, char, false, true)
	local beam = Instance.new('Part', effects)
	local effect = Instance.new('Part', effects)
	local explosion1 = Instance.new('Part', effects)
	local explosion2 = Instance.new('Part', effects)
	local fakeexplosion = Instance.new('Part', effects)
	sound(131179973, Part67, 5, 1.25, 0, '')
	fakeexplosion.CanCollide = false
	fakeexplosion.Anchored = false
	fakeexplosion.Transparency = 1
	fakeexplosion.Shape = 'Ball'
	explosion2.CanCollide = false
	explosion2.Anchored = true
	explosion2.BrickColor = BrickColor.new('Sunrise')
	explosion2.Material = 'Neon'
	explosion2.Shape = 'Ball'
	explosion2.Size = v3(0, 0, 0)
	explosion1.CanCollide = false
	explosion1.Anchored = true
	explosion1.Anchored = true
	explosion1.BrickColor = BrickColor.new('Sunrise')
	explosion1.Material = 'Neon'
	explosion1.Shape = 'Ball'
	explosion1.Size = v3(0, 0, 0)
	effect.CanCollide = false
	effect.BrickColor = BrickColor.new('Sunrise')
	effect.Anchored = true
	effect.Material = 'Neon'
	effect.Shape = 'Block'
	effect.Size = v3(0, 0, 0)
	beam.CanCollide = false
	beam.Anchored = true
	beam.BrickColor = BrickColor.new('Sunrise')
	beam.Material = 'Neon'
	beam.Shape = 'Cylinder'
	explosion1.CFrame = cfn(mouse.Hit.p)
	explosion2.CFrame = cfn(mouse.Hit.p)
	fakeexplosion.CFrame = cfn(mouse.Hit.p)
	fakeexplosion.Touched:connect(function(hit)
		if hit.Parent then
			if not hit:IsDescendantOf(char) and not hit:IsDescendantOf(mas) and hit ~= bases then
					local bv = Instance.new('BodyVelocity', hit)
					bv.MaxForce = v3(math.huge, math.huge, math.huge)
					bv.Velocity = cfn(fakeexplosion.Position, hit.Position).lookVector*50
					hit:BreakJoints()
					hit.BrickColor = BrickColor.new('Sunrise')
					hit.Material = 'Neon'
					coroutine.wrap(function()
						for i = 1, 1000 do
							hit.Transparency = hit.Transparency + 0.0030
							hit.Size = hit.Size:lerp(v3(0, 0, 0), 0.0030)
							if hit.Transparency >= 1 then
								hit:Destroy()
							end
							swait()
						end
					end)()
					hit.Anchored = false
					hit.CanCollide = false
					--hit.CFrame = hit.CFrame:lerp(CFrame.fromEulerAnglesXYZ(rand(-30, 30), rand(-30, 30), rand(-30, 30)), 0.1)
					game.Debris:AddItem(bv, 0.1)
			end
		end
	end)
	coroutine.wrap(function()
		for i = 1, 1000 do
			explosion1.Size = explosion1.Size:lerp(v3(55, 55, 55), 0.010)
			explosion1.Transparency = explosion1.Transparency + 0.010
			fakeexplosion.CFrame = explosion1.CFrame
			fakeexplosion.Size = fakeexplosion.Size:lerp(v3(55, 55, 55), 0.010)
			explosion2.Size = explosion2.Size:lerp(v3(55, 55, 55), 0.0080)
			explosion2.Transparency = explosion2.Transparency + 0.0080
			effect.Size = effect.Size:Lerp(v3(5, 5, 5), 0.15)
			beam.Transparency = beam.Transparency + 0.13
			effect.Transparency = effect.Transparency + 0.13
			if explosion1.Transparency >= 1 then
				explosion1:Destroy()
				fakeexplosion:Destroy()
			end
			if explosion2.Transparency >= 1 then
				explosion2:Destroy()
			end
			if effect.Transparency >= 1 then
				effect:Destroy()
			end
			if beam.Transparency >= 1 then
				beam:Destroy()
			end
			swait()
		end
	end)()
	for i = 1, 15 do
		local dist = (ra.CFrame.p - pos).magnitude
		effect.CFrame = Part67.CFrame * cfn(3.5, -0.1, 0) * CFrame.fromEulerAnglesXYZ(rand(0, 360), rand(0, 360), rand(0, 360))
		beam.CFrame = cfn(Part67.CFrame.p, pos) * cfn(0, 1, -3 - dist/2) * cfa(rad(0), rad(90), rad(0))
		beam.Size = v3(dist, 0.5, 0.5)
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0.3, 0.65) * cfor(rad(0), rad(-70), rad(-30)), 0.15)
		swait()
	end
	coroutine.wrap(function()
		for i = 1, 100 do
			gripweld.C0 = gripweld.C0:lerp(cfn(-2.4, -0.65, -0.65) * cfa(rad(-75), rad(180), rad(-14)), 0.15)
		swait()
		end
	end)()
	if onrun then
		hum.WalkSpeed = 25
	else
		hum.WalkSpeed = 16
	end
	hum.JumpPower = 50
	bg:Destroy()
	cananim = true
	wait(1.5)
	attack = false
end

function chargedshoot()
	attack = true
	cananim = false
	local bg = Instance.new('BodyGyro', hd)
	bg.MaxTorque = v3(0, 9000, 0)
	bg.D = 175
	bg.P = 20000
	hum.WalkSpeed = 0
	hum.JumpPower = 0
	for i = 1, 200 do
		camshake(10, 0.4)
		bg.CFrame = cfn(hd.Position, mouse.Hit.p)
		gripweld.C0 = gripweld.C0:lerp(cfn(-2.2, -1.3, -0.65) * cfa(rad(-75 + 40 * sin(sine/1)), rad(160 + 10 * sin(sine/1)), rad(-14)), 0.15)
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0, 0) * cfor(rad(0), rad(-70), rad(0)), 0.15)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(0, 1.5, 0) * cfor(rad(0), rad(80), rad(0)), 0.15)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.354, 0.271, -1) * cfor(rad(76), rad(-60), rad(-76)), 0.15)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.65, 0.511, -1) * cfor(rad(80), rad(-20), rad(-50)), 0.15)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.423, -2.055, 0.726) * cfor(rad(-10), rad(0), rad(10)), 0.15)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.423, -2.055, -0.526) * cfor(rad(10), rad(0), rad(-10)), 0.15)
		swait()
	end
	camshake(10, 10)
	local effect2 = Instance.new('Part', effects)
	local ray = Ray.new(ra.CFrame.p, (mouse.Hit.p - ra.CFrame.p).unit * 300)
	local part, pos = workspace:FindPartOnRay(ray, char, false, true)
	local beam = Instance.new('Part', effects)
	local effect = Instance.new('Part', effects)
	local explosion1 = Instance.new('Part', effects)
	local explosion2 = Instance.new('Part', effects)
	local fakeexplosion = Instance.new('Part', effects)
	sound(131179973, Part67, 5, 1, 0, '')
	effect2.CanCollide = false
	effect2.BrickColor = BrickColor.new('Sunrise')
	effect2.Anchored = true
	effect2.Material = 'Neon'
	effect2.Shape = 'Block'
	effect2.Size = v3(0, 0, 0)
	fakeexplosion.CanCollide = false
	fakeexplosion.Anchored = false
	fakeexplosion.Transparency = 1
	fakeexplosion.Shape = 'Ball'
	explosion2.CanCollide = false
	explosion2.Anchored = true
	explosion2.BrickColor = BrickColor.new('Sunrise')
	explosion2.Material = 'Neon'
	explosion2.Shape = 'Ball'
	explosion2.Size = v3(0, 0, 0)
	explosion1.CanCollide = false
	explosion1.Anchored = true
	explosion1.Anchored = true
	explosion1.BrickColor = BrickColor.new('Sunrise')
	explosion1.Material = 'Neon'
	explosion1.Shape = 'Ball'
	explosion1.Size = v3(0, 0, 0)
	effect.CanCollide = false
	effect.BrickColor = BrickColor.new('Sunrise')
	effect.Anchored = true
	effect.Material = 'Neon'
	effect.Shape = 'Block'
	effect.Size = v3(0, 0, 0)
	beam.CanCollide = false
	beam.Anchored = true
	beam.BrickColor = BrickColor.new('Sunrise')
	beam.Material = 'Neon'
	beam.Shape = 'Cylinder'
	explosion1.CFrame = cfn(mouse.Hit.p)
	explosion2.CFrame = cfn(mouse.Hit.p)
	fakeexplosion.CFrame = cfn(mouse.Hit.p)
	fakeexplosion.Touched:connect(function(hit)
		if hit.Parent then
			if not hit:IsDescendantOf(char) and not hit:IsDescendantOf(mas) and hit ~= bases then
					local bv = Instance.new('BodyVelocity', hit)
					bv.MaxForce = v3(math.huge, math.huge, math.huge)
					bv.Velocity = cfn(fakeexplosion.Position, hit.Position).lookVector*100
					hit:BreakJoints()
					hit.BrickColor = BrickColor.new('Sunrise')
					hit.Material = 'Neon'
					coroutine.wrap(function()
						for i = 1, 1000 do
							hit.Transparency = hit.Transparency + 0.0030
							hit.Size = hit.Size:lerp(v3(0, 0, 0), 0.0030)
							if hit.Transparency >= 1 then
								hit:Destroy()
							end
							swait()
						end
					end)()
					hit.Anchored = false
					hit.CanCollide = true
					--hit.CFrame = hit.CFrame:lerp(CFrame.fromEulerAnglesXYZ(rand(-30, 30), rand(-30, 30), rand(-30, 30)), 0.1)
					game.Debris:AddItem(bv, 0.1)
			end
		end
	end)
	coroutine.wrap(function()
		effect2.CFrame = Part67.CFrame * cfn(8, -0.1, 0) * CFrame.fromEulerAnglesXYZ(rand(0, 360), rand(0, 360), rand(0, 360))
		for i = 1, 1000 do
			effect2.Size = effect2.Size:lerp(v3(25, 25, 25), 0.01)
			effect2.Transparency = effect2.Transparency + 0.01
			if effect2.Transparency >= 1 then
				effect2:Destroy()
			end
			swait()
		end
	end)()
	coroutine.wrap(function()
		for i = 1, 1000 do
			local dist = (ra.CFrame.p - pos).magnitude
			explosion1.Size = explosion1.Size:lerp(v3(250, 250, 250), 0.0070)
			explosion1.Transparency = explosion1.Transparency + 0.0070
			explosion2.Size = explosion2.Size:lerp(v3(250, 250, 250), 0.0050)
			explosion2.Transparency = explosion2.Transparency + 0.0050
			fakeexplosion.Size = fakeexplosion.Size:lerp(v3(250, 250, 250), 0.0070)
			fakeexplosion.CFrame = explosion1.CFrame
			beam.Size = beam.size:lerp(v3(dist, 30, 30), 0.01)
			beam.Transparency = beam.Transparency + 0.01
			if explosion1.Transparency >= 1 then
				explosion1:Destroy()
				fakeexplosion:Destroy()
			end
			if explosion2.Transparency >= 1 then
				explosion2:Destroy()
			end
			if beam.Transparency >= 1 then
				beam:Destroy()
			end
			swait()
		end
	end)()
	for i = 1, 15 do
		local dist = (ra.CFrame.p - pos).magnitude
		beam.Size = v3(dist, 0, 0)
		beam.CFrame = cfn(Part67.CFrame.p, pos) * cfn(0, 1, -8 - dist/2) * cfa(rad(0), rad(90), rad(0))
		effect.CFrame = Part67.CFrame * cfn(3.5, -0.3, 0) * CFrame.fromEulerAnglesXYZ(rand(0, 360), rand(0, 360), rand(0, 360))
		effect.Size = effect.Size:Lerp(v3(5, 5, 5), 0.15)
		effect.Transparency = effect.Transparency + 0.1
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0.3, 0.65) * cfor(rad(0), rad(-70), rad(-30)), 0.15)
		if effect.Transparency >= 1 then
			effect:Destroy()
		end
		swait()
	end
	coroutine.wrap(function()
		for i = 1, 100 do
			gripweld.C0 = gripweld.C0:lerp(cfn(-2.4, -0.65, -0.65) * cfa(rad(-75), rad(180), rad(-14)), 0.15)
		swait()
		end
	end)()
	if onrun then
		hum.WalkSpeed = 25
	else
		hum.WalkSpeed = 16
	end
	hum.JumpPower = 50
	bg:Destroy()
	cananim = true
	wait(5)
	attack = false
end

mouse.Button1Down:connect(function()
	if attack == false and cananim then
		shoot()
	end
end)

mouse.KeyDown:connect(function(key)
	key = key:lower()
	if key == 'q' and onrun == false and attack == false then
		onrun = true
		hum.WalkSpeed = 25
	elseif key == 'q' and onrun and attack == false then
		onrun = false
		hum.WalkSpeed = 16
	end
	if key == 'm' then
		if sicko.IsPlaying then
		sicko:Pause()
	elseif sicko.IsPaused then
		sicko:Resume()
		end
	end
	if key == 'f' and attack == false and cananim then
		chargedshoot()
	end
end)

while true do
	sine = sine + change
	local tsvel = (root.Velocity * v3(1, 0, 1)).magnitude
	local hitfloor = raycast(root.Position, (cfn(root.Position, root.Position + v3(0, -1, 0))).lookVector, 4 * 1, char)
	if root.Velocity.y > 1 and hitfloor == nil and cananim then
		change = 1
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0.3, 0.3) * cfa(rad(20), rad(0), rad(0)), 0.070)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(0, 1.5, 0) * cfa(rad(0), rad(0), rad(0)), 0.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.516, 0.216, -0.728) * cfa(rad(71.8), rad(0.2), rad(-0.7)), 0.070)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.499, -0.042, -0.75) * cfa(rad(60.2), rad(10 * sin(sine/40)), rad(4.5)), 0.070)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.604, -1.793, 0.204) * cfa(rad(-19.4), rad(-7), rad(10.2)), 0.070)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.574, -1.811, 0.046) * cfa(rad(-9.8), rad(-1.8), rad(0.04)), 0.070)
	elseif root.Velocity.y < -1 and hitfloor == nil and cananim then
		change = 1
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0.3, 0) * cfa(rad(-20), rad(0), rad(0)), 0.070)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(0, 1.5, 0) * cfa(rad(0), rad(0), rad(0)), 0.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.516, 0.216, -0.728) * cfa(rad(71.8), rad(0.2), rad(-0.7)), 0.070)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.499, -0.042, -0.75) * cfa(rad(60.2), rad(10 * sin(sine/40)), rad(4.5)), 0.070)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.622, -1.726, 0.269) * cfa(rad(9.56), rad(5.2), rad(9.82)), 0.070)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.588, -1.654, 0.775) * cfa(rad(-20), rad(-1.6), rad(0.7)), 0.070)
	elseif tsvel < 2 and hitfloor ~= nil and cananim then
		change = 1
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0, 0.1 * sin(sine/40), 0) * cfa(rad(3 * sin(sine/40)), rad(0), rad(0)), 0.1)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(-0, 1.5, 0) * cfa(rad(-3 * sin(sine/40)), rad(0), rad(-0)), 0.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.516, 0.216, -0.728) * cfa(rad(71.8), rad(0.2), rad(-0.7)), 0.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.499, -0.042, -0.75) * cfa(rad(60.2), rad(10), rad(4.5)), 0.1)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.687, -2.073, 0) * cfa(rad(0), rad(0), rad(10.3)), 0.1)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.614, -2.049, 0) * cfa(rad(0), rad(0), rad(-6.37)), 0.1)
	elseif tsvel < 20 and hitfloor ~= nil and cananim then
		change = 1
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0 - root.RotVelocity.Y/50, 0.1 + sin(sine/3), 0) * cfa(rad(5 * -sin(sine/6)), rad(0), rad(0) + root.RotVelocity.Y/50), 0.1)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(0, 1.5, 0) * cfa(rad(-5 * sin(sine/6)), rad(0) + hd.RotVelocity.Y/30, rad(0)), 0.1)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.516, 0.216, -0.728) * cfa(rad(71.8), rad(0.2), rad(-0.7)), 0.1)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.499, -0.042, -0.75) * cfa(rad(60.2), rad(4.48), rad(4.5)), 0.1)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.5, -2, -1.45 * sin(sine/6)) * cfa(rad(90 * sin(sine/6)), rad(0), rad(0)), 0.13)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.5, -2, 1.45 * sin(sine/6)) * cfa(rad(-90 * sin(sine/6)), rad(0), rad(0)), 0.13)
	elseif tsvel > 20 and hitfloor ~= nil and cananim then
		change = 1
		TORSOLERP.C0 = TORSOLERP.C0:lerp(cfn(0 - root.RotVelocity.Y/50, 0.1 + sin(sine/3), -0.3) * cfa(rad(-10 + 5 * -sin(sine/6)), rad(0), rad(0) + root.RotVelocity.Y/50), 0.13)
		HEADLERP.C0 = HEADLERP.C0:lerp(cfn(0, 1.5, 0) * cfa(rad(-5 * sin(sine/6)), rad(0) + hd.RotVelocity.Y/30, rad(0)), 0.13)
		RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(cfn(1.516, 0.216, -0.728) * cfa(rad(71.8), rad(0.2), rad(-0.7)), 0.13)
		LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(cfn(-1.499, -0.042, -0.75) * cfa(rad(60.2), rad(4.48), rad(4.5)), 0.13)
		RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(cfn(0.5, -2, -1.45 * sin(sine/6)) * cfa(rad(90 * sin(sine/6)), rad(0), rad(0)), 0.15)
		LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(cfn(-0.5, -2, 1.45 * sin(sine/6)) * cfa(rad(-90 * sin(sine/6)), rad(0), rad(0)), 0.15)
	end
	swait()
end
