---- [[ OXE MAN ]] ----

local p = game:GetService("Players").LocalPlayer
local ch = p.Character
local a1 = ch["Right Arm"]
local a2 = ch["Left Arm"]
local a3 = ch["Right Leg"]
local a4 = ch["Left Leg"]
local a5 = ch.Torso
local a6 = ch.Head
local k2 = a5["Right Shoulder"]
local k3 = a5["Left Shoulder"]
local k4 = a5.Neck
local k5 = a5["Right Hip"]
local k6 = a5["Left Hip"]
local h = ch.Humanoid
local s = Instance.new("Sound", a6)
local thebestsong = 1081489340
local loud = math.huge
local kilosgramasdesuamae = 200
local t = true
local f = false
local waitpls = t
local ff = Instance.new("ForceField", ch)
local VOUMATARESSEMACONHEIRO = 1341650103
local jorginhomeemprestaa12qeuvoumataressemaconheiroojorginhomeemprestaa12pramimfazerumbarulhoDUNDUNDUNvoumataressemaconheiro = Instance.new("Sound", a5)
ff.Visible = f
local bd = ch["Body Colors"]
local at0 = Instance.new("Attachment", a5)
local at1 = Instance.new("Attachment", a6)
local tr = Instance.new("Trail", ch)
tr.Color = ColorSequence.new(Color3.new(0.0509804, 0.411765, 0.67451),Color3.new(0.0509804, 0.411765, 0.67451))
tr.Lifetime = 0.3
tr.MinLength = 0.1
tr.MaxLength = 5
tr.Attachment0 = at0
tr.Attachment1 = at1
--------------------
local at0 = Instance.new("Attachment", a3)
local at1 = Instance.new("Attachment", a4)
local tr = Instance.new("Trail", ch)
tr.Color = ColorSequence.new(Color3.new(0.0509804, 0.411765, 0.67451),Color3.new(0.0509804, 0.411765, 0.67451))
tr.Lifetime = 0.3
tr.MinLength = 0.1
tr.MaxLength = 5
tr.Attachment0 = at0
tr.Attachment1 = at1
--------------------
local at0 = Instance.new("Attachment", a1)
local at1 = Instance.new("Attachment", a2)
local tr = Instance.new("Trail", ch)
tr.Color = ColorSequence.new(Color3.new(0.0509804, 0.411765, 0.67451),Color3.new(0.0509804, 0.411765, 0.67451))
tr.Lifetime = 0.3
tr.MinLength = 0.1
tr.MaxLength = 5
tr.Attachment0 = at0
tr.Attachment1 = at1

function yesbaby()
	a5.Touched:connect(function(mdsq)
		if waitpls == t then
		waitpls = f
		local vdd = mdsq.Parent:FindFirstChild("Torso")
		if vdd then
			local mentira = Instance.new("Explosion", a5)
			mentira.Position = a5.Position
			mentira.DestroyJointRadiusPercent = math.huge
			mentira.BlastRadius = math.huge
			jorginhomeemprestaa12qeuvoumataressemaconheiroojorginhomeemprestaa12pramimfazerumbarulhoDUNDUNDUNvoumataressemaconheiro.TimePosition = 7.9
			jorginhomeemprestaa12qeuvoumataressemaconheiroojorginhomeemprestaa12pramimfazerumbarulhoDUNDUNDUNvoumataressemaconheiro:Play()
			s:Pause()
			wait(2)
			jorginhomeemprestaa12qeuvoumataressemaconheiroojorginhomeemprestaa12pramimfazerumbarulhoDUNDUNDUNvoumataressemaconheiro:Stop()
			s:Resume()
			wait(3)
			waitpls = t
			end
		end
	end)
end

if a6 then
	s.SoundId = "rbxassetid://"..thebestsong
	s.Volume = loud
	s.Looped = t
	jorginhomeemprestaa12qeuvoumataressemaconheiroojorginhomeemprestaa12pramimfazerumbarulhoDUNDUNDUNvoumataressemaconheiro.SoundId = "rbxassetid://"..VOUMATARESSEMACONHEIRO
	jorginhomeemprestaa12qeuvoumataressemaconheiroojorginhomeemprestaa12pramimfazerumbarulhoDUNDUNDUNvoumataressemaconheiro.Volume = loud
	bd.HeadColor = BrickColor.new("Bright blue")
    bd.LeftArmColor = BrickColor.new("Bright blue")
    bd.RightArmColor = BrickColor.new("Bright blue")
    bd.LeftLegColor = BrickColor.new("Bright blue")
    bd.RightLegColor = BrickColor.new("Bright blue")
    bd.TorsoColor = BrickColor.new("Bright blue")
    a1.Material = "SmoothPlastic"
    a2.Material = "SmoothPlastic"
    a3.Material = "SmoothPlastic"
    a4.Material = "SmoothPlastic"
    a5.Material = "SmoothPlastic"
    a6.Material = "SmoothPlastic"
	if h then
		yesbaby()
		p:ClearCharacterAppearance()
		s:Resume()
		h.WalkSpeed = kilosgramasdesuamae
		h.JumpPower = kilosgramasdesuamae
		h.MaxHealth = "inf"
		for i = 0, math.huge do
        k2.C0 = k2.C0:lerp(CFrame.Angles(i, i, i), 1.5)
        k3.C0 = k3.C0:lerp(CFrame.Angles(i, i, i), 1.5)
        k4.C0 = k4.C0:lerp(CFrame.Angles(i, i, i), 1.5)
        k5.C0 = k5.C0:lerp(CFrame.Angles(i, i, i), 1.5)
        k6.C0 = k6.C0:lerp(CFrame.Angles(i, i, i), 1.5)
        wait()
        end
	end
end
