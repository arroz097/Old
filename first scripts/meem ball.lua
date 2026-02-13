---esqueci e sai perdendo

plr = game.Players.LocalPlayer
chr = plr.Character
hed = chr.Head
tors = chr.Torso
human = chr.Humanoid
human.MaxHealth = math.huge
human.WalkSpeed = 25
human.JumpPower = 85
ll = chr["Left Leg"]
rl = chr["Right Leg"]
la = chr["Left Arm"]
ra = chr["Right Arm"]
hed.Transparency = 1
tors.Transparency = 1
ll.Transparency = 1
rl.Transparency = 1
la.Transparency = 1
ra.Transparency = 1
kaboom = Instance.new("Sound", hed)
kaboom.Looped = false
kaboom.Volume = 5
kaboom.SoundId = "rbxassetid://132026302"
k = Instance.new("ForceField",chr)
kek = Instance.new("Sound", hed)
kek.Volume = 200
kek.SoundId = "rbxassetid://796334825"
k.Visible = false
so = Instance.new("Sound")
so.Parent = chr
so.SoundId = "rbxassetid://"
so:Play()
warn"fo43123 its gay!?"
mouse = plr:GetMouse()

for i,v in pairs(chr:GetChildren()) do
if v.ClassName == 'Accessory' then
v:Destroy()
end
end

o1 = Instance.new("Part")
o1.Parent = chr

o1.Transparency = 0
o1.Material = "Neon"
o1.Size = Vector3.new(5,7.3,7.3)
o1.Shape = Enum.PartType.Ball
o1.BrickColor = BrickColor.new("Really black")

m1 = Instance.new("Weld")
m1.Parent = chr
m1.Part0 = tors
m1.Part1 = o1
m1.C0 = CFrame.Angles(0,0,0)
m1.C1 = CFrame.new(0.1,0.1,0.1)

function oof()
  m2 = Instance.new("Explosion")
 m2.Parent = chr
m2.Position = tors.Position
m2.Visible = false
end

mouse.KeyDown:connect(function(key)
   if key == "r" then
   if so.IsPlaying == true then
hed.Transparency = 1
tors.Transparency = 1
ll.Transparency = 1
rl.Transparency = 1
la.Transparency = 1
ra.Transparency = 1
o1.Transparency = 1
human.WalkSpeed = 200
human.JumpPower = 161
chr.Head.face.Transparency = 1
kaboom:Play()
so:Stop()
elseif so.IsPlaying == false then
hed.Transparency = 1
tors.Transparency = 1
ll.Transparency = 1
rl.Transparency = 1
la.Transparency = 1
ra.Transparency = 1
o1.Transparency = 0
human.WalkSpeed = 25
human.JumpPower = 85
so:Play()
mem = Instance.new("Explosion", chr)
mem.Position = tors.Position
mem.Visible = false
kek:Play()
chr.Head.face.Transparency = 1
end
end
end)

local function SFX(id) local s=Instance.new("Sound",chr.Torso); s.SoundId = "rbxassetid://"..id; s.Volume = 10; return s; end
o1.Touched:connect(function(plr)
if o1.Transparency == 1 then
gei = SFX(138084923)
gei:Play()
oof()
print("KABOOOOM!!")
end
end)

---me fudi e fiquei tremendo
