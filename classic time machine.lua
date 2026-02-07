--- [[ "Classic" Time Machine ]] ---
	--  By fo43123

h1 = game:GetService("Players").LocalPlayer.Character
h2 = game:GetService("Players").LocalPlayer.Character.Humanoid
p = game:GetService("Players").LocalPlayer
cc = workspace.CurrentCamera
hm1 = h1.Head
hm2 = h1.Torso
hm3 = h1["Right Arm"]
hm4 = h1["Left Arm"]
hm5 = h1["Right Leg"]
hm6 = h1["Left Leg"]
dct = Instance.new("Sound", hm1)
dct.SoundId = "rbxassetid://142285965"
dct.Volume = 5
nst = Instance.new("Sound", hm1)
nst.SoundId = "rbxassetid://2036678215"
nst.Volume = 5.99
nst.Pitch = 1
nst.Looped = true
plim = Instance.new('Sound', hm1)
plim.Volume = 1
hm = true
ff = Instance.new("ForceField", h1)
ff.Visible = false
h2.MaxHealth = math.huge
h2.Health = math.huge
h2.HealthChanged:connect(function()
	h2.MaxHealth = math.huge
	h2.Health = math.huge
end)
sine = 0
change = 1
mm = p:GetMouse()

local favids = {
	
	effect1 = 'rbxassetid://743499393'
	
}

artificialhb = Instance.new('BindableEvent', script)
artificialhb.Name = 'Heartbeat'
script:WaitForChild('Heartbeat')
frame = 1 / 60
tf = 0
allowframeloss = false
tossreminder = false
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
		if tossreminder then
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

function clerp(a, b, t)
	return a:lerp(b, t)
end

mm.KeyDown:connect(function(yes)
	if yes == 'n' then
		if hm == true then
			hm = false
		if h1:FindFirstChildOfClass('LocalScript').Name == 'Animate' then 
			h1:FindFirstChildOfClass('LocalScript'):Destroy()
			for i,v in pairs(h2:GetPlayingAnimationTracks()) do
				v:Stop()
			end
		else
			error('Animate LocalScript Nil')
		end
		dct:Play()
		coroutine.wrap(function()
			local h2camset = h2.CameraOffset
			repeat
				cc.FieldOfView = 70 + dct.PlaybackLoudness/200
				h2.CameraOffset = clerp(h2.CameraOffset, h2camset + Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)), dct.PlaybackLoudness/5000)
				swait()
			until dct.IsPlaying == false
			--h2.CameraOffset = Vector3.new(0, 0, 0)
		end)()
		wait(1)
		warn('!!')
		wait()
		local meshpart = Instance.new('Part', h1)
		local specialMesh = Instance.new("SpecialMesh", meshpart)
		meshpart.Anchored = true
		meshpart.CanCollide = false
		meshpart.CFrame = hm2.CFrame
		specialMesh.Offset = Vector3.new(0, -15, 0)
		specialMesh.MeshId = "rbxassetid://430080461"
		specialMesh.TextureId = "rbxassetid://430080522"
		specialMesh.Scale = Vector3.new(1, 1, 1)
		hm2.Anchored = true
		h2.WalkSpeed = 0
		h2.JumpPower = 0
		for i = 1, 100 do
			specialMesh.Offset = specialMesh.Offset:lerp(Vector3.new(0, 2, 0), .070)
			swait()
		end
		p:ClearCharacterAppearance()
		local bds = Instance.new("BodyColors", h1)
		bds.HeadColor = BrickColor.new("Bright yellow")
		bds.TorsoColor = BrickColor.new("Bright blue")
        bds.RightArmColor = BrickColor.new("Bright yellow")
        bds.LeftArmColor = BrickColor.new("Bright yellow")
        bds.RightLegColor = BrickColor.new("Br. yellowish green")
        bds.LeftLegColor = BrickColor.new("Br. yellowish green")
		hm1.Reflectance = 0.1
		hm2.Reflectance = 0.1
		hm1.Reflectance = 0.1
		hm2.Reflectance = 0.1
		hm3.Reflectance = 0.1
		hm4.Reflectance = 0.1
        hm5.Reflectance = 0.1
        hm6.Reflectance = 0.1
		h1.Head.face.Transparency = 1
		hm1.Transparency = 1 
		hm2.Transparency = 1
		hm3.Transparency = 1 
		hm4.Transparency = 1 
		hm5.Transparency = 1 
		hm6.Transparency = 1
		wait(20)
		coroutine.wrap(function()
			for i = 1, 100 do
				dct.Volume = dct.Volume - .080
				if dct.Volume == 0 then
					dct:Stop()
				end
				swait()
			end
		end)()
		coroutine.wrap(function()
			for i = 1, 100 do
				specialMesh.Offset = specialMesh.Offset:lerp(Vector3.new(0, -20, 0), .1)
				swait()
			end
			meshpart:Destroy()
		end)()
		wait()
		plim.Volume = 5
		plim.TimePosition = 0.1
		plim.PlaybackSpeed = 1.35
		plim.SoundId = favids.effect1
		Instance.new('DistortionSoundEffect', plim).Level = 0.5
		plim:Play()
		coroutine.wrap(function()
			for i = 1, 16 do
				h2.CameraOffset = h2.CameraOffset:lerp(Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)), plim.PlaybackLoudness/1000)
				swait()
			end
			--h2.CameraOffset = Vector3.new(0, 0, 0)
		end)()
		wait()
		coroutine.wrap(function()
			local ball = Instance.new('Part', h1)
			ball.Anchored = true
			ball.CanCollide = false
			ball.BrickColor = BrickColor.new('Bright yellow')
			ball.Shape = 'Ball'
			ball.Size = Vector3.new(0, 0, 0)
			ball.Material = 'Neon'
			ball.CFrame = hm2.CFrame
			for i = 1, 100 do
				ball.Size = ball.Size:lerp(Vector3.new(60, 60, 60), .1)
				ball.Transparency = ball.Transparency + .050
				if ball.Transparency >= 1 then
					ball:Destroy()
				end
				swait()
			end
		end)()
	    hm1.Transparency = 0
	    h1.Head.face.Texture = 'rbxasset://textures/face.png'
        h1.Head.face.Transparency = 0
        hm2.Anchored = false
		hm1.Transparency = 0
		hm2.Transparency = 0 
		hm3.Transparency = 0 
		hm4.Transparency = 0 
		hm5.Transparency = 0
        hm6.Transparency = 0
		h2.WalkSpeed = 40
		h2.JumpPower = 50
		local root = h1.HumanoidRootPart
		local nk = hm2['Neck']
		local rs = hm2['Right Shoulder']
		local ls = hm2['Left Shoulder']
		local rh = hm2['Right Hip']
		local lh = hm2['Left Hip']
		local rj = h1.HumanoidRootPart['RootJoint']
		local rs0 = rs.C0
		local ls0 = ls.C0
		local rh0 = rh.C0
		local lh0 = lh.C0
		local nk0 = nk.C0
		local rj0 = rj.C0
		print('Classic Times')
		nst:Play()
		while true do
			sine = sine + change
			cc.FieldOfView = 70 + nst.PlaybackLoudness/500
			h2.CameraOffset = h2.CameraOffset:lerp(Vector3.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)), nst.PlaybackLoudness/5000)
			if root.Velocity.y > 1 then
				change = 1
				h2.WalkSpeed = 30
				rj.C0 = clerp(rj.C0, rj0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(0)), 1)
				rs.C0 = clerp(rs.C0, rs0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)), 1)
				ls.C0 = clerp(ls.C0, ls0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)), 1)
				rh.C0 = clerp(rh.C0, rh0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				lh.C0 = clerp(lh.C0, lh0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
			elseif root.Velocity.y < -1 then
				change = 1
				h2.WalkSpeed = 30
				rj.C0 = clerp(rj.C0, rj0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(0)), 1)
				nk.C0 = clerp(nk.C0, nk0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				rs.C0 = clerp(rs.C0, rs0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)), 1)
				ls.C0 = clerp(ls.C0, ls0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(180)), 1)
				rh.C0 = clerp(rh.C0, rh0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				lh.C0 = clerp(lh.C0, lh0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
			elseif (root.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
				change = 1
				h2.WalkSpeed = 40
				nk.C0 = clerp(nk.C0, nk0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				rj.C0 = clerp(rj.C0, rj0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				rs.C0 = clerp(rs.C0, rs0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				ls.C0 = clerp(ls.C0, ls0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				rh.C0 = clerp(rh.C0, rh0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
				lh.C0 = clerp(lh.C0, lh0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 1)
			elseif (root.Velocity * Vector3.new(1, 0, 1)).magnitude > 20 then
				change = 1
				h2.WalkSpeed = 40
				nk.C0 = clerp(nk.C0, nk0 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0) - root.RotVelocity.Y/50), 1)
				rj.C0 = clerp(rj.C0, rj0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(0)), 1)
				rs.C0 = clerp(rs.C0, rs0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(60) * math.cos(sine/5)), 1)
				ls.C0 = clerp(ls.C0, ls0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(60) * math.cos(sine/5)), 1)
				rh.C0 = clerp(rh.C0, rh0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(-60) * math.cos(sine/5)), 1)
				lh.C0 = clerp(lh.C0, lh0 * CFrame.Angles(math.rad(0), math.rad(0) - root.RotVelocity.Y/50, math.rad(-60) * math.cos(sine/5)), 1)
			end
			swait()
		end
		end
	end
end)

--- [[ Where's mah tardis ]] ---
