--- [[ Staff ]] ---
-- by fo43123

local p = game:GetService('Players').LocalPlayer
local char = p.Character
local hum = char['Humanoid']
local ts = char['Torso']
local root = char['HumanoidRootPart']
local hd = char['Head']
local ra = char['Right Arm']
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local rh = ts['Right Hip']
local lh = ts['Left Hip']
local nvm = false
local f = 1
local t = 0
local fc = false
local tc = false
local rds = Instance.new('Sound', hd); rds.SoundId = 'rbxassetid://336863905'; rds.Looped = true; rds.Volume = 1; rds.PlaybackSpeed = 1; rds:Play()
local tpsfx = Instance.new('Sound'); tpsfx.SoundId = 'rbxassetid://289556450'; tpsfx.Volume = 2.5; tpsfx.PlaybackSpeed = 0.8
local freez = Instance.new('Sound'); freez.SoundId = 'rbxassetid://144699494'; freez.Volume = 4; freez.PlaybackSpeed = 1.5
local active = nil
local bp = workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base')
print([[
	---- Moves ----
	F: Equip staff
	E: While staff equipped Freeze
	M: Toggle music
	Mouse1Click: While staff equipped Teleport
]])
local mse = p:GetMouse()

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
mas = Instance.new("Model",game:GetService("Lighting"))
Part0 = ts
ManualWeld1 = Instance.new("ManualWeld")
ManualWeld2 = Instance.new("ManualWeld")
ManualWeld3 = Instance.new("ManualWeld")
ManualWeld4 = Instance.new("ManualWeld")
ManualWeld5 = Instance.new("ManualWeld")
Part6 = Instance.new("Part")
Part7 = Instance.new("Part")
Part8 = Instance.new("Part")
Part9 = Instance.new("Part")
Part10 = Instance.new("Part")
ManualWeld1.Parent = Part0
ManualWeld1.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld1.C1 = CFrame.new(-0.634410024, -0.424356759, 0.470750839, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld1.Part0 = Part0
ManualWeld1.Part1 = Part10
ManualWeld1.part1 = Part10
ManualWeld2.Parent = Part0
ManualWeld2.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld2.C1 = CFrame.new(-0.629410028, -2.70436168, 0.472524852, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld2.Part0 = Part0
ManualWeld2.Part1 = Part8
ManualWeld2.part1 = Part8
ManualWeld3.Parent = Part0
ManualWeld3.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld3.C1 = CFrame.new(-0.634410024, -1.09273481, 0.470758855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld3.Part0 = Part0
ManualWeld3.Part1 = Part9
ManualWeld3.part1 = Part9
ManualWeld4.Parent = Part0
ManualWeld4.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld4.C1 = CFrame.new(-0.634410024, -0.743839741, 0.470758855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld4.Part0 = Part0
ManualWeld4.Part1 = Part6
ManualWeld4.part1 = Part6
ManualWeld5.Parent = Part0
ManualWeld5.C0 = CFrame.new(0, 0, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
ManualWeld5.C1 = CFrame.new(-0.634410024, -0.406131744, 0.470758855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
ManualWeld5.Part0 = Part0
ManualWeld5.Part1 = Part7
ManualWeld5.part1 = Part7
Part6.Name = "dec3"
Part6.Parent = mas
Part6.CFrame = CFrame.new(0.634410024, 0.743839741, -0.470758855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part6.Position = Vector3.new(0.634410024, 0.743839741, -0.470758855)
Part6.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part6.Size = Vector3.new(0.27000007, 0.129999876, 0.240000471)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.BrickColor = BrickColor.new("Dark orange")
Part6.Material = Enum.Material.Wood
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.brickColor = BrickColor.new("Dark orange")
Part6.Transparency = t
Part6.CanCollide = tc
Part7.Name = "dec2"
Part7.Parent = mas
Part7.CFrame = CFrame.new(0.634410024, 0.406131744, -0.470758855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part7.Position = Vector3.new(0.634410024, 0.406131744, -0.470758855)
Part7.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part7.Size = Vector3.new(0.27000007, 0.129999876, 0.240000471)
Part7.BottomSurface = Enum.SurfaceType.Smooth
Part7.BrickColor = BrickColor.new("Dark orange")
Part7.Material = Enum.Material.Wood
Part7.TopSurface = Enum.SurfaceType.Smooth
Part7.brickColor = BrickColor.new("Dark orange")
Part7.Transparency = t
Part7.CanCollide = tc
Part8.Name = "crystal"
Part8.Parent = mas
Part8.CFrame = CFrame.new(0.629410028, 2.70436168, -0.472524852, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part8.Position = Vector3.new(0.629410028, 2.70436168, -0.472524852)
Part8.Color = Color3.new(0.0627451, 0.164706, 0.862745)
Part8.Size = Vector3.new(0.28000012, 0.359999925, 0.31000042)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.BrickColor = BrickColor.new("Lapis")
Part8.Material = Enum.Material.Glass
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.brickColor = BrickColor.new("Lapis")
Part8.Transparency = t
Part8.CanCollide = tc
Part9.Name = "dec1"
Part9.Parent = mas
Part9.CFrame = CFrame.new(0.634410024, 1.09273481, -0.470758855, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part9.Position = Vector3.new(0.634410024, 1.09273481, -0.470758855)
Part9.Color = Color3.new(0.627451, 0.372549, 0.207843)
Part9.Size = Vector3.new(0.27000007, 0.129999876, 0.240000471)
Part9.BottomSurface = Enum.SurfaceType.Smooth
Part9.BrickColor = BrickColor.new("Dark orange")
Part9.Material = Enum.Material.Wood
Part9.TopSurface = Enum.SurfaceType.Smooth
Part9.brickColor = BrickColor.new("Dark orange")
Part9.Transparency = t
Part9.CanCollide = tc
Part10.Name = "main"
Part10.Parent = mas
Part10.CFrame = CFrame.new(0.634410024, 0.424356759, -0.470750839, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Part10.Position = Vector3.new(0.634410024, 0.424356759, -0.470750839)
Part10.Color = Color3.new(0.352941, 0.298039, 0.258824)
Part10.Size = Vector3.new(0.230000228, 4.21999741, 0.200000271)
Part10.BottomSurface = Enum.SurfaceType.Smooth
Part10.BrickColor = BrickColor.new("Dark taupe")
Part10.Material = Enum.Material.Wood
Part10.TopSurface = Enum.SurfaceType.Smooth
Part10.brickColor = BrickColor.new("Dark taupe")
Part10.Transparency = t
Part10.CanCollide = tc
------ fake staff
o6 = Instance.new('Part')
o7 = Instance.new('Part')
o8 = Instance.new('Part')
o9 = Instance.new('Part')
o10 = Instance.new('Part')
w1 = Instance.new('Weld')
w2 = Instance.new('Weld')
w3 = Instance.new('Weld')
w4 = Instance.new('Weld')
w5 = Instance.new('Weld')
w1.C0 = CFrame.new(-0.098, -1.03, 0.153) * CFrame.Angles(0, math.rad(-90), math.rad(90))
w2.C0 = CFrame.new(-0.098, -1.03, -0.516) * CFrame.Angles(0, math.rad(-90), math.rad(90))
w3.C0 = CFrame.new(-0.098, -1.03, 0.171) * CFrame.Angles(0, math.rad(-90), math.rad(90))
w4.C0 = CFrame.new(-0.098, -1.03, -0.167) * CFrame.Angles(0, math.rad(-90), math.rad(90))
w5.C0 = CFrame.new(-0.096, -1.035, -2.127) * CFrame.Angles(0, math.rad(-90), math.rad(90))
o6.Material = 'Wood'
o7.Material = 'Wood'
o8.Material = 'Wood'
o9.Material = 'Wood'
o10.Material = 'Glass'
o6.BrickColor = BrickColor.new('Dark taupe')
o7.BrickColor = BrickColor.new('Dark orange')
o8.BrickColor = BrickColor.new('Dark orange')
o9.BrickColor = BrickColor.new('Dark orange')
o10.BrickColor = BrickColor.new('Lapis')
o6.Size = Vector3.new(0.23, 4.22, 0.2)
o7.Size = Vector3.new(0.27, 0.13, 0.24)
o8.Size = Vector3.new(0.27, 0.13, 0.24)
o9.Size = Vector3.new(0.27, 0.13, 0.24)
o10.Size = Vector3.new(0.28, 0.36, 0.31)
o6.Transparency = f
o7.Transparency = f
o8.Transparency = f
o9.Transparency = f
o10.Transparency = f
o6.CanCollide = fc
o7.CanCollide = fc
o8.CanCollide = fc
o9.CanCollide = fc
o10.CanCollide = fc
o6.Parent = ra
o7.Parent = ra
o8.Parent = ra
o9.Parent = ra
o10.Parent = ra
w1.Parent = o6
w2.Parent = o6
w3.Parent = o6
w4.Parent = o6
w5.Parent = o6
w1.Part0 = ra
w2.Part0 = ra
w3.Part0 = ra
w4.Part0 = ra
w5.Part0 = ra
w1.Part1 = o6
w2.Part1 = o7
w3.Part1 = o8
w4.Part1 = o9
w5.Part1 = o10
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end

mse.KeyDown:connect(function(k)
	if k == 'f' then
		if nvm == false then
			t = 1
			f = 0
			active = true
			nvm = true
			o6.Transparency = f
			o7.Transparency = f
			o8.Transparency = f
			o9.Transparency = f
			o10.Transparency = f
			Part6.Transparency = t
			Part7.Transparency = t
			Part8.Transparency = t
			Part9.Transparency = t
			Part10.Transparency = t
			fc = true
			o6.CanCollide = fc
			o7.CanCollide = fc
			o8.CanCollide = fc
			o9.CanCollide = fc
			o10.CanCollide = fc
			rs.C1 = CFrame.new(-0.5, 0.500000119, 2.98023224e-08, -0.0801705867, -0.00389864552, 0.996773541, -0.995597064, -0.0484152921, -0.0802653208, 0.0485720076, -0.998819709, 2.12315143e-09)
			ls.C1 = CFrame.new(0.5, 0.5, 0, -4.36213199e-08, -0.0641620159, -0.997939467, -2.80461077e-09, 0.997939467, -0.0641620159, 1, 0, -4.37113883e-08)
			rh.C1 = CFrame.new(0.5, 1, 0, -4.36339462e-08, 0.0594986714, 0.998228371, 2.6007696e-09, 0.998228371, -0.0594986714, -1, 0, -4.37113883e-08)
			lh.C1 = CFrame.new(-0.5, 1, 0, -4.33941914e-08, -0.120251998, -0.992743373, -5.256382e-09, 0.992743373, -0.120251998, 1, 0, -4.37113883e-08)
			repeat
				root.CFrame = CFrame.new(root.Position, mse.Hit.Position)
				root.Anchored = true
				hum.PlatformStand = true
				wait()
			until nvm == false
		elseif nvm == true then
			t = 0
			f = 1
			active = false
			o6.Transparency = f
			o7.Transparency = f
			o8.Transparency = f
			o9.Transparency = f
			o10.Transparency = f
			Part6.Transparency = t
			Part7.Transparency = t
			Part8.Transparency = t
			Part9.Transparency = t
			Part10.Transparency = t
			fc = false
			o6.CanCollide = fc
			o7.CanCollide = fc
			o8.CanCollide = fc
			o9.CanCollide = fc
			o10.CanCollide = fc
			root.Anchored = false
			hum.PlatformStand = false
			rs.C1 = CFrame.new(-0.5, 0.5, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
			ls.C1 = CFrame.new(0.5, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
			rh.C1 = CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883e-08)
			lh.C1 = CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
			nvm = false
		end
	end
end)

mse.Button1Down:connect(function()
		if active == true and nvm ~= false then
				active = false
				hum.PlatformStand = false
			o10.Material = 'Neon'
			tpsfx.Parent = o10
			tpsfx:Play()
			ts.CFrame = CFrame.new(mse.Hit.Position + Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.rad(ts.Orientation.Y), 0)
			wait(.2)
			o10.Material = 'Glass'
			wait(1) -- cooldown
		active = true
	end
end)
			
mse.KeyDown:connect(function(k)
	if k == 'e' then
		if active == true and nvm ~= false then
			o10.Material = 'Neon'
			active = false
			if mse.Target ~= nil and mse.Target ~= Part6 or Part7 or Part8 or Part9 or Part10 then
				if mse.Target ~= nil and mse.Target ~= bp then
					freez.Parent = mse.Target
					freez:Play()
				mse.Target.Anchored = true
				mse.Target.Material = 'Ice'
				mse.Target.Transparency = 0.3
				mse.Target.BrickColor = BrickColor.new('Bright blue')
				end
			else
				-- rip
			end
			--
			wait(.2)
			o10.Material = 'Glass'
			wait(1)
			active = true
		end
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'm' then
		if rds.IsPlaying == true then
			rds:Pause()
		elseif rds.IsPaused == true then
			rds:Resume()
		end
	end
end)