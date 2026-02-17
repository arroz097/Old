local me = game:GetService('Players').LocalPlayer; me.Character.Humanoid.WalkSpeed = 30
local char = me.Character
local ra = char['Right Arm']
local la = char['Left Arm']
local rl = char['Right Leg']
local ll = char['Left Leg']
local hd = char['Head']
local ts = char['Torso']
local root = char['HumanoidRootPart']
local k2 = Instance.new('Sound', char.Head); k2.SoundId = 'rbxassetid://967984830'; k2.Volume = 5; k2.Looped = true; k2:Play()
local rad = math.rad

-- right arm
local rweld = Instance.new('Weld', ra)
rweld.Part0 = root
rweld.Part1 = ra
rweld.C0 = CFrame.new(1.99651301, 0.495630056, 0) * CFrame.Angles(0, 0, rad(90))
-- left arm
local lweld = Instance.new('Weld', la)
lweld.Part0 = root
lweld.Part1 = la
lweld.C0 = CFrame.new(-1.98387718, 0.51251018, 0) * CFrame.Angles(0, 0, rad(-90))
-- right leg
local rlweld = Instance.new('Weld', rl)
rlweld.Part0 = root
rlweld.Part1 = rl
rlweld.C0 = CFrame.new(1.5, -2, 0)
-- left leg
local llweld = Instance.new('Weld', ll)
llweld.Part0 = root
llweld.Part1 = ll
llweld.C0 = CFrame.new(-1.5, -2, 0)
-- head
local hdweld = Instance.new('Weld', hd)
hdweld.Part0 = root
hdweld.Part1 = hd
hdweld.C0 = CFrame.new(0, 1.5, 0)
-- torso
local tsweld = Instance.new('Weld', ts)
tsweld.Part0 = root
tsweld.Part1 = ts
tsweld.C0 = CFrame.new(0, 0, 0)

while true do
for i = 1, 6.5 do
	tsweld.C0 = tsweld.C0:lerp(CFrame.new(0, -1, 0), .7)
	rweld.C0 = rweld.C0:lerp(CFrame.new(1.99651301, -.5, 0) * CFrame.Angles(0, 0, rad(90)), .7)
	lweld.C0 = lweld.C0:lerp(CFrame.new(-1.98387718, -.5, 0) * CFrame.Angles(0, 0, rad(-90)), .7)
	hdweld.C0 = hdweld.C0:lerp(CFrame.new(0, .5, 0), .7)
	wait()
end
for i = 1, 6.5 do
	tsweld.C0 = tsweld.C0:lerp(CFrame.new(0, 0, 0), .7)
	rweld.C0 = rweld.C0:lerp(CFrame.new(1.99651301, 0.495630056, 0) * CFrame.Angles(0, 0, rad(90)), .7)
	lweld.C0 = lweld.C0:lerp(CFrame.new(-1.98387718, 0.51251018, 0) * CFrame.Angles(0, 0, rad(-90)), .7)
	hdweld.C0 = hdweld.C0:lerp(CFrame.new(0, 1.5, 0), .7)
	wait()
end
end
