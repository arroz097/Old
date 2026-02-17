----- [[ Modes ]] -----
-- [[ by fo43123 ]] --

wait(1/60)
local p = game:GetService('Players').LocalPlayer
local char = p.Character
local hum = char['Humanoid']
local ts = char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
local root = char['HumanoidRootPart']
local hd = char['Head']
local attack = false
local big = false
local a = false
local h1 = Instance.new('Sound', ts); h1.SoundId = 'rbxassetid://743499393'; h1.Volume = 2.1
local mouse = p:GetMouse()
hum.MaxHealth = hum.MaxHealth + 5000
hum.Health = hum.Health + 5000
hum.WalkSpeed = 30
hum.JumpPower = 65
print([[
	--- Moves ---
	R - Teleport
	F - Heal
	G - Delete 
	H - Knockback 
	M - Big mode
]])

mouse.KeyDown:connect(function(k)
	if k == 'f' then
		if attack == false then
			attack = true
			local heal = Instance.new('Part', char)
			heal.Material = 'Neon'
			heal.BrickColor = BrickColor.new('Bright green')
			heal.CanCollide = false
			heal.Anchored = true
			heal.Touched:connect(function(lol)
				if big ~= true then
					if lol.Parent then
						if lol.Parent:IsA('Model') then
							if lol.Parent:FindFirstChildOfClass('Humanoid') then
								lol.Parent:FindFirstChildOfClass('Humanoid').Health = lol.Parent:FindFirstChildOfClass('Humanoid').Health + math.random(50, 150)
								if a == false and lol ~= heal and lol.Parent.Name ~= p.Name then
									a = true
									local heal2 = Instance.new('Part', lol)
									heal2.Material = 'Neon'
									heal2.Anchored = true
									heal2.CanCollide = false
									heal2.BrickColor = heal.BrickColor
									for i = 1, 20 do
										heal2.Size = heal2.Size:lerp(Vector3.new(6, 6, 6), .65)
										heal2.Transparency = i/20
										heal2.CFrame = lol.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
										wait()
									end
									heal2:Destroy()
									a = false
								end
							end
						end
					end
				elseif big ~= false then
					if lol.Parent then
						if lol.Parent:IsA('Model') then
							if lol.Parent:FindFirstChildOfClass('Humanoid') then
								lol.Parent:FindFirstChildOfClass('Humanoid').Health = lol.Parent:FindFirstChildOfClass('Humanoid').Health + math.random(1000, 2000)
								if a == false and lol ~= heal and lol.Parent.Name ~= p.Name then
									a = true
									local heal2 = Instance.new('Part', lol)
									heal2.Material = 'Neon'
									heal2.BrickColor = heal.BrickColor
									heal2.Anchored = true
									heal2.CanCollide = false
									for i = 1, 20 do
										heal2.Size = heal2.Size:lerp(Vector3.new(6, 6, 6), .65)
										heal2.Transparency = i/20
										heal2.CFrame = lol.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
										wait()
									end
									heal2:Destroy()
									a = false
								end
							end
						end
					end
				end
			end)
			h1.PlaybackSpeed = 1
			h1:Play()
			if big ~= true then
				for i = 1, 20 do
					heal.Size = heal.Size:lerp(Vector3.new(20, 20, 20), .45)
					heal.Transparency = i/20
					heal.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
					wait()
				end
			elseif big ~= false then
				for i = 1, 20 do
					heal.Size = heal.Size:lerp(Vector3.new(75, 75, 75), .45)
					heal.Transparency = i/20
					heal.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
					wait()
				end
			end
			heal:Destroy()
			wait(3)
			attack = false
		end
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'g' then
		if attack == false then
			attack = true
			local kill = Instance.new('Part', char)
			kill.Material = 'Neon'
			kill.BrickColor = BrickColor.new('Bright red')
			kill.CanCollide = false
			kill.Anchored = true
			kill.Touched:connect(function(lol)
				if big ~= true then
					if lol.Parent then
						if lol.Parent:IsA('Model') then
							if lol.Parent.Name ~= p.Name then
								lol.Parent:Destroy()
							end
						end
					end
				elseif big ~= false then
					if lol.Parent then
						if lol.Parent:IsA('Model') then
							if lol.Parent.Name ~= p.Name then
								lol.Parent:Destroy()
							end
						end
					end
				end
			end)
			h1.PlaybackSpeed = 0.85
			h1:Play()
			if big ~= true then
				for i = 1, 20 do
					kill.Size = kill.Size:lerp(Vector3.new(20, 20, 20),.3)
					kill.Transparency = i/20
					kill.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
					wait()
				end
			elseif big ~= false then
				for i = 1, 20 do
					kill.Size = kill.Size:lerp(Vector3.new(75, 75, 75), .3)
					kill.Transparency = i/20
					kill.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
					wait()
				end
			end
			kill:Destroy()
			wait(3)
			attack = false
		end
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'h' then
		if attack == false then
			attack = true
			local knock = Instance.new('Part', char)
			knock.Material = 'Neon'
			knock.BrickColor = BrickColor.new('Bright blue')
			knock.Anchored = true
			knock.CanCollide = false
			knock.Touched:connect(function(lol)
				if big ~= true then
					if lol.Parent then
						if lol.Parent:IsA('Model') and lol.Parent:FindFirstChildOfClass('Humanoid') then
							if lol.Parent.Name ~= p.Name then
								local bv = Instance.new('BodyVelocity')
								bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								bv.Velocity = CFrame.new(knock.Position, lol.Position).lookVector*1000
								bv.Parent = lol
								game.Debris:AddItem(bv, .1)
								if a == false and lol ~= knock and lol.Parent.Name ~= p.Name then
									a = true
									local knock2 = Instance.new('Part', lol)
									knock2.Material = 'Neon'
									knock2.BrickColor = knock.BrickColor
									knock2.Anchored = true
									knock2.CanCollide = false
									for i = 1, 20 do
										knock2.Size = knock2.Size:lerp(Vector3.new(6, 6, 6), .65)
										knock2.Transparency = i/20
										knock2.CFrame = lol.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
										wait()
									end
									knock2:Destroy()
									a = false
								end
							end
						end
					end
				elseif big ~= false then
					if lol.Parent then
						if lol.Parent:IsA('Model') and lol.Parent:FindFirstChildOfClass('Humanoid') then
							if lol.Parent.Name ~= p.Name then
								local bv = Instance.new('BodyVelocity')
								bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								bv.Velocity = CFrame.new(knock.Position, lol.Position).lookVector*5000
								bv.Parent = lol
								game.Debris:AddItem(bv, .1)
								if a == false and lol ~= knock and lol.Parent.Name ~= p.Name then
									a = true
									local knock2 = Instance.new('Part', lol)
									knock2.Material = 'Neon'
									knock2.BrickColor = knock.BrickColor
									knock2.Anchored = true
									knock2.CanCollide = false
									for i = 1, 20 do
										knock2.Size = knock2.Size:lerp(Vector3.new(6, 6, 6), .65)
										knock2.Transparency = i/20
										knock2.CFrame = lol.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
										wait()
									end
									knock2:Destroy()
									a = false
								end
							end
						end
					end
				end
			end)
			h1.PlaybackSpeed = 1.1
			h1:Play()
			if big ~= true then
				for i = 1, 20 do
					knock.Size = knock.Size:lerp(Vector3.new(25, 25, 25), .5)
					knock.Transparency = i/20
					knock.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
					wait()
				end
			elseif big ~= false then
				for i = 1, 20 do
					knock.Size = knock.Size:lerp(Vector3.new(75, 75, 75), .5)
					knock.Transparency = i/20
					knock.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
					wait()
				end
			end
			knock:Destroy()
			wait(2)
			attack = false
		end
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'm' then
		if attack == false then
			if big == false then
				big = true
				warn("-- [[ Big mode enabled ]] --")
				print("Don't abuse.")
			elseif big == true then
				big = false
				warn("-- [[ Big mode disabled ]] --")
			end
		end
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'r' then
		if attack == false then
			attack = true
			root.CFrame = CFrame.new(mouse.Hit.Position + Vector3.new(0, 3, 0)) * CFrame.Angles(0, math.rad(root.Orientation.Y), 0)
			local effect = Instance.new('Part', char)
			effect.Material = 'Neon'
			effect.Anchored = true
			effect.BrickColor = BrickColor.Random()
			effect.CanCollide = false
			effect.Touched:connect(function(lol)
				if big ~= true then
					if lol.Parent then
						if lol.Parent:IsA('Model') and lol.Parent:FindFirstChildOfClass('Humanoid') then
							if lol.Parent.Name ~= p.Name then
								local bv = Instance.new('BodyVelocity')
								bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								bv.Velocity = CFrame.new(effect.Position, lol.Position).lookVector*60
								bv.Parent = lol
								game.Debris:AddItem(bv, .1)
							end
						end
					end
				elseif big ~= false then
					if lol.Parent then
						if lol.Parent:IsA('Model') and lol.Parent:FindFirstChildOfClass('Humanoid') then
							if lol.Parent.Name ~= p.Name then
								local bv = Instance.new('BodyVelocity')
								bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
								bv.Velocity = CFrame.new(effect.Position, lol.Position).lookVector*100
								bv.Parent = lol
								game.Debris:AddItem(bv, .1)
							end
						end
					end
				end
			end)
			h1.PlaybackSpeed = 1.2
			h1:Play()
			for i = 1, 20 do
				effect.Size = effect.Size:lerp(Vector3.new(12, 12, 12),.5)
				effect.Transparency = i/20
				effect.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
				wait()
			end
			effect:Destroy()
			wait(1)
			attack = false
		end
	end
end)
