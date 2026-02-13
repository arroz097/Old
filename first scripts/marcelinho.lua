-----MARCELO CARALHO ENFIA O PASTELÃO NO CU!
-----fo43123.. this dude have the worst ideias ever, lol.

p = game.Players.LocalPlayer
ch = p.Character
vv = ch.Humanoid
hd = ch.Head
ts = ch.Torso
ra = ch["Right Arm"]
la = ch["Left Arm"]
ll = ch["Left Leg"]
rl = ch["Right Leg"]
i = Instance.new
cf = CFrame.new
bc = BrickColor.new
v = Vector3.new
k = i("Sound", hd)
k.SoundId = "rbxassetid://1990228491"
k.Volume = 5
k.Looped = true
yeye = i("Sound", hd)
yeye.SoundId = "rbxassetid://475158131"
yeye.Volume = 5.99
yeye.Pitch = 0.9
rl.Transparency = 1
la.Transparency = 1
ll.Transparency = 1
ra.Transparency = 1
ts.Transparency = 1
miau = false
p:ClearCharacterAppearance()
mm = p:GetMouse()
nani = true
hudson = true
print"Marcelinho Loaded!"

pp = i("SpecialMesh", hd)
pp.Scale = v(10,10,10)
p1 = i("Part")
w1 = i("Weld")
p1.Parent = pp
w1.Parent = ch

p1.Transparency = 1
p1.Size = v(0.01,0.01,0.01)
w1.Part0 = hed
w1.Part1 = p1
w1.C0 = cf(0.01,0.01,0.01)
--------
k:Play()

vv.WalkSpeed = 31.5
vv.JumpPower = 0
vv.Health = "inf"
vv.MaxHealth = "inf"
ff = i("ForceField", ch)
ff.Visible = false

vv.HealthChanged:connect(function()
	if miau == false then
		if vv.Health ~= "inf" then
			vv.Health = "inf"
		end
		if vv.MaxHealth ~= "inf" then
			vv.MaxHealth = "inf"
		end
	end
end)

function LOL()
     for i = 15, 0, -2 do
    yes = Instance.new("Explosion", ch)
    yes.BlastPressure = 666
    yes.BlastRadius = 1337
    yes.Position = hd.Position
    yes.ExplosionType = 2
    yes.Visible = false
end
end
  

mm.KeyDown:connect(function(key)
   if key == "f" then
 if nani == true then
LOL()
nani = false
  kk = Instance.new("Sound", hd)
  kk.SoundId = "rbxassetid://1990228491"
  kk.Volume = 10.99
  kk.TimePosition = 20.5
  kk:Play()
  k:Pause()
  wait(2.7)
  kk:Stop()
  k:Resume()
nani = true
end
end
end)

mm.KeyDown:connect(function(key)
    if key == "p" then
   if hudson == true then
   yeye:Play()
   k:Pause()
hudson = false
  bl = Instance.new("BlurEffect", game.lighting)
  bl.Size = 5
wait()
  bl.Size = 10
wait()
  bl.Size = 15
wait()
  bl.Size = 20
wait()
  bl.Size = 25
wait()
  bl.Size = 20
wait(12.5)
hm = Instance.new("Explosion", hd)
hm.BlastPressure = 666
hm.BlastRadius = 1337
hm.Position = hd.Position
hm.Visible = false
  bl.Size = 15
wait()
  bl.Size = 10
wait()
  bl.Size = 5
wait()
  bl.Size = 0
k:Resume()
hudson = true
end
end
end)

mm.KeyDown:connect(function(key)
   if key == "m" then
 if k.IsPlaying == true then
k:Stop()
elseif k.IsPlaying == false then
k:Play()
end
end
end)

vv.Died:connect(function(p)
      for i = 59,0,-2 do
     lol = Instance.new("Explosion", ch)
     lol.BlastPressure = 999999999999999
     lol.BlastRadius = 9999999999999999
     lol.Position = hd.Position
     lol.ExplosionType = 2
     lol.Visible = false
end
end)

-----ESSA PORRA TA UMA MERDA COM ESSE COPO DE CAJU!
