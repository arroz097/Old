---[[Made by fo43123, ikr the script it's simple..]]---
-------------------------------------------------------
--- [[ M o b   P s y c h o ]] ---

p = game:GetService("Players").LocalPlayer
p2 = p.Character
hh = p2.Humanoid
lg = game:GetService("Lighting")
bds = p2["Body Colors"]
ff = Instance.new("ForceField", p2)
ff.Visible = false
s1 = Instance.new("Sound", p2.Head)
s1.SoundId = "rbxassetid://1073120896"
s1.PlaybackSpeed = 0.9
s1.Looped = true
s1.Volume = 5
s1:Play()
s2 = Instance.new("Sound", p2.Torso)
s2.SoundId = "rbxassetid://907532865"
s2.PlaybackSpeed = 0.9
s2.Volume = 1
hh.WalkSpeed = 10
hh.JumpPower = 0
hh.DisplayDistanceType = "None"
hh.HealthDisplayDistance = 0
sh1 = p2.Shirt
sh1:Remove()
sh2 = p2.Pants
mazu = true
sh2:Remove()
hh.Health = "Inf"
hh.MaxHealth = "Inf"
hh.HealthChanged:connect(function()
	if hh.Health ~= "inf" then
		hh.Health = "inf"
	end
	if hh.MaxHealth ~= "inf" then
		hh.MaxHealth = "inf"
	end
end)
print("???%")
mse = p:GetMouse()

--[[ :thonk: ]]--

ll = p2["Left Leg"]
rl = p2["Right Leg"]
la = p2["Left Arm"]
ra = p2["Right Arm"]
ts = p2.Torso
hd = p2.Head
active = true
ts = p2.Torso
bc = BrickColor.new
br = BrickColor.Random
v = Vector3.new
I = Instance.new
cf = CFrame.new
cfa = CFrame.Angles

--- [[ WafflesAreVeryGood... he's so beautiful ç-ç ]] ---

p.Changed:connect(function()
	mse:Destroy()
end)

mse.Button1Down:connect(function()
	if active == true then
	ts.CFrame = cf(mse.Hit.X, mse.Hit.Y, mse.Hit.Z)
	local k = I("Explosion", workspace)
	k.BlastPressure = 1000
    k.BlastRadius = math.huge
	k.Visible = false
	 k.Position = v(mse.Hit.X, mse.Hit.Y, mse.Hit.Z)
	  s2:Play()
	end
end)

if s1.IsPlaying == true then
 ll.Material = "Neon"
 rl.Material = "Neon"
 la.Material = "Neon"
 ra.Material = "Neon"
 hd.Material = "Neon"
 ts.Material = "Neon"
bds.HeadColor = bc("Really black")
bds.LeftArmColor = bc("Really black")
bds.TorsoColor = bc("Really black")
bds.RightArmColor = bc("Really black")
bds.LeftLegColor = bc("Really black")
bds.RightLegColor = bc("Really black")
end

---[[Rip script]]---
