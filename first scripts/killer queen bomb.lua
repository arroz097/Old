---- [[ KILLA QUEEN!? ]] ----
-- by fo43123

local active = false
local waituntilbites = true
local on = true
local on2 = true
local waitformouse = false
local ff = Instance.new("ForceField", game.Players.LocalPlayer.Character)
ff.Visible = false
local bites = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
mse = game.Players.LocalPlayer:GetMouse()
bites.SoundId = "rbxassetid://756352322"
bites.Volume = 2
local clicko = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
clicko.SoundId = "rbxassetid://920181099"
clicko.Volume = 2
local theme = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
theme.SoundId = "rbxassetid://578106329"
theme.Volume = 2.5
theme.Looped = true
theme.PlaybackSpeed = 0.9
theme:Resume()
hh = game:GetService("Players").LocalPlayer.Character.Humanoid
if hh then
	hh.WalkSpeed = 36
	hh.JumpPower = 66
	hh.MaxHealth = "inf"
	hh.Health = "inf"
	wait()
end
print("[[ by the beautiful fo43123 ]]")
wait(.5)
print("here go!")

ts = game:GetService("Players").LocalPlayer.Character.Torso
ts.Touched:connect(function(luizaquelelindo)
	if on == true then
	if waituntilbites == true then
		waituntilbites = false
		waitformouse = true
	mds = luizaquelelindo.Parent:FindFirstChild("Torso")
	if mds then
		local rip = Instance.new("Sound", mds)
		rip.SoundId = "rbxassetid://919941001"
		rip.Volume = 2
		rip.PlaybackSpeed = 0.9
		active = true
        local killerq = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
        killerq.SoundId = "rbxassetid://1625220980"
        killerq.Volume = 5
        killerq.TimePosition = 3
		killerq:Play()
		wait(1.5)
		killerq:Stop()
		wait()
		if active == true then
			active = false
			mse.Button1Down:connect(function()
				if on2 == true then
					if waitformouse == true then
				clicko:Resume()
				wait(.5)
				bites:Resume()
				--print("BITES ZA DUSTO!")
				wait(1)
				local vish = Instance.new("Explosion", workspace)
				vish.BlastPressure = math.huge
				vish.BlastRadius = 1
				vish.Position = mds.Position
				rip:Resume()
				waitformouse = false
				wait(2)
				waituntilbites = true
				active = true
				end
				end
				end)
			end
		end
		end
	end
end)

mse.KeyDown:connect(function(k)
	if k == "f" then
		if on == true then
			on = false
			on2 = false
			print("Off")
		elseif on == false then
			on = true
			on2 = true
			print("On")
		end
	end
end)

