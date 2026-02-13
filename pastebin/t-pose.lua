--- [[ E ]] ---
-- by fo43123

local me = game.Players.LocalPlayer
local char = me.Character
local ts = char['Torso']
local hd = char['Head']
local hum = char['Humanoid']
local root = char['HumanoidRootPart']
local rj = root['RootJoint']
local nk = ts['Neck']
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local rh = ts['Right Hip']
local lh = ts['Left Hip']
local anim = char:FindFirstChild('Animate')
local v3 = Vector3.new
local cc = workspace.CurrentCamera
local cfn = CFrame.new
local cfa = CFrame.Angles
local rand = math.random
local rad = math.rad
local cos = math.cos
local sin = math.sin
local sine = 0
local change = 1
local cooldown = false
local attack = false
local cananim = true
local rj0 = rj.C0
local nk0 = nk.C0
local rs0 = rs.C0
local ls0 = ls.C0
local rh0 = rh.C0
local lh0 = lh.C0
local mouse = me:GetMouse()
local sicko = Instance.new('Sound', hd)
hum.Health = 'inf'
hum.MaxHealth = 'inf'
sicko.SoundId = 'rbxassetid://1737012738' --689628356
sicko.Volume = 5
sicko.Looped = true
sicko:Play()
print([[
	-- Moves --
	T - (Toggle) tpose on haters
]])
if anim then
	anim.Parent = nil
	for i,v in pairs(hum:GetPlayingAnimationTracks()) do
		v:Stop()
	end
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

function clerp(a, b, t)
	return a:lerp(b, t)
end

function player(var)
	if var.Parent then
		if var.Parent:FindFirstChildOfClass('Humanoid') then
			if var.Parent:FindFirstChild('Torso') and var.Parent:FindFirstChild('Head') then
				if var.Parent:IsA('Model') then
					if var.Parent.Name ~= me.Name then
						return var.Parent
					end
				end
			end
		end
	end
end

function tpose()
	cooldown = true
	cananim = false
	local awoke = Instance.new('Sound', hd)
	local range = Instance.new('Part', ts)
	range.Shape = 'Ball'
	range.Material = 'SmoothPlastic'
	range.Anchored = false
	range.CanCollide = false
	range.Size = v3(50, 50, 50)
	range.Transparency = 1
	range.Name = 'Range'
	awoke.Volume = 3
	awoke.Looped = true
	awoke.SoundId = 'rbxassetid://1146827394'
	awoke:Play()
	sicko:Pause()
	range.Touched:connect(function(hit)
		if cooldown then
			if player(hit) then
				if attack == false then
					attack = true
					local bv = Instance.new('BodyVelocity', hit)
					local effect = Instance.new('Part', ts)
					local yeet = Instance.new('Sound', hit)
					effect.Material = 'Neon'
					effect.Anchored = true
					effect.CanCollide = false
					effect.Size = v3(0, 0, 0)
					effect.Shape = 'Ball'
					yeet.SoundId = 'rbxassetid://525743689'
					yeet.Volume = 'inf'
					yeet:Play()
					game.Debris:AddItem(yeet, yeet.PlaybackSpeed)
					coroutine.wrap(function()
						for i = 1, 20 do
							effect.CFrame = hit.CFrame
							hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), 1)
							effect.Color = Color3.fromRGB(rand(0, 255), rand(0, 255), rand(0, 255))
							effect.Transparency = effect.Transparency + 0.1
							effect.Size = effect.Size:lerp(v3(20, 20, 20), 0.25)
							if effect.Transparency >= 1 then
								effect:Destroy()
							end
							swait()
						end
						hum.CameraOffset = v3(0, 0, 0)
					end)()
					bv.MaxForce = v3(math.huge, math.huge, math.huge)
					bv.Velocity = cfn(range.Position, hit.Position).lookVector*100
					game.Debris:AddItem(bv, 0.1)
					wait()
					player(hit):BreakJoints()
					--wait(0.1)
					attack = false
				end
			end
		end
	end)
	repeat
		change = 1
		range.CFrame = ts.CFrame
		nk.C0 = nk.C0:lerp(nk0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
		rs.C0 = rs.C0:lerp(rs0 * cfa(rad(-90), rad(0), rad(0)) * cfn(0, -0.5, -0.5), 0.1)
		ls.C0 = ls.C0:lerp(ls0 * cfa(rad(-90), rad(0), rad(0)) * cfn(0, -0.5, -0.5), 0.1)
		if (root.Velocity * v3(1, 0, 1)).magnitude < 2 then
			rj.C0 = rj.C0:lerp(rj0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
			rh.C0 = rh.C0:lerp(rh0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
			lh.C0 = lh.C0:lerp(lh0 * cfa(rad(0), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
		elseif (root.Velocity * v3(1, 0, 1)).magnitude < 20 then
			hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
			rj.C0 = rj.C0:lerp(rj0 * cfa(rad(20 + sin(sine/6)) * sin(sine/3), rad(0) - root.RotVelocity.Y/35, rad(0)), 0.1)
			rh.C0 = rh.C0:lerp(rh0 * cfa(rad(0) - root.RotVelocity.Y/30, rad(0), rad(-120 * sin(sine/6))), 0.1)
			lh.C0 = lh.C0:lerp(lh0 * cfa(rad(0) - -root.RotVelocity.Y/30, rad(0), rad(-120 * sin(sine/6))), 0.1)
		end
		swait()
	until cooldown == false
	awoke:Destroy()
	range:Destroy()
	sicko:Resume()
	cananim = true
end

mouse.KeyDown:connect(function(k)
	if k == 't' and cooldown == false then
		cooldown = true
		tpose()
	elseif k == 't' and cooldown then
		cooldown = false
	end
end)

me.Chatted:connect(function(msg)
	if msg:sub(1,2) == 'p/' then
		sicko.SoundId = 'rbxassetid://'..msg:sub(3)
		sicko:Play()
	end
end)

hum.HealthChanged:connect(function()
	hum.Health = 'inf'
	hum.MaxHealth = 'inf'
end)

while true do
	sine = sine + change
	--sicko.PlaybackSpeed = rand(10, 14)/10
	cc.FieldOfView = 70 + sicko.PlaybackLoudness/100
	hum.CameraOffset = hum.CameraOffset:lerp(v3(rand(-1, 1), rand(-1, 1), rand(-1, 1)), sicko.PlaybackLoudness/5000)
	local tsvel = (root.Velocity * v3(1, 0, 1)).magnitude
	if tsvel < 2 and cananim then
		change = 1
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 0, 0), 0.1)
		rj.C0 = rj.C0:lerp(rj0 * cfa(rad(0 - sicko.PlaybackLoudness/10), rad(0), rad(0)) * cfn(0, 0, 0 - sicko.PlaybackLoudness/1000), 0.1)
		nk.C0 = nk.C0:lerp(nk0 * cfa(rad(0 - sicko.PlaybackLoudness/50), rad(0), rad(0)) * cfn(0, 0, 0), 0.1)
		rs.C0 = rs.C0:lerp(rs0 * cfa(rad(-5 - sicko.PlaybackLoudness/50), rad(0 - sicko.PlaybackLoudness/50), rad(0 + sicko.PlaybackLoudness/10)) * cfn(0, 0, 0), 0.1)
		ls.C0 = ls.C0:lerp(ls0 * cfa(rad(-5 - sicko.PlaybackLoudness/50), rad(0 + sicko.PlaybackLoudness/50), rad(0 - sicko.PlaybackLoudness/10)) * cfn(0, 0, 0), 0.1)
		rh.C0 = rh.C0:lerp(rh0 * cfa(rad(-5), rad(0), rad(0 - sicko.PlaybackLoudness/10)) * cfn(0, 0, 0), 0.1)
		lh.C0 = lh.C0:lerp(lh0 * cfa(rad(-5), rad(0), rad(0 + sicko.PlaybackLoudness/10)) * cfn(0, 0, 0), 0.1)
	elseif tsvel < 20 and cananim then
		change = 1
		hum.CameraOffset = hum.CameraOffset:lerp(v3(0, 1 * sin(sine/3), 0), 0.1)
		rj.C0 = rj.C0:lerp(rj0 * cfa(rad(20 + sin(sine/6)) * sin(sine/3), rad(0) - root.RotVelocity.Y/30, rad(10) * sin(sine/3)), 0.1)
		nk.C0 = nk.C0:lerp(nk0 * cfa(rad(10) * -sin(sine/3), rad(0) - root.RotVelocity.Y/60, rad(0) - root.RotVelocity.Y/50), 0.1)
		rs.C0 = rs.C0:lerp(rs0 * cfa(rad(0), rad(0) - root.RotVelocity.Y/50 - -0.1 + sin(sine/6)/12, rad(120 * sin(sine/6))) * cfn(0, 0, .050), 0.1)
		ls.C0 = ls.C0:lerp(ls0 * cfa(rad(0), rad(0) - root.RotVelocity.Y/50 - 0.1 + sin(sine/6)/12, rad(120 * sin(sine/6))) * cfn(0, 0, .050), 0.1)
		rh.C0 = rh.C0:lerp(rh0 * cfa(rad(0) - root.RotVelocity.Y/30, rad(0), rad(-120 * sin(sine/6))), 0.1)
		lh.C0 = lh.C0:lerp(lh0 * cfa(rad(0) - -root.RotVelocity.Y/30, rad(0), rad(-120 * sin(sine/6))), 0.1)
	end
	swait()
end
