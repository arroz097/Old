local me = game.Players.LocalPlayer
local mouse = me:GetMouse()
local char = me.Character
local hum = char:FindFirstChild('Humanoid')
local hd = char:FindFirstChild('Head')
local ts = char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
local ra = char:FindFirstChild('Right Arm') or char:FindFirstChild('RightUpperArm')
local la = char:FindFirstChild('Left Arm') or char:FindFirstChild('LeftUpperArm')
local rl = char:FindFirstChild('Right Leg') or char:FindFirstChild('RightUpperLeg')
local ll = char:FindFirstChild('Left Leg') or char:FindFirstChild('LeftUpperLeg')
local root = char:FindFirstChild('HumanoidRootPart')
local rj = root:FindFirstChild('RootJoint')
local rs = ts:FindFirstChild('Right Shoulder')
local ls = ts:FindFirstChild('Left Shoulder')
local rh = ts:FindFirstChild('Right Hip')
local lh = ts:FindFirstChild('Left Hip')
local nk = ts:FindFirstChild('Neck')
local anim = char:FindFirstChild('Animate')
local base = workspace:FindFirstChild('Baseplate') or workspace:FindFirstChild('Base')
local debris = game:GetService('Debris')
local iserase = false -- script:WaitForChild('iserase').Value
--local erase = game.ReplicatedStorage:WaitForChild('erase')
local secsOnErase = 0
local debounce = false
local change = 1
local random1 = nil
local random2 = nil
local random3 = nil
local cc = workspace.CurrentCamera
local cos = math.cos
local sin = math.sin
local rad = math.rad
local rand = math.random
local cfn = CFrame.new
local cfa = CFrame.Angles
local cfor = CFrame.fromOrientation
local cfeu = CFrame.fromEulerAnglesXYZ
local v3 = Vector3.new
local str = string
local sine = 0
local effects = nil
local lasttime = nil
local lastbrightness
local lastambient
local gayconnections = {}
local health = {}
local unerase = {}
local eraseeffect = Instance.new('Sound', cc);eraseeffect.Volume=1;eraseeffect.SoundId='rbxassetid://3280066384';eraseeffect.Name='e1'
local erasetheme = script:WaitForChild('theme')
local erasefinished = Instance.new('Sound', cc);erasefinished.Volume=2;erasefinished.SoundId='rbxassetid://3373991228'
hum.WalkSpeed = 16
if char:FindFirstChild('Effects') then
	effects = char:FindFirstChild('Effects')
else
	effects = Instance.new('Folder', char)
	effects.Name = 'Effects'
end

erasetheme.Parent = game:GetService('SoundService')

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

function sound(id, parent, vol, pitch, timepos)
	local s = Instance.new('Sound')
	s.Parent = parent
	s.SoundId = id
	s.Volume = vol
	s.PlaybackSpeed = pitch
	s.TimePosition = timepos
	s:Play()
	game.Debris:AddItem(s, s.PlaybackSpeed + 5)
end

function camshake(duration, intensity)
	spawn(function()
		for i = 1, duration do
			hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), 0.1 * intensity)
			swait()
		end
		hum.CameraOffset = v3(0, 0, 0)
	end)
end

function player(var)
    if var.Parent then
        if var.Parent:FindFirstChildOfClass('Humanoid') then
            if var.Parent:FindFirstChild('Torso') and var.Parent:FindFirstChild('Head') or var.Parent:FindFirstChildOfClass('Accessory') then
                if var.Parent:IsA('Model') then
                    --if var.Parent.Name ~= me.Name then
                        return var
                    --end
                end
            end
        end
    end
end

mouse.KeyDown:connect(function(suamae)
	if suamae == 'q' then
		if debounce then return end
		debounce = true
		erasefinished.TimePosition = 0.15
		eraseeffect:Play()
		erasetheme:Play()
		
		--print(script.theme.IsPlaying)
		lasttime = game.Lighting.ClockTime
		lastbrightness = game.Lighting.Brightness
		lastambient = game.Lighting.Ambient
		camshake(20, 5)
		random1 = rand(2, 3)
		random2 = rand(2, 3)
		random3 = rand(2, 3)
		local cce = Instance.new('ColorCorrectionEffect')
		local erasebox = Instance.new('Sky')
		erasebox.SkyboxBk = 'rbxassetid://602422327'
		erasebox.SkyboxDn = 'rbxassetid://602420546'
		erasebox.SkyboxFt = 'rbxassetid://602423485'
		erasebox.SkyboxLf = 'rbxassetid://602419599'
		erasebox.SkyboxRt = 'rbxassetid://602420943'
		erasebox.SkyboxUp = 'rbxassetid://602424084'
		game.Lighting.FogColor = Color3.fromRGB(0, 0, 0)
		cce.Parent = game.Lighting
		spawn(function()
			for i = 1, 20 do
				cce.TintColor = cce.TintColor:lerp(Color3.fromRGB(255, 85, 127), 0.1)
				swait()
			end
			for i = 1, 20 do
				cce.TintColor = cce.TintColor:lerp(Color3.fromRGB(255, 255, 255), 0.1)
			swait()
			end
		end)
		spawn(function()
			wait(1)
			spawn(function()
				camshake(30, 3)
				wait(0.3)
				--camshake(25, 3)
				--camshake(25, 10)
			end)
			for i = 1, 30 do
				cc.FieldOfView = cc.FieldOfView + 2.5
				swait()
				if cc.FieldOfView >= 120 then
					cc.FieldOfView = 120
				end
			end
			camshake(30, 5)
			for i = 1, 50 do
				cc.FieldOfView = cc.FieldOfView - 5
				if cc.FieldOfView <= 70 then
					cc.FieldOfView = 70
				end
				swait()
			end
		end)
		spawn(function()
			wait(2)
			camshake(25, 5)
			wait()
			for i = 1, 25 do
				game.Lighting.ClockTime = game.Lighting.ClockTime + 0.5 if game.Lighting.ClockTime >= 14 then game.Lighting.ClockTime = 14 end
				game.Lighting.OutdoorAmbient = game.Lighting.OutdoorAmbient:Lerp(Color3.fromRGB(255, 255, 255), 0.1)
				game.Lighting.Brightness = game.Lighting.Brightness + 0.15 if game.Lighting.Brightness >= 3 then game.Lighting.Brightness = 3 end
				erasebox.Parent = game.Lighting
				cce.Contrast = cce.Contrast + 0.040
				swait()
			end
		end)
		iserase = true
		for _,v in pairs(workspace:GetDescendants()) do
			if v:IsA('Sound') then
				if v.Name ~= 'e1' and v.Name ~= 'e2' then
					if v.IsPlaying then
						v:Pause()
						table.insert(unerase, v)
					end
				end
			end
			spawn(function()
				wait(1.5)
			if v:IsA('Part') or v:IsA('WedgePart') or v:IsA('CornerWedgePart') or v:IsA('UnionOperation') and v.ClassName ~= 'Terrain' then 
				if v ~= base then
					if not v:IsDescendantOf(char) then
					if not player(v) then
					local originalsize = v.Size
					local originaltr = v.Transparency
					local originalcf = v.CFrame
					local originalcollide = v.CanCollide
					local originalanchor = v.Anchored
					--local e = base:Clone()
					--local eCF = e.CFrame
					--e.Parent = workspace
					base.Transparency = 1
					--e.Transparency = 0
					--e.CanCollide = false
					--e.Anchored = true
					v.Anchored = true
					v.CanCollide = false
					spawn(function()
						for i = 1, 500 do
							v.Size = v.Size:lerp(v3(0, 0, 0), 0.008)
							--e.Size = e.Size:lerp(v3(0, 0, 0), 0.010)
							v.CFrame = v.CFrame:lerp(originalcf * cfn(0, 3, 0) * cfeu(random1, random2, random3), 0.008)
							--e.CFrame = e.CFrame:lerp(eCF * cfn(0, 3, 0) * cfeu(random1, random2, random3), 0.010)
							
							v.Transparency = v.Transparency + 0.008
							--e.Transparency = e.Transparency + 0.010
							swait()
						end
					end)
					table.insert(unerase, {part = v, sizechange = originalsize, transchange = originaltr, anchorchange = originalanchor, collidechange = originalcollide, cfchange = originalcf, clones = nil})
					end
				end
				end
				end
			end)
			spawn(function()
				wait(1.5)
			pcall(function()
			if player(v) then
				if not v:IsDescendantOf(char) then
					if not v.Anchored then
						v.Anchored = true
						local originallimbsanchor = v.Anchored
						table.insert(unerase, {limbs = v, limbsanchor = originallimbsanchor})
					end
				end
			end
			end)
			end)
		end
		local newerase = workspace.DescendantAdded:Connect(function(v)
			if v:IsA('Sound') then
				if v.Name ~= 'e1' and v.Name ~= 'e2' then
					if v.IsPlaying then
						v:Pause()
						table.insert(unerase, v)
					end
				end
			end
		end)
		--]]
		-- triggers when localplayer die
		hum.Died:connect(function()
			debounce = true
		newerase:Disconnect()
		erasebox:Destroy()
		camshake(50, 3)
		erasefinished.TimePosition = 0.2
		cce.Saturation = 0
		cce.Contrast = 0
		erasefinished:Play()
		game.Lighting.FogEnd = 10000
		spawn(function()
			for i = 1, 20 do
				cce.TintColor = cce.TintColor:lerp(Color3.fromRGB(255, 85, 127), 0.2)
				swait()
			end
			for i = 1, 20 do
				cce.TintColor = cce.TintColor:lerp(Color3.fromRGB(255, 255, 255), 0.2)
				swait()
			end
			spawn(function()
				wait(2)
				cce:Destroy()
			end)
		end)
		random1 = nil
		random2 = nil
		random3 = nil
		for i,v in pairs(unerase) do
			pcall(function()
				v.TimePosition = v.TimePosition + 22
				v:Resume()
			end)
			pcall(function()
				for i = 1, 100 do
				v.part.Size = v.sizechange
				v.part.Transparency = v.transchange
				v.part.CFrame = v.cfchange
				v.part.CanCollide = v.collidechange
				v.part.Anchored = v.anchorchange
				v.clones:Destroy()
				end
			end)
			pcall(function()
				v.limbs.Anchored = false
			end)
			pcall(function()
				v.clones.Parent = nil
			end)
		end
		for i,v in pairs(gayconnections) do
			pcall(function()
				v:Disconnect()
			end)
		end
		lasttime = nil
		health = {}
		base.Transparency = 0
		unerase = {}
		eraseeffect:Stop()
		erasetheme:Stop()
		game.Lighting.ClockTime = lasttime
		game.Lighting.OutdoorAmbient = lastambient
		game.Lighting.Brightness = lastbrightness
		hum.WalkSpeed = 16
		end)
		
		--]]
		wait(22)
		base.Transparency = 0
		iserase = false
		newerase:Disconnect()
		erasebox:Destroy()
		camshake(50, 3)
		erasefinished.TimePosition = 0.2
		cce.Saturation = 0
		cce.Contrast = 0
		erasefinished:Play()
		game.Lighting.FogEnd = 10000
		game.Lighting.ClockTime = lasttime
		game.Lighting.OutdoorAmbient = lastambient
		game.Lighting.Brightness = lastbrightness
		hum.WalkSpeed = 16
		spawn(function()
			for i = 1, 20 do
				cce.TintColor = cce.TintColor:lerp(Color3.fromRGB(255, 85, 127), 0.2)
				swait()
			end
			for i = 1, 20 do
				cce.TintColor = cce.TintColor:lerp(Color3.fromRGB(255, 255, 255), 0.2)
				swait()
			end
			spawn(function()
				wait(2)
				cce:Destroy()
			end)
		end)
		for i,v in pairs(unerase) do
			pcall(function()
				v.TimePosition = v.TimePosition + 22
				v:Resume()
			end)
			pcall(function()
				v.part.Size = v.sizechange
				v.part.Transparency = v.transchange
				v.part.CFrame = v.cfchange
				v.part.CanCollide = v.collidechange
				v.part.Anchored = v.anchorchange
				v.clones:Destroy()
			end)
			pcall(function()
				v.limbs.Anchored = false
			end)
			pcall(function()
				v.clones.Parent = nil
			end)
		end
		game.Lighting.ClockTime = lasttime
		for i,v in pairs(gayconnections) do
			pcall(function()
				v:Disconnect()
			end)
		end
		health = {}
		unerase = {}
		eraseeffect:Stop()
		erasetheme:Stop()
		wait(2)
		debounce = false
	end
end)
