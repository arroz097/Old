--- [[ Dance Till ur dead remake. ]] ---
--- by fo43123, k

lg = game:GetService("Lighting")
lg.ClockTime = 0
lg.Brightness = 0.4
v = Vector3.new
 d1 = Instance.new("Part", workspace)
d2 = Instance.new("Part", workspace)
 d3 = Instance.new("Part", workspace)
d4 = Instance.new("Part", workspace)
 d5 = Instance.new("Part", workspace)
d6 = Instance.new("Part", workspace)
 d7 = Instance.new("Part", workspace)
d8 = Instance.new("Part", workspace)
 d1.Material = "Neon"
  d2.Material = "Neon"
   d3.Material = "Neon"
  d4.Material = "Neon"
 d5.Material = "Neon"
d6.Material = "Neon"
 d7.Material = "Neon"
  d8.Material = "Neon"
d1.Size = v(1.96, 2.33, 2)
d1.Position = v(85.89, 1.165, 10.75)
d1.Anchored = true
d2.Size = v(1.96, 2.33, 2)
d2.Position = v(85.89, 1.165, 13.374)
d2.Anchored = true
d3.Size = v(1.96, 2.33, 2)
d3.Position = v(85.89, 1.165, 15.952)
d3.Anchored = true
d4.Size = v(1.96, 2.33, 2)
d4.Position = v(85.89, 1.165, 18.577)
d4.Anchored = true
d5.Size = v(1.96, 2.33, 2)
d5.Position = v(85.89, 1.165, 23.645)
d5.Anchored = true
d6.Size = v(1.96, 2.33, 2)
d6.Position = v(85.89, 1.165, 28.847)
d6.Anchored = true
d7.Size = v(1.96, 2.33, 2)
d7.Position = v(85.89, 1.165, 21.02)
d7.Anchored = true
d8.Size = v(1.96, 2.33, 2)
d8.Position = v(85.89, 1.165, 26.223)
d8.Anchored = true
dancetillurdeadrip = Instance.new("Sound", d7)
dancetillurdeadrip.SoundId = "rbxassetid://949399870" -- 650896988
dancetillurdeadrip.Volume = math.huge
dancetillurdeadrip.Looped = true
active = false -- true enables the distortion / false disable distortion
print("lets party baby!!!")
if active == false then
	warn("No distortion effect for you ;'(")
else active = true do
	ds = Instance.new("DistortionSoundEffect", dancetillurdeadrip) -- distortion effect dont work on void sb	
	ds.Level = 0.95
	warn("Distortion effect for you ;')")
	end
end
wait()

function party()
	while wait() do
		d1.BrickColor = BrickColor.Random()
		d1.Size = v(1.96, math.random(2.33, 25), 2)
		d2.BrickColor = BrickColor.Random()
		d2.Size = v(1.96, math.random(2.33, 25), 2)
		d3.BrickColor = BrickColor.Random()
		d3.Size = v(1.96, math.random(2.33, 25), 2)
		d4.BrickColor = BrickColor.Random()
		d4.Size = v(1.96, math.random(2.33, 25), 2)
		d5.BrickColor = BrickColor.Random()
		d5.Size = v(1.96, math.random(2.33, 25), 2)
		d6.BrickColor = BrickColor.Random()
		d6.Size = v(1.96, math.random(2.33, 25), 2)
		d7.BrickColor = BrickColor.Random()
		d7.Size = v(1.96, math.random(2.33, 25), 2)
		d8.BrickColor = BrickColor.Random()
		d8.Size = v(1.96, math.random(2.33, 25), 2)
	end
end

if d1 then -- top 10 best if then, lol
	if d2 then
		if d3 then
			if d4 then
				if d5 then
					if d6 then
						if d7 then
							if d8 then
								dancetillurdeadrip:Resume()
								party()
								wait()
							end
						end
					end
				end
			end
		end
	end
end
