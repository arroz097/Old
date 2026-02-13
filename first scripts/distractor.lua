------LEL------
p = game:GetService("Players").LocalPlayer
ch = p.Character
vv = ch.Humanoid
distract = true
rl = ch["Right Arm"]
m = p:GetMouse()
vv.WalkSpeed = 35
vv.JumpPower = 60
print("Hudson like some bananas..huh?")

m.KeyDown:connect(function(key)
	if key == "f" then
		if distract == true then
			lol = Instance.new("Part", rl)
			d1 = Instance.new("Decal", lol)
                        d2 = Instance.new("Decal", lol)
                        d2.Texture = "rbxassetid://1953584601"
			d1.Texture = "rbxassetid://1953584601"
                        d1.Face = "Top"
                        d2.Face = "Bottom"
			lol.Position = rl.Position
			lol.Anchored = false
			lol.Size = Vector3.new(1.2, 0.5, 2)
			lol.Material = "Neon"
			lol.BrickColor = BrickColor.new("Really black")
distract1 = Instance.new("Sound", lol)
distract1.Volume = 3.2
distract1.Looped = false
distract2 = Instance.new("ReverbSoundEffect", distract1)
distracts = {"1056483428", "596784899", "1045560308", "514558366", "488472970", "200284099", "256861777", "145826610", "1177999394", "303741864"}
	distract1.SoundId = "rbxassetid://".. distracts[math.random(1,#distracts)]
			distract1:Play()
			distract = false
		elseif distract == false then
			distract1:Stop()
			lol:Destroy()
			distract = true
		end
	end
end)
