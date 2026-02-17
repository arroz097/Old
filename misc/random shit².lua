----- [[ Random shit² ]] -----
-- [[ by fo43123 ]] --

wait(1/60)
local p = game:GetService('Players').LocalPlayer
local char = p.Character
local hum = char['Humanoid']
local ts = char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
local root = char['HumanoidRootPart']
local hd = char['Head']
local attack = false
local touch = false
local a = false
local h1 = Instance.new('Sound', ts); h1.SoundId = 'rbxassetid://743499393'; h1.Volume = 1.1
local mouse = p:GetMouse()
local ata = Instance.new('Sound', hd); ata.SoundId = 'rbxassetid://743499393'; ata.Volume = 10
local gui = Instance.new('ScreenGui', p.PlayerGui)
local txt = Instance.new('TextLabel', gui)
txt.Position = UDim2.new(0.791, 0,0.083, 0)
txt.Size = UDim2.new(0, 169,0, 24)
txt.Rotation = 4
txt.BackgroundTransparency = 0.5
txt.BorderSizePixel = 3
txt.BorderColor3 = Color3.fromRGB(206, 206, 206)
txt.TextTransparency = 0.1
txt.Text = "Touch: Disabled"
txt.TextSize = 12
txt.TextStrokeColor3 = Color3.fromRGB(206, 206, 206)
txt.TextColor3 = Color3.fromRGB(0, 0, 0)
txt.TextStrokeTransparency = 0
txt.TextStrokeColor3 = Color3.fromRGB(206, 206, 206)
hum.MaxHealth = hum.MaxHealth + 5000
hum.Health = hum.Health + 5000
hum.WalkSpeed = 25
hum.JumpPower = 60

ts.Touched:connect(function(xd)
	if a == false then
		a = true
		if touch ~= false then
			if xd.Parent then
				if xd.Parent:IsA('Model') and xd.Parent:FindFirstChildOfClass('Humanoid') then
					local o1 = Instance.new('Part', char)
					local o2 = Instance.new('Part', char)
					o1.Material = 'Neon'
					o2.Material = 'Neon'
					o1.Anchored = true
					o1.CanCollide = false
					o2.Anchored = true
					o2.CanCollide = false
					o1.BrickColor = BrickColor.new('Institutional white')
					o2.BrickColor = BrickColor.new('Really black')
					local bv = Instance.new('BodyVelocity')
					bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					bv.Velocity = CFrame.new(ts.Position, xd.Position).lookVector*700
					bv.Parent = xd
					game.Debris:AddItem(bv, .1)
					ata.PlaybackSpeed = math.random(10, 17)/10
					ata:Play()
					wait(.1)
					xd.Parent:BreakJoints()
					for i = 1, 15 do
						o1.Size = o1.Size:lerp(Vector3.new(15, 15, 15), .5)
						o2.Size = o2.Size:lerp(Vector3.new(15, 15, 15), .5)
						o1.Transparency = i/15
						o2.Transparency = i/15
						o1.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
						o2.CFrame = ts.CFrame * CFrame.Angles(math.rad(math.random(0, 50)), math.rad(math.random(0, 50)), math.rad(math.random(0, 50)))
						wait()
					end
					o1:Destroy()
					o2:Destroy()
				end
			end
		end
		wait(.1)
		a = false
	end
end)

mouse.KeyDown:connect(function(k)
	if k == 'h' then
		if touch == false then
			touch = true
			txt.Text = "Touch: Enabled"
		elseif touch == true then
			txt.Text = "Touch: Disabled"
			touch = false
		end
	end
end)
