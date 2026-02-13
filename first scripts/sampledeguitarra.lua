k = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.RootJoint
k2 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
k2.SoundId = "rbxassetid://474631296" --474631296
k2.Volume = 5
k2.Looped = true
k2.PlaybackSpeed = 1
k2:Play()
m = game:GetService("Players").LocalPlayer.Character.Humanoid
m.MaxHealth = math.huge
m.Health = math.huge

while wait() do
for i = 1,750 do
	wait()
	game.Workspace.CurrentCamera.FieldOfView = math.random(60,80)
	k.C0 = k.C0:lerp(CFrame.fromOrientation(math.random(-5,145), math.random(-5,145), math.random(-5,145)),1)
end
end
