---[[2008 Time Machine]]---

h1 = game:GetService("Players").LocalPlayer.Character
h2 = game:GetService("Players").LocalPlayer.Character.Humanoid
p = game:GetService("Players").LocalPlayer
hm1 = h1.Head
hm2 = h1.Torso
hm3 = h1["Right Arm"]
hm4 = h1["Left Arm"]
hm5 = h1["Right Leg"]
hm6 = h1["Left Leg"]
I = Instance.new
dct = I("Sound", hm1)
dct.SoundId = "rbxassetid://142285965"
dct.Volume = 5
nst = I("Sound", hm1)
nst.SoundId = "rbxassetid://2036678215"
nst.Volume = 5.99
nst.Pitch = 1
nst.Looped = true
hm = true
ff = I("ForceField", h1)
ff.Visible = false
h2.MaxHealth = math.huge
mm = p:GetMouse()

mm.KeyDown:connect(function(yes)
	if yes == "n" then
		if hm == true then
		dct:Play()
		wait(1)
		warn("N-NANI!")
                h1.Animate:Remove()
                p:ClearCharacterAppearance()
		hm1.Transparency = 0
		specialMesh = Instance.new("SpecialMesh", hm1)
		specialMesh.MeshId = "rbxassetid://430080461"
		specialMesh.TextureId = "rbxassetid://430080522"
		specialMesh.Scale = Vector3.new(0.9,0.9,0.9)
		hm2.Anchored = true
		hm2.Transparency = 1 
		hm3.Transparency = 1 
		hm4.Transparency = 1 
		hm5.Transparency = 1 
		hm6.Transparency = 1
bds = Instance.new("BodyColors", h1)
                bds.HeadColor = BrickColor.new("Bright yellow")
                bds.TorsoColor = BrickColor.new("Bright blue")
                bds.RightArmColor = BrickColor.new("Bright yellow")
                bds.LeftArmColor = BrickColor.new("Bright yellow")
                bds.RightLegColor = BrickColor.new("Br. yellowish green")
                bds.LeftLegColor = BrickColor.new("Br. yellowish green")
                h1.Head.face.Transparency = 1
		hm1.Reflectance = 0.1
		hm2.Reflectance = 0.1
		hm1.Reflectance = 0.1
		hm2.Reflectance = 0.1
		hm3.Reflectance = 0.1
		hm4.Reflectance = 0.1
                hm5.Reflectance = 0.1
                hm6.Reflectance = 0.1
		hm = false
		h2.WalkSpeed = 0
		h2.JumpPower = 0
		wait(20)
                dct:Stop()
        specialMesh:Destroy()
	    hm1.Transparency = 0
	    h1.Head.face.Texture = "rbxassetid://144080495"
                h1.Head.face.Transparency = 0
        hm2.Anchored = false
		hm1.Transparency = 0
		hm2.Transparency = 0 
		hm3.Transparency = 0 
		hm4.Transparency = 0 
		hm5.Transparency = 0
                hm6.Transparency = 0
		h2.WalkSpeed = 55
		h2.JumpPower = 70
		print("2008 its back AGAIN!")
		nst:Play()
		end
	end
end)

---[[Where's mah tardis? D;]]---
