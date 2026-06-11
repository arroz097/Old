---- [[ Orbs script ]] ----
-- by fo43123

local cooldown = 8
local again = true
local again2 = true
local again3 = true
local again4 = true
function createS(id, parent, volume, loop, pitch, name)
	local s = Instance.new('Sound')
	s.Parent = parent
	s.SoundId = 'rbxassetid://'..id
	s.Volume = volume
	s.Looped = loop
	s.PlaybackSpeed = pitch
	s.Name = name
	s:Play()
	return s
end

--[[ WalkSpeed ]]--

local orb = Instance.new('Part', workspace)
orb.Shape = 'Ball'
orb.Size = Vector3.new(2.14, 2.14, 2.14)
orb.Material = 'Neon'
orb.Position = Vector3.new(-31.98, 2.7, -38.03)
orb.BrickColor = BrickColor.new('Deep orange')
orb.Transparency = .6
orb.Anchored = true
orb.CanCollide = false
orb.Name = 'WalkSpeed orb'

--[[ Jump Power ]]--

local orb2 = Instance.new('Part', workspace)
orb2.Shape = 'Ball'
orb2.Size = Vector3.new(2.14, 2.14, 2.14)
orb2.Material = 'Neon'
orb2.Position = Vector3.new(-46.76, 2.7, -47.44)
orb2.BrickColor = BrickColor.new('Cyan')
orb2.Transparency = .6
orb2.Anchored = true
orb2.CanCollide = false
orb2.Name = 'JumpPower orb'

--[[ Damage ]]--

local orb3 = Instance.new('Part', workspace)
orb3.Shape = 'Ball'
orb3.Size = Vector3.new(2.14, 2.14, 2.14)
orb3.Material = 'Neon'
orb3.Position = Vector3.new(-59.81, 2.7, -37.94)
orb3.BrickColor = BrickColor.new('Bright red')
orb3.Transparency = .6
orb3.Anchored = true
orb3.CanCollide = false
orb3.Name = 'Damage orb'

--[[ Heal ]]--

local orb4 = Instance.new('Part', workspace)
orb4.Shape = 'Ball'
orb4.Size = Vector3.new(2.14, 2.14, 2.14)
orb4.Material = 'Neon'
orb4.Position = Vector3.new(-46.76, 2.7, -28.18)
orb4.BrickColor = BrickColor.new('Bright green')
orb4.Transparency = .6
orb4.Anchored = true
orb4.CanCollide = false
orb4.Name = 'Heal orb'

if orb and orb2 and orb3 and orb4 then
	print('Orbs loaded.')
	-- Yey!
else
	error('No orbs found')
end

--[[ WalkSpeed ]]--

orb.Touched:connect(function(h)
	local geth = h.Parent:FindFirstChildOfClass('Humanoid')
	local normalspeed = 16
	local fastspeed = 20
	if geth then
		if again == true then
			again = false
			createS('622660787', orb, 5, false, 1, 'Pickup')
			wait(.020)
			geth.WalkSpeed = normalspeed + fastspeed
			orb.Transparency = 1
			wait(6)
			geth.WalkSpeed = normalspeed
			wait()
			wait(cooldown)
			createS('622660787', orb3, 5, false, 1.2, 'Respawn')
			orb.Transparency = .6
			wait()
			local rs = orb:FindFirstChildOfClass('Sound')
			if rs then
				rs:Remove()
				again = true
			end
		end
	end
end)

--[[ Jump Power ]]--

orb2.Touched:connect(function(h)
	local geth = h.Parent:FindFirstChildOfClass('Humanoid')
	local normaljump = 50
	local highjump = 30
	if geth then
		if again2 == true then
			again2 = false
			createS('622660787', orb2, 5, false, 1, 'Pickup')
			wait(.020)
			geth.JumpPower = normaljump + highjump
			orb2.Transparency = 1
			wait(6)
			geth.JumpPower = normaljump
			wait()
			wait(cooldown)
			createS('622660787', orb3, 5, false, 1.2, 'Respawn')
			orb2.Transparency = .6
			wait()
			local rs = orb2:FindFirstChildOfClass('Sound')
			if rs then
				rs:Remove()
				again2 = true
			end
		end
	end
end)

--[[ Damage ]]--

orb3.Touched:connect(function(h)
	local geth = h.Parent:FindFirstChildOfClass('Humanoid')
	local damagedjump = geth.JumpPower - 10
	local damagedspeed = geth.WalkSpeed - 7
	local damage = math.random(20, 30)
	if geth then
		if again3 == true then
			again3 = false
			createS('622660787', orb3, 5, false, 1, 'Pickup')
			wait(.020)
			geth:TakeDamage(damage)
			geth.JumpPower = damagedjump
			geth.WalkSpeed = damagedspeed
			orb3.Transparency = 1
			wait(6)
			geth.JumpPower = 50
			geth.WalkSpeed = 16
			wait()
			wait(cooldown)
			createS('622660787', orb3, 5, false, 1.2, 'Respawn')
			orb3.Transparency = .6
			wait()
			local rs = orb3:FindFirstChildOfClass('Sound')
			if rs then
				rs:Remove()
				again3 = true
			end
		end
	end
end)

--[[ Heal ]]--

orb4.Touched:connect(function(h)
	local geth = h.Parent:FindFirstChildOfClass('Humanoid')
	local randomheal = math.random(20, 30)
	local heal = geth.Health + randomheal
	if geth then
		if geth.Health < 100 then
			if again4 == true then
				again4 = false
				createS('622660787', orb3, 5, false, 1, 'Pickup')
				wait(.020)
				geth.Health = heal
				orb4.Transparency = 1
				wait()
				wait(cooldown)
				createS('622660787', orb3, 5, false, 1.2, 'Respawn')
				orb4.Transparency = .6
				wait()
				local rs = orb4:FindFirstChildOfClass('Sound')
				if rs then
					rs:Remove()
					again4 = true
				end
			end
		end
	end
end)