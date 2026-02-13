---------
--v.0.1--
---------
plr = game.Players.LocalPlayer
chr = plr.Character
tors = chr.Torso
hed = chr.Head
human = chr.Humanoid
human.MaxHealth = math.huge
ra = chr["Right Arm"]
human.MaxHealth = math.huge
k = Instance.new("ForceField")
k.Parent = chr
k.Visible = false
     p1 = Instance.new("Part")
     p1.Parent = chr
yu = Instance.new("Sound")
yu.Parent = p1
yu.Looped = true
yu.Volume = 3.99
yu.SoundId = "rbxassetid://1646014153"
ye = Instance.new("Sound")
ye.Parent = p1
ye.Looped = true
ye.Volume = 3.99
ye.SoundId = "rbxassetid://797095409"
yz = Instance.new("Sound")
yz.Parent = p1
yz.Looped = true
yz.Volume = 3.99
yz.SoundId = "rbxassetid://1372412973"
mouse = plr:GetMouse()

p1.Material = "Neon"
p1.BrickColor = BrickColor.new("Institutinal white")
p1.Size = Vector3.new(1.1,0.10,1.1)

w1 = Instance.new("Weld")
w1.Parent = chr
w1.Part0 = ra
w1.Part1 = p1
w1.C1 = CFrame.new(-0.02,0.40,0.01)
w1.C0 = CFrame.Angles(0,0,0)

  function blast()
		ma = Instance.new("Explosion")
		ma.Parent = chr
		ma.Visible = false
		ma.Position = hed.Position
                end


local function SFX(id) 
local s=Instance.new("Sound",chr.Torso) 
s.SoundId = "rbxassetid://"..id 
s.Volume = 10 
return s
end

tors.Touched:connect(function(plr)
if plr.Parent then
if plr.Parent:IsA("Model") then
if game.Players:FindFirstChild(plr.Parent.Name) then
if plr.Parent.Name ~= game.Players.LocalPlayer.Name then
game.Players:FindFirstChild(plr.Parent.Name).Character:Destroy()
         gema = SFX(155050824)
           gema:Play()
				end
			end
		end
	end
end)


tors.Touched:connect(function(plr)
      alan = SFX(155050824)
      alan:Play()
   blast()
end)

mouse.KeyDown:connect(function(key)
	if key == "z" then
		if yu.IsPlaying == true then
			yu:Stop()
                          p1.BrickColor = BrickColor.new("Institutional white")
human.WalkSpeed = 16
human.JumpPower = 50
		elseif yu.IsPlaying == false then
			yu:Play()
                          p1.BrickColor = BrickColor.new("Hot pink")
human.WalkSpeed = 39
human.JumpPower = 100
		end
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "c" then
		if ye.IsPlaying == true then
			ye:Stop()
                         p1.BrickColor = BrickColor.new("Institutional white")
human.WalkSpeed = 16
human.JumpPower = 50
		elseif ye.IsPlaying == false then
			ye:Play()
                          p1.BrickColor = BrickColor.new("CGA brown")
human.WalkSpeed = 39
human.JumpPower = 100
		end
	end
end)

mouse.KeyDown:connect(function(key)
	if key == "x" then
		if yz.IsPlaying == true then
                         p1.BrickColor = BrickColor.new("Institutional white")
			yz:Stop()
human.WalkSpeed = 16
human.JumpPower = 50
		elseif yz.IsPlaying == false then
			yz:Play()
                         p1.BrickColor = BrickColor.new("Dark indigo")
human.WalkSpeed = 39
human.JumpPower = 100
		end
	end
end)
