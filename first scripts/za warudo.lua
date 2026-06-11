wait(5)
local me = game.Players.LocalPlayer
local mychar = me.Character
local myhum = mychar.Humanoid
local ts = mychar['Torso']
local hed = mychar['Head']
local root = mychar['HumanoidRootPart']
local rtj = root['RootJoint']
local rs = ts['Right Shoulder']
local ls = ts['Left Shoulder']
local rh = ts['Right Hip']
local lh = ts['Left Hip']
local nk = ts['Neck']
local attack = false
local a = false
local mse = me:GetMouse()
local ss = Instance.new('Sound', hed)
local zawarudo = Instance.new('Sound', hed)
local zawarudoresume = Instance.new('Sound', hed)
zawarudoresume.SoundId = 'rbxassetid://864569342'
zawarudoresume.Volume = 5
zawarudo.SoundId = 'rbxassetid://1571597070'
zawarudo.Volume = 5
ss.SoundId = 'rbxassetid://180871958'
ss.Volume = 5
ss.PlaybackSpeed = 1.2
ss.Looped = true
mychar.Animate:Remove()
myhum:ClearAllChildren()
ss:Play()

k = coroutine.wrap(function()
while true do
if root.Velocity.Magnitude < 2 then
position = 'Idle'
elseif root.Velocity.Magnitude < 20 then
position = 'Walk'
elseif root.Velocity.y > 1 then
position = 'Jump'
elseif root.Velocity.y < -1 then
position = 'Fall'
end
wait()
end
end)
k()

coroutine.wrap(function()
while true do
if position == 'Idle' and attack == false then
	rs.C1 = CFrame.new(-0.0428359509, 0.588326991, -0.509807229, 0.588799357, -0.0401499867, 0.807281375, -0.190397277, -0.977549911, 0.0902499855, 0.785534322, -0.206843257, -0.583225191)
	ls.C1 = CFrame.new(0.5, 0.5, 0, 0.991892159, 0.081566304, -0.0974522978, 0.0643614605, 0.338797808, 0.938655257, 0.109579265, -0.937316954, 0.330801129)
	rh.C1 = CFrame.new(0.5, 1, -3.7252903e-09, 0.0848086998, 0.103227712, 0.991035581, 0, 0.994618952, -0.103600956, -0.996397257, 0.00878626201, 0.0843523368)
	lh.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
	rtj.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
	nk.C1 = CFrame.new(0, -0.5, 0, -0.972500026, -0.232902765, 0, 0, 0, 1, -0.232902765, 0.972500026, 0)
elseif position == 'Walk' and attack == false then
	rs.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, -0.294268787, 0.95572269, 0, -0.95572269, -0.294268787, 0)
	ls.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, -0.333246559, 0.942839742, 0, 0.942839742, 0.333246559, 0)
	rh.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0.172761783, 0.984963655, 0, -0.984963655, 0.172761783, 0)
	lh.C1 = CFrame.new( -0.5, 1, 0, 0, 0, -1, 0.507457793, 0.861676574, 0, 0.861676574, -0.507457793, 0)
	rtj.C1 = CFrame.new(0, 0.0922172815, 0, -1, 0, 0, 0, -0.344503701, 0.938784957, 0, 0.938784957, 0.344503701)
	nk.C1 = CFrame.new(0, -0.567326248, 0, -0.999997735, -0.00207113265, 0.000546226336, 0, 0.255013466, 0.966937482, -0.00214195088, 0.966935277, -0.2550129)
elseif position == 'Jump' and attack == false then
	rs.C1 = CFrame.new(-0.5, 0.49999997, 0, 0, 0, 0.99999994, -0.464491189, -0.885577738, 0, 0.885577738, -0.464491189, 0)
	ls.C1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0.49730283, -0.867577016, 0, -0.867577016, -0.49730283, -0)
	rh.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, -0.265624464, 0.964076579, 0, -0.964076579, -0.265624464, 0)
	lh.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, -0.286533624, 0.958070159, 0, 0.958070159, 0.286533624, 0)
	rtj.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -0.102395043, 0.994743824, 0, 0.994743824, 0.102395043)
	nk.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.20675537, 0.978392661, 0, 0.978392661, -0.20675537)
elseif position == 'Fall' and attack == false then
	rs.C1 = CFrame.new(0.0295466036, 0.849069834, 0.008186955, 0.064274244, 0.925833404, 0.372426271, 0.0259093754, 0.371523947, -0.928061783, -0.997595787, 0.0692997873, -0.000108341934)
	ls.C1 = CFrame.new(0.0280558169, 0.894593835, 0.0146100894, 0.0655434281, -0.959465206, -0.274099529, 0.0766537264, 0.278719693, -0.957308471, 0.994901001, 0.0417345464, 0.0918148607)
	rh.C1 = CFrame.new(0.5, 1, -1.49011612e-07, 0, 0, 1, 0.469272703, 0.883053303, 0, -0.883053303, 0.469272703, 0)
	lh.C1 = CFrame.new(-0.5, 0.99999994, 2.98023224e-08, 0, 0, -1, -0.280885607, 0.959741235, 0, 0.959741235, 0.280885607, 0)
	rtj.C1 = CFrame.new(0, 0, 0, -0.99914676, -0.0230428427, 0.0342760086, 0.0155997928, -0.978971183, -0.203401625, 0.0382421799, -0.202693403, 0.978495359)
	nk.C1 = CFrame.new(0, -0.5, 0, -0.982344806, 0.184621036, -0.0302279275, 0, 0.161578178, 0.986859918, 0.187079266, 0.969436705, -0.158725485)
	end
wait()
end
end)()

mse.KeyDown:connect(function(k)
	if k == 'f' then
		if a == false then
			a = true
		attack = true
		zawarudo.TimePosition = 1
		zawarudo:Play()
		ss:Pause()
		local cc = Instance.new('ColorCorrectionEffect', game.Lighting)
		--wait()
			rs.C1 = CFrame.new(0.0143741071, 0.916399121, 0, 0, 0.99799329, 0.0633193329, 0, 0.0633193329, -0.99799329, -1, 0, 0)
	ls.C1 = CFrame.new(0.0186577141, 0.942542553, 0, 0, -0.997214556, -0.0745863989, 0, 0.0745863989, -0.997214556, 1, 0, 0)
	rh.C1 = CFrame.new(0.5, 1, 7.4505806e-09, 0, 0, 1, 0.0430590846, 0.999072552, 0, -0.999072552, 0.0430590846, 0)
	lh.C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, -0.219528466, 0.975606084, 0, 0.975606084, 0.219528466, 0)
	rtj.C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0.223694056, 0.974659383, 0, 0.974659383, -0.223694056)
	nk.C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.0931677148, 0.995650411, 0, 0.995650411, -0.0931677148)
	wait()
	ts.Anchored = true
	wait(1.5)
	for i = 0, -5, -.5 do
		cc.Contrast = i
		wait()
	end
	wait(1.9)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA('Sound') then
			v:Pause()
		end
	end
	attack = false
	ts.Anchored = false
	wait()
	wait(9)
	zawarudoresume:Play()
	wait()
	for i = -5, 0, .5 do
		cc.Contrast = i
		wait()
	end
	wait(1)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA('Sound') then
			v:Resume()
		end
	end
	cc:Destroy()
	ss:Resume()
	wait(15)
	a = false
	end
	end
end)