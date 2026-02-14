---- [[ A random Pistol script ]] ----
-- by fo43123

--[[ Variables / LocalPlayer ]]--

wait(.5)
local p = game:GetService('Players').fo43123; p:ClearCharacterAppearance()
local ch = p.Character
local hum = ch.Humanoid; hum.WalkSpeed = 20; hum.JumpPower = 35; hum.MaxHealth = 150; hum.Health = 150
local on = false
local active = true
local a = true
local it = Instance.new
local mse = p:GetMouse()

--[[ Gun handle / Weld ]]--

local tg = it('Tool', p.Backpack); tg.Name = 'Pistol'; tg.CanBeDropped = false;
local th = it('Part', tg); th.Name = 'Handle'; th.BrickColor = BrickColor.new('Really black'); th.Material = 'Pebble'; th.Size = Vector3.new(0.61, 0.61, 2);
local th2 = it('Part', tg); th2.Size = Vector3.new(0.17, 0.18, 0.05); th2.Name = 'hmm'; th2.Transparency = 1;
local w1 = it('Weld', th2); w1.Part0 = th; w1.Part1 = th2; w1.C1 = CFrame.new(0, -.6, -1.1);
local spm = it('SpecialMesh', th); spm.MeshType = 'FileMesh'; 
local thd = it("Part", ch); thd.Name = 'PistolDec'; thd.BrickColor = BrickColor.new('Really black'); thd.Material = 'Pebble'; thd.Size = Vector3.new(0.61, 0.61, 2);
local spm3 = it('SpecialMesh', thd); spm3.MeshType = 'FileMesh'; spm3.MeshId = 'rbxassetid://470078120'; spm3.Scale = Vector3.new(0.1, 0.1, 0.1)
local w3 = it('Weld', ch); w3.Name = 'PistolDecWeld'; w3.Part0 = ch.Torso; w3.Part1 = thd
w3.C0 = CFrame.new(1.035, -0.951, 0.053)
spm.MeshId = 'rbxassetid://470078120';
spm.Scale = Vector3.new(0.1, 0.1, 0.1)
tg.GripForward = Vector3.new(0, 0, 1)
tg.GripPos = Vector3.new(0, -0.3, -0.05)
tg.GripRight = Vector3.new(-1, 0, 0)
tg.GripUp = Vector3.new(0, 1, 0)
print('Pistol Loaded.')

--[[ Customization ]]--

local eq = it('Sound', ch['Right Arm'])
local gsh = it('Sound', ch['Right Arm'])
local gpt = it('ParticleEmitter', th2)
local lg = it('PointLight', ch['Right Arm']); lg.Range = 5; lg.Brightness = 9; lg.Color = BrickColor.new('Bright yellow').Color; lg.Enabled = false;
local st = it('Sound', ch.Head); st.SoundId = 'rbxassetid://342153137'; st.Volume = 2.5; st.Looped = true; st:Resume();
local sh = it('Shirt', ch); local pnt = it("Pants", ch); sh.ShirtTemplate = 'rbxassetid://102716091'; pnt.PantsTemplate = 'rbxassetid://102712920';
local htm = it('Part', ch); htm.Name = 'Handle'
local htm2 = it('Part', ch); htm2.Name = 'Handle2'
local w1 = it('Weld', ch); w1.Name = 'Hat weld';
local w2 = it('Weld', ch); w2.Name = 'Hat weld2';
local spm2 = it('SpecialMesh', htm); spm2.MeshType = 'FileMesh'; spm2.MeshId = 'rbxassetid://13640868'; spm2.TextureId = 'rbxassetid://18987684';
local spm3 = it('SpecialMesh', htm2); spm3.MeshType = 'FileMesh'; spm3.MeshId = 'rbxassetid://1577360'; spm3.TextureId = 'rbxassetid://1577349';
local at0 = it('Attachment', thd); at0.Position = Vector3.new(0, 0.513, -0.385)
local at1 = it('Attachment', thd); at1.Position = Vector3.new(0, 0.513, 0.601)
local tr = it('Trail', thd); tr.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0)); tr.FaceCamera = true
tr.Attachment0 = at0
tr.Attachment1 = at1
tr.Lifetime = .15
tr.Transparency = NumberSequence.new(.8)
spm2.Scale = Vector3.new(0.9, 0.9, 0.9)
w1.Part0 = ch.Head
w1.Part1 = htm
w1.C0 = CFrame.new(0, 0.68, 0.02)
w2.Part0 = ch.Head
w2.Part1 = htm2
w2.C0 = CFrame.new(0, 0.183, -0.132)
ch.Torso.BrickColor = BrickColor.new('Really black')
ch['Right Arm'].BrickColor = BrickColor.new('Really black')
ch['Left Arm'].BrickColor = BrickColor.new('Really black')
ch['Right Leg'].BrickColor = BrickColor.new('Really black')
ch['Left Leg'].BrickColor = BrickColor.new('Really black')
gpt.Texture = 'rbxassetid://461242617'
gpt.Size = NumberSequence.new(1,0)
gpt.Rate = 20
gpt.Lifetime = NumberRange.new(.1)
gpt.Enabled = false
eq.SoundId = 'rbxassetid://169799883'
eq.Volume = 1
gsh.SoundId = 'rbxassetid://169799921'
gsh.Volume = 1
print('---[[ Keys ]]---')
print('M toggle song;')
print('H fbi open up!')
print('While pistol equipped, Click to shoot')

--[[ Functions / Damage ]]--

mse.KeyDown:connect(function(k)
	if k == 'm' then
		if st.IsPlaying == true then
			a = true
			st:Pause()
		elseif st.IsPaused == true then
			st:Resume()
			a = false
		end
	end
end)

mse.KeyDown:connect(function(k)
	if k == 'h' then
		if active == true then
			print('FBI OPEN UP!')
			local fbi = it('Sound', ch.Head); fbi.SoundId = 'rbxassetid://1759712659'; fbi.Volume = 5; fbi:Play()
			active = false
			wait(3)
			active = true
		end
	end
end)

tg.Equipped:connect(function()
	on = true
	thd.Transparency = 1
	tr.Enabled = false
		eq:Play()
	hum.WalkSpeed = 25
	hum.MaxHealth = 350
	hum.Health = 350
	mse.Button1Down:connect(function()
		if on == true then
			on = false
			gpt.Enabled = true
			lg.Enabled = true
			gsh:Play()
			if mse.Target.Parent:FindFirstChildOfClass('Humanoid') then
				mse.Target.Parent:FindFirstChildOfClass('Humanoid'):TakeDamage(math.random(14, 19))
			end
			wait(.1)
			gpt.Enabled = false
			lg.Enabled = false
			wait(.065)
			on = true
		end
	end)
end)

tg.Unequipped:connect(function()
	on = false
	thd.Transparency = 0
	tr.Enabled = true
		hum.WalkSpeed = 20
	    hum.MaxHealth = 150
	hum.Health = 150
end)

local bl = Instance.new('BlurEffect', workspace.CurrentCamera); bl.Size = 0
while wait() do
	bl.Size = gsh.PlaybackLoudness/100
end
