---- [[ BodyBuilder Explosion, lul ]] ----
-- by fo43123

l = Instance.new("Sound", game.workspace)
l.SoundId = "rbxassetid://491073044"
l.Volume = math.huge
l.Looped = true
l.PlaybackSpeed = 0.9
l:Resume()
wait(4)
nani = Instance.new("Part", game.workspace)
nani.Shape = "Block"
nani.CanCollide = false
nani.Material = "Neon"
nani.BrickColor = BrickColor.new("CGA brown")
nani.Anchored = true
nani.Transparency = 0.5
nani.Size = Vector3.new(0, 0, 0)
nani2 = Instance.new("Part", game.workspace)
nani2.Shape = "Block"
nani2.CanCollide = false
nani2.Material = "Neon"
nani2.Anchored = true
nani2.BrickColor = BrickColor.new("Bright yellow")
nani2.Transparency = 0.6
nani2.Size = Vector3.new(0, 0, 0)
w1 = Instance.new("Weld", workspace)
w1.Part0 = nani
w1.Part1 = nani2
nani.Touched:connect(function(wh)
	local hh = wh.Parent:FindFirstChild("Head")
	if hh then
		hh:Remove()
	end
end)
nani2.Touched:connect(function(wh)
	local hh = wh.Parent:FindFirstChild("Head")
	if hh then
		hh:Remove()
	end
end)
for i = 0, math.huge, 1 do
	nani.Size = Vector3.new(i, i, i)
	nani.CFrame = CFrame.fromOrientation(i, i, i)
	nani2.Size = Vector3.new(i, i, i)
	nani2.CFrame = CFrame.fromOrientation(-i, -i, -i)
wait()
end
