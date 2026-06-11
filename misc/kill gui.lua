--- a random kill gui
-- by fo43123

local gui = Instance.new('ScreenGui', game.Players.LocalPlayer.PlayerGui)
local txt = Instance.new('TextBox', gui)
local kill = Instance.new('TextButton', gui)
local click = Instance.new('Sound', workspace.CurrentCamera)
click.SoundId = 'rbxassetid://452267918'
click.Volume = 2

-- Player name --

txt.BackgroundTransparency = 0.5
txt.BorderSizePixel = 2
txt.BorderColor3 = Color3.fromRGB(206, 206, 206)
txt.Position = UDim2.new(0.753, 0, 0.829, 0)
txt.Rotation = 2
txt.Size = UDim2.new(0, 200, 0, 50)
txt.Font = 'SourceSans'
txt.Text = 'Player name'
txt.TextSize = 20
txt.TextStrokeColor3 = Color3.fromRGB(122, 122, 122)
txt.TextStrokeTransparency = 0.8
txt.TextTransparency = 0
txt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
txt.TextColor3 = Color3.fromRGB(255, 255, 255)
txt.TextWrapped = true

-- Kill button --

kill.BackgroundTransparency = 0.4
kill.BorderColor3 = Color3.fromRGB(206, 206, 206)
kill.BorderSizePixel = 2
kill.Position = UDim2.new(0.837, 0, 0.778, 0)
kill.Rotation = 2
kill.Size = UDim2.new(0, 108, 0, 26)
kill.Font = 'SourceSans'
kill.Text = 'Kill'
kill.TextStrokeColor3 = Color3.fromRGB(122, 122, 122)
kill.TextStrokeTransparency = 0.5
kill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
kill.TextColor3 = Color3.fromRGB(255, 255, 255)
kill.TextSize = 22

--- Kill function ---
	
kill.MouseButton1Click:connect(function()
	local vdd = game.Players:FindFirstChild(txt.Text)
	click:Play()
	if vdd ~= nil then
		vdd.Character:BreakJoints()
	else
		warn(txt.Text, "isn't a valid player")
	end
end)