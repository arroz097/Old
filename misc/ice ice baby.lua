wait(1/60)
local me = game:GetService('Players').LocalPlayer
local mychar = me.Character
local myhum = mychar.Humanoid
local a = true
local b = true
local iceicebaby = Instance.new('Sound', mychar.Head)
local freeze = Instance.new('Sound')
local cube = Instance.new('Part', mychar.Head)
local weld = Instance.new('Weld', mychar)
cube.Size = Vector3.new(1.55, 1.6, 1.59)
cube.Material = 'Ice'
cube.Transparency = 0.3
cube.BrickColor = BrickColor.new('Storm blue')
cube.CanCollide = false
weld.Part0 = cube
weld.Part1 = mychar.Head
mychar.Head.BrickColor = BrickColor.new('Pastel light blue')
weld.C1 = CFrame.new(0.01, 0.1, 0.01)
iceicebaby.Volume = 3
iceicebaby.SoundId = 'rbxassetid://898895126'
iceicebaby.Looped = true
iceicebaby.TimePosition = 1
freeze.Volume = 2.5
freeze.SoundId = 'rbxassetid://948494432'
for i,v in pairs(mychar:GetChildren()) do
	if v:IsA('Accessory') then
		v:Destroy()
	end
end
wait()
if me and mychar and myhum then
	iceicebaby:Play()
	myhum.WalkSpeed = 35
	myhum.JumpPower = 70
	myhum.MaxHealth = 'inf'
	myhum.Health = 'inf'
	myhum.HealthDisplayType = 'AlwaysOff'
	wait()
	myhum.HealthChanged:connect(function()
		if b == true then
		myhum.MaxHealth = 'inf'
		myhum.Health = 'inf'
		b = false
		else
			myhum.MaxHealth = 'inf'
			myhum.Health = 'inf'
		end
	end)
end
wait()
print([[
	---( Ice Ice baby script )---
	--(( by fo43123
	how use: click a player, and yea ;)
	keys: 'F' Toggle ice click / 'M' Toggle song
]])
local mse = me:GetMouse()
		mse.Button1Down:connect(function()
			if mse.Target.Parent:FindFirstChild('Torso') and mse.Target.Parent:FindFirstChildOfClass('Humanoid') then
				if a == true then
					a = false
				local ts = mse.Target.Parent:FindFirstChild('Torso')
				ts.Anchored = true
				ts.Anchored = true
				ts.Anchored = true
				ts.Anchored = true
				ts.Anchored = true
				ts.Anchored = true
				if ts.Anchored == false then
					ts.Anchored = true
				else
					ts.Anchored = true
				end
				freeze.PlaybackSpeed = math.random(0.7, 1.4)
				wait(.5)
				local ice = Instance.new('Part', workspace)
				ice.Material = 'Ice'
				ice.BrickColor = BrickColor.new('Storm blue')
				ice.Transparency = .2
				ice.Anchored = true
				ice.Size = Vector3.new(5.3, 7.16, 5.57)
				ice.CFrame = ts.CFrame
				if ice.CFrame == ts.CFrame then
					freeze.PlaybackSpeed = 1.5
					freeze.Parent = ice
					wait()
					freeze:Play()
				end
				ice.Changed:connect(function()
					mse.Target.Parent:FindFirstChildOfClass('Model'):Remove()
				end)
				mse.Target.Parent.Changed:connect(function()
					ice:Destroy()
				end)
				if ice.Anchored == false then
					ice.Anchored = true
				else
					ice.Anchored = true
				end
				ice.Touched:connect(function(h)
					if h.Parent:IsA('Player') and not h.Parent:FindFirstChild(me) then
						local ts2 = h.Parent:FindFirstChild('Torso')
						ts2.Anchored = true
						wait(.5)
						local ice2 = Instance.new('Part', workspace)
						ice2.Material = 'Ice'
						ice2.Transparency = .2
						ice2.BrickColor = BrickColor.new('Storm blue')
						ice2.Size = Vector3.new(5.3, 7.16, 5.57)
						ice2.Anchored = true
						ice2.CFrame = ts2.CFrame
						wait()
						if ice2.CFrame == ts2.CFrame then
							freeze.PlaybackSpeed = 1.5
							freeze.Parent = ice2
							wait()
							freeze:Play()
						end
						ice2.Changed:connect(function()
							h.Parent:FindFirstChildOfClass('Model'):Remove()
						end)
						h.Parent.Changed:connect(function()
							ice2:Destroy()
						end)
					end
				end)
				wait(1)
			a = true
		end
    end
end)
mse.KeyDown:connect(function(k)
	if k == 'f' then
		if a == true then
			print('Ice disabled')
			a = false
		elseif a == false then
			print('Ice enabled')
			a = true
		end
	end
end)
mse.KeyDown:connect(function(k)
	if k == 'm' then
		if iceicebaby.IsPlaying == true then
			iceicebaby:Pause()
		elseif iceicebaby.IsPaused == true then
			iceicebaby:Resume()
		end
	end
end)