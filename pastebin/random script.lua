--- [[ Random shito
	--- by fo43123 ]] ---
local me = game:GetService('Players').LocalPlayer
local char = me.Character
local hum = char['Humanoid']
local root = char['HumanoidRootPart']
local ss = false
local c = false
local bp = workspace:FindFirstChild('Base') or workspace:FindFirstChild('Baseplate') -- or nvm
local theme = Instance.new('Sound')
theme.Volume = 2.5
theme.SoundId = 'rbxassetid://1369263130'
local mse = me:GetMouse()
hum.WalkSpeed = hum.WalkSpeed + math.random(10, 20)
hum.JumpPower = hum.JumpPower + math.random(10, 20)
hum.MaxHealth = 'inf'
hum.Health = 'inf'
hum.HealthChanged:connect(function()
	hum.MaxHealth = 'inf'
	hum.Health = 'inf'
end)
local limbs = {
	 char['Right Arm'],
	 char['Left Arm'],
	 char['Torso'],
	 char['Head'],
	 char['Right Leg'],
	 char['Left Leg']
}
local materials = {
	 'DiamondPlate',
	 'Neon',
}

for i,v in pairs(char:GetChildren()) do
	if v:IsA('Shirt') then
		v.Parent = nil
	end
end
for i,v in pairs(char:GetChildren()) do
	if v:IsA('Pants') then
		v.Parent = nil
	end
end
for i,v in pairs(char:GetChildren()) do
	if v:IsA('Accessory') then
		v.Parent = nil
	end
end
theme.Parent = limbs[4]
theme:Resume()
theme.Ended:connect(function()
	theme:Play()
end)

coroutine.wrap(function()
while true do
	limbs[1].BrickColor = BrickColor.Random()
	limbs[1].Material = materials[math.random(1, #materials)]
	limbs[2].BrickColor = BrickColor.Random()
	limbs[2].Material = materials[math.random(1, #materials)]
	limbs[3].BrickColor = BrickColor.Random()
	limbs[3].Material = materials[math.random(1, #materials)]
	limbs[4].BrickColor = BrickColor.Random()
	limbs[4].Material = materials[math.random(1, #materials)]
	limbs[5].BrickColor = BrickColor.Random()
	limbs[5].Material = materials[math.random(1, #materials)]
	limbs[6].BrickColor = BrickColor.Random()
	limbs[6].Material = materials[math.random(1, #materials)]
	coroutine.wrap(function()
		b = Instance.new('Part', char)
	for i = 1, 10 do
	    b.Anchored = true
	    b.CanCollide = false
		b.Size = b.Size:lerp(Vector3.new(6.85, 0.05, 7.09), .5)
		b.Transparency = math.random(0, 0.55)
		b.BrickColor = BrickColor.Random()
		b.Material = materials[math.random(1, #materials)]
		b.CFrame = limbs[3].CFrame * CFrame.new(0, -2.99, 0) * CFrame.fromEulerAnglesXYZ(0, math.random(0, 360), 0)
		wait()
	end
	b.Touched:connect(function(a)
		if a:IsA('Part') and a ~= bp then
			if a.Parent.Name ~= me.Name then
		    game.Debris:AddItem(a, .5)
		for i = 1, 10 do
			a.BrickColor = BrickColor.Random()
			a.Anchored = true
			a.CanCollide = false
			a.Transparency = i/10
			a.Material = materials[math.random(1, #materials)]
			wait()
			end
		end
		end
	end)
	end)()
	wait(.2)
	b:Destroy()
	wait()
end
end)()

mse.KeyDown:connect(function(ke)
	if ke == 'r' then
		if c == false then
			c = true
			root.CFrame = CFrame.new(mse.Hit.p + Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.rad(root.Orientation.Y), 0)
			local ef1 = Instance.new('Part', char)
			ef1.Touched:connect(function(a)
				if a:IsA('Part') and a ~= bp then
					if a.Parent.Name ~= me.Name then
						if a ~= b then
							game.Debris:AddItem(a, .5)
							for i = 1, 10 do
								a.BrickColor = BrickColor.Random()
								a.Anchored = true
								a.Transparency = i/10
								a.CanCollide = false
								a.Material = materials[math.random(1, #materials)]
								wait()
							end
						end
					end
				end
			end)
			for i = 1, 10 do
				ef1.BrickColor = BrickColor.Random()
				ef1.Material = materials[math.random(1, #materials)]
				ef1.Size = ef1.Size:lerp(Vector3.new(10, 10, 10), .6)
				ef1.Transparency = i/10
				ef1.Anchored = true
				ef1.CanCollide = false
				ef1.CFrame = limbs[3].CFrame * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
				wait()
			end
			ef1:Destroy()
			wait(.5)
			c = false
		end
	end
end)

limbs[1].Touched:connect(function(a)
	if a:IsA('Part') and a ~= bp then
	if ss == false then
		ss = true
		for i = 1, 10 do
			a.Transparency = i/10
			a.BrickColor = BrickColor.Random()
			a.Anchored = true
			a.CanCollide = false
			a.Material = materials[math.random(1, #materials)]
			wait()
		end
	a.Parent = nil
	wait(.5)
	ss = false
	end
	end
end)


limbs[2].Touched:connect(function(a)
	if a:IsA('Part') and a ~= bp then
	if ss == false then
		ss = true
		for i = 1, 10 do
			a.Transparency = i/10
			a.BrickColor = BrickColor.Random()
			a.Anchored = true
			a.CanCollide = false
			a.Material = materials[math.random(1, #materials)]
			wait()
		end
	a.Parent = nil
	wait(.5)
	ss = false
	end
	end
end)


limbs[3].Touched:connect(function(a)
	if a:IsA('Part') and a ~= bp then
	if ss == false then
		ss = true
		for i = 1, 10 do
			a.Transparency = i/10
			a.BrickColor = BrickColor.Random()
		    a.Anchored = true
			a.CanCollide = false
			a.Material = materials[math.random(1, #materials)]
			wait()
		end
	a.Parent = nil
	wait(.5)
	ss = false
	end
	end
end)


limbs[4].Touched:connect(function(a)
	if a:IsA('Part') and a ~= bp then
	if ss == false then
		ss = true
		for i = 1, 10 do
			a.Transparency = i/10
			a.BrickColor = BrickColor.Random()
			a.Anchored = true
			a.CanCollide = false
			a.Material = materials[math.random(1, #materials)]
			wait()
		end
	a.Parent = nil
	wait(.5)
	ss = false
	end
	end
end)


limbs[5].Touched:connect(function(a)
	if a:IsA('Part') and a ~= bp then
	if ss == false then
		ss = true
		for i = 1, 10 do
			a.Transparency = i/10
			a.BrickColor = BrickColor.Random()
            a.Anchored = true
			a.CanCollide = false
			a.Material = materials[math.random(1, #materials)]
			wait()
		end
	a.Parent = nil
	wait(.5)
	ss = false
	end
	end
end)


limbs[6].Touched:connect(function(a)
	if a:IsA('Part') and a ~= bp then
	if ss == false then
		ss = true
		for i = 1, 10 do
			a.Transparency = i/10
			a.BrickColor = BrickColor.Random()
			a.Anchored = true
			a.CanCollide = false
			a.Material = materials[math.random(1, #materials)]
			wait()
		end
	a.Parent = nil
	wait(.5)
	ss = false
	end
	end
end)

while wait() do
	limbs[4].face.Transparency = math.random(0, .55)
	limbs[1].Transparency = math.random(0, .55)
	limbs[2].Transparency = math.random(0, .55)
    limbs[3].Transparency = math.random(0, .55)
    limbs[4].Transparency = math.random(0, .55)
    limbs[5].Transparency = math.random(0, .55)
    limbs[6].Transparency = math.random(0, .55)
end
