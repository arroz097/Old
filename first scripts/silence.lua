---[[The silence]]---

k = game:GetService("Players").LocalPlayer.Character.Head.Running
k.Volume = 0
k2 = game:GetService("Players").LocalPlayer.Character.Head.Jumping
k2.Volume = 0
k3 = game:GetService("Players").LocalPlayer.Character.Head.Climbing
k3.Volume = 0
k4 = game:GetService("Players").LocalPlayer.Character.Head.Landing
k4.Volume = 0
k5 = game:GetService("Players").LocalPlayer.Character.Head.Died
k5.Volume = 0
k6 = game:GetService("Players").LocalPlayer.Character.Head.Splash
k6.Volume = 0
k7 = game:GetService("Players").LocalPlayer.Character.Head.Swimming
k7.Volume = 0
k8 = game:GetService("Players").LocalPlayer.Character.Head.FreeFalling
k8.Volume = 0

--[[SHHHHHHHH]]--

h1 = game:GetService("Players").LocalPlayer.Character
h2 = game:GetService("Players").LocalPlayer.Character.Humanoid
p = game:GetService("Players").LocalPlayer
hm1 = h1.Head
hm2 = h1.Torso
hm3 = h1["Right Arm"]
hm4 = h1["Left Arm"]
hm5 = h1["Right Leg"]
hm6 = h1["Left Leg"]
waluigi = false
active = true
boom1 = Instance.new("Sound", hm1)
boom1.SoundId = "rbxassetid://1177781153"
boom1.Volume = 1
boom1.Pitch = 0.7
boom2 = Instance.new("Sound", hm1)
boom2.SoundId = "rbxassetid://1177784554"
boom2.Volume = 1
boom2.Pitch = 0.7
they = Instance.new("Sound", hm1)
they.SoundId = "rbxassetid://1238333516"
they.Volume = 5.99
they.Pitch = 1
song1 = Instance.new("Sound", hm1)
song1.SoundId = "rbxassetid://1146827394"
song1.Volume = 5 
song1.Pitch = 0.8
song2 = Instance.new("Sound", hm1)
song2.SoundId = "rbxassetid://1651820713"
song2.Volume = 5 
song2.Pitch = 0.9
cam = game:GetService("Workspace").CurrentCamera
cam.FieldOfView = 70
warn("Also warn fo43123 he's a gay, k?")
yes = p:GetMouse()

---[[idk wt is this k?]]---

yes.KeyDown:connect(function(songo)
	if songo == "h" then
		if song == true then
			song1:Play()
			song = false
		elseif song == false then
			song1:Stop()
			song = true
		end
	end
end)

yes.KeyDown:connect(function(songo2)
	if songo2 == "j" then
		if songTwo == true then
			song2:Play()
			songTwo = false
		elseif songTwo == false then
			song2:Stop()
			songTwo = true
		end
	end
end)

---[[NUUU WHY YOU KILLED ME D:]]---

h2.Died:connect(function()
	they:Play()
       waluigi = false
        active = false
end)

--[[mamma mia luigi!]]--

yes.KeyDown:connect(function(mario)
	if mario == "v" then
		if active == true then
		waluigi = true
		  active = false
			hm1.Transparency = 0.99
			hm2.Transparency = 0.99
			hm3.Transparency = 0.99
			hm4.Transparency = 0.99
			hm5.Transparency = 0.99
			hm6.Transparency = 0.99
			h1.Head.face.Transparency = 0.99
			boom1:Play()
			h2.WalkSpeed = 80
			h2.JumpPower = 0 -- mario crys.. ;(
			cam.FieldOfView = 120
                        h2.DisplayDistanceType = "None"
                        h2.HealthDisplayDistance = 0
            for _,v in next, h1:children() do
		    if(v:IsA'Accessory')then
				v.Handle.Transparency = 0.99
				end
			end
		end
	end
end)
		
yes.KeyDown:connect(function(luigi)
	if luigi == "z" then
		if waluigi == true then
			hm1.Transparency = 0
			hm2.Transparency = 0
			hm3.Transparency = 0
			hm4.Transparency = 0
			hm5.Transparency = 0
			hm6.Transparency = 0
			h1.Head.face.Transparency = 0
			boom2:Play()
                        h2.WalkSpeed = 16
			h2.JumpPower = 50
			cam.FieldOfView = 70
                        h2.DisplayDistanceType = "Viewer"
                        h2.HealthDisplayDistance = 100
            for _,v in next, h1:children() do
		    if(v:IsA'Accessory')then
				v.Handle.Transparency = 0
					boom2:Play()
					waluigi = false
					active = true
				end
			end
		end
	end
end)
