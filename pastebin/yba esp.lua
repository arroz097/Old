--esp
local i = workspace:WaitForChild('Items_Spawns')
local source = i:WaitForChild('Items')

local mesh = {
	coin = '3583727108';
	rokakaka = '3497428510';
	arrow = '4496695972';
	steelball = '5291254518';
	stonemask = '4551120971';
	scroll = '60791940';
	glove = '180620778';
	ribcage = '5249254947';
	diary = '5675321032';
	headband = '11124978';
	diamond = '875644059'
}

source.ChildAdded:connect(function(child)
	local gui = Instance.new('BillboardGui', child)
	gui.AlwaysOnTop = true
	gui.Size = UDim2.new(50,0,50,0)
	--gui.MaxDistance = 'inf'
	local text = Instance.new('TextLabel', gui)
	text.Size = UDim2.new(1,0,1,0)
	text.Font = 'Legacy'
	text.BackgroundTransparency = 1
	text.TextSize = 18
	text.TextColor3 = Color3.fromRGB(255, 0, 0)
	if child:FindFirstChildOfClass('MeshPart') then
		local meshp = child:FindFirstChildOfClass('MeshPart')
		if string.find(meshp.MeshId, mesh.coin) then
			text.Text = 'Coin'
		elseif string.find(meshp.MeshId, mesh.rokakaka) then
			if string.find(tostring(meshp.Material), 'ForceField') then
				text.Text = 'Pure Rokakaka'
			else
				text.Text = 'Rokakaka'
			end
		elseif string.find(meshp.MeshId, mesh.arrow) then
			if string.find(tostring(meshp.Material), 'Neon') then
				text.Text = 'Lucky Arrow'
			else
				text.Text = 'Arrow'
			end
		elseif string.find(meshp.MeshId, mesh.steelball) then
			text.Text = 'Steel Ball'
		elseif string.find(meshp.MeshId, mesh.stonemask) then
			text.Text = 'Stone Mask'
		elseif string.find(meshp.MeshId, mesh.ribcage) then
			text.Text = 'Rib Cage'
		elseif string.find(meshp.MeshId, mesh.diamond) then
			text.Text = 'Diamond'
		elseif string.find(meshp.MeshId, mesh.diary) then
			text.Text = 'Diary'
		end
	elseif child:FindFirstChildOfClass('Part') then
		local meshsp = child:FindFirstChildOfClass('Part'):FindFirstChildOfClass('SpecialMesh')
		if string.find(meshsp.MeshId, mesh.glove) then
			text.Text = 'Glove'
		elseif string.find(meshsp.MeshId, mesh.headband) then
			text.Text = 'Headband'
		elseif string.find(meshsp.MeshId, mesh.scroll)  then
			text.Text = 'Scroll'
		end
	end
end)

for _,n in pairs(source:GetChildren()) do
	local gui = Instance.new('BillboardGui', n)
	gui.AlwaysOnTop = true
	gui.Size = UDim2.new(50,0,50,0)
	--gui.MaxDistance = 'inf'
	local text = Instance.new('TextLabel', gui)
	text.Size = UDim2.new(1,0,1,0)
	text.Font = 'Legacy'
	text.BackgroundTransparency = 1
	text.TextSize = 18
	text.TextColor3 = Color3.fromRGB(255, 0, 0)
	if n:FindFirstChildOfClass('MeshPart') then
		local meshp = n:FindFirstChildOfClass('MeshPart')
		if string.find(meshp.MeshId, mesh.coin) then
			text.Text = 'Coin'
		elseif string.find(meshp.MeshId, mesh.rokakaka) then
			if string.find(tostring(meshp.Material), 'ForceField') then
				text.Text = 'Pure Rokakaka'
			else
				text.Text = 'Rokakaka'
			end
		elseif string.find(meshp.MeshId, mesh.arrow) then
			if string.find(tostring(meshp.Material), 'Neon') then
				text.Text = 'Lucky Arrow'
			else
				text.Text = 'Arrow'
			end
		elseif string.find(meshp.MeshId, mesh.arrow) and meshp.Material == 'Neon' then
			text.Text = 'Lucky Arrow'
		elseif string.find(meshp.MeshId, mesh.steelball) then
			text.Text = 'Steel Ball'
		elseif string.find(meshp.MeshId, mesh.stonemask) then
			text.Text = 'Stone Mask'
		elseif string.find(meshp.MeshId, mesh.ribcage) then
			text.Text = 'Rib Cage'
		elseif string.find(meshp.MeshId, mesh.diamond) then
			text.Text = 'Diamond'
		elseif string.find(meshp.MeshId, mesh.diary) then
			text.Text = 'Diary'
		end
	elseif n:FindFirstChildOfClass('Part') then
		local meshsp = n:FindFirstChildOfClass('Part'):FindFirstChildOfClass('SpecialMesh')
		if string.find(meshsp.MeshId, mesh.glove) then
			text.Text = 'Glove'
		elseif string.find(meshsp.MeshId, mesh.headband) then
			text.Text = 'Headband'
		elseif string.find(meshsp.MeshId, mesh.scroll)  then
			text.Text = 'Scroll'
		end
	end
end
