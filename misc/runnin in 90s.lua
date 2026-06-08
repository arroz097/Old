--- [[ Random shit ]] ---
-- by fo43123

local fe = game.Players.fo43123
local canjump = true
local legs_color = fe.Character['Right Leg'].BrickColor and fe.Character['Left Leg'].BrickColor
local legs_material = fe.Character['Right Leg'].Material and fe.Character['Left Leg'].Material
local legs_transparency = fe.Character['Right Leg'].Transparency and fe.Character['Left Leg'].Transparency
local shirt = nil
local pants = nil
local ids = {665751753} -- useless ik

local s = Instance.new('Sound', fe.Character.Head)
s.SoundId = 'rbxassetid://'..ids[math.random(1, #ids)]
s.Volume = 5
fe.Character.Humanoid.WalkSpeed = math.random(70, 100)

coroutine.wrap(function()
	while true do
	if fe.Character.HumanoidRootPart.Velocity.Magnitude < 2 then
		s:Pause()
		if shirt ~= nil then
			shirt.Parent = fe.Character
		end
		if pants ~= nil then
			pants.Parent = fe.Character
		end
		fe.Character['Right Leg'].Material = legs_material
		fe.Character['Left Leg'].Material = legs_material
		fe.Character['Right Leg'].BrickColor = legs_color
		fe.Character['Left Leg'].BrickColor = legs_color
		fe.Character['Right Leg'].Transparency = legs_transparency
		fe.Character['Left Leg'].Transparency = legs_transparency
	elseif fe.Character.HumanoidRootPart.Velocity.Magnitude < 40 then
		s:Resume()
		for i,v in pairs(fe.Character:GetChildren()) do
        	if v:IsA('Shirt') then
		   shirt = v
		shirt.Parent = fe.Character['Head']
        else
	    end
	    end
		for i,v in pairs(fe.Character:GetChildren()) do
			if v:IsA('Pants') then
				pants = v
				pants.Parent = fe.Character['Head']
			else
			end
		end
		fe.Character['Right Leg'].Material = 'Neon'
		fe.Character['Right Leg'].BrickColor = BrickColor.new('Deep orange')
		fe.Character['Left Leg'].Material = 'Neon'
		fe.Character['Left Leg'].BrickColor = BrickColor.new('Deep orange')
		fe.Character['Right Leg'].Transparency = 0.2
		fe.Character['Left Leg'].Transparency = 0.2
		--print("RUNNIN IN THE 90'S")
	end
	wait()
	end
end)()

-- loop function
s.Ended:connect(function()
	s.SoundId = 'rbxassetid://'..ids[math.random(1, #ids)]
	s:Play()
end)


for i,v in pairs(workspace:GetDescendants()) do
	if v:IsA('Sound') then
		if v.IsPlaying ~= false then
			v.SoundId = 'rbxassetid://594274955'
			local ata = Instance.new('Message', workspace)
			ata.Text = 'DEJAVU NIKOLAS CORNO'
			wait(1)
			ata:Destroy()
		end
	end
end

--[[
print('Loaded')
local vdd = Instance.new('Sound', workspace)
game.Players.fo43123.Chatted:connect(function(msg)
	if msg:sub(1,5) == 'song/' then
		vdd.SoundId = 'rbxassetid://'..msg:sub(6)
		vdd:Play()
	elseif msg:sub(1,6) == 'pitch/' then
		vdd.PlaybackSpeed = msg:sub(7)
	elseif msg:sub(1,7) == 'volume/' then
		vdd.Volume = msg:sub(8)
	elseif msg:sub(1,5) == 'song/' then
		vdd:Stop()
	elseif msg:sub(1,5) == 'loop/' then
		vdd.Looped = true
		print('loop', vdd.Looped)
	elseif msg:sub(1,7) == 'unloop/' then
		vdd.Looped = false
		print('loop', vdd.Looped)
	elseif msg:sub(1,8) == 'destroy/' then
		print('rest in peace')
		vdd:Destroy()
	end
	end)
--]]