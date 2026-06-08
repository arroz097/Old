local s = setmetatable({},{__index = function(s,i) return game:GetService(i) end})
local swait = function(t) if t==0 or t==nil then s.RunService.Stepped:Wait() else for i = 0, t do s.RunService.Stepped:Wait() end end end
local find = function(parent, child) if parent and child then local p = parent:GetDescendants() for i=1,#p do if p[i].Name==(child) then return p[i] end end end end
local findClass = function(parent, child) if parent and child then local p = parent:GetDescendants() for i=1,#p do if p[i].ClassName==(child) or p[i]:IsA(child) then return p[i] end end end end
local I = function(instance, parent) if type(instance)=='string' or typeof(instance)=='string' then return Instance.new(instance,parent) end end
local weldBetween = function(a,b) local w = I('WeldConstraint',a) w.Part0=a w.Part1=b end
local weldManual = function(a,b,a0,a1) local w = I('ManualWeld',a) w.Part0=a w.Part1=b w.C0=a0 w.C1=a1 end
repeat s.RunService.Stepped:Wait() until s.Players.LocalPlayer or s.Players.LocalPlayer.Character
if find(s.Players.LocalPlayer.Character, 'UpperTorso') then error('r15gay body not supported') end
local player = s.Players.LocalPlayer
local character = player.Character
local humanoid = findClass(character, 'Humanoid') or find(character, 'Humanoid')
local head = find(character, 'Head')
local torso = find(character, 'Torso')
local root = find(character, 'HumanoidRootPart')
local rightArm = find(character, 'Right Arm')
local leftArm = find(character, 'Left Arm')
local rightLeg = find(character, 'Right Leg')
local leftLeg = find(character, 'Left Leg')
local m={r=math.rad,rand=math.random,pi=math.pi,floor=math.floor,huge=math.huge,s=math.sin,cos=math.cos}
local cf={n=CFrame.new,a=CFrame.Angles,euler=CFrame.fromEulerAnglesXYZ}
local c3={rgb=Color3.fromRGB,n=Color3.new,hsv=Color3.fromHSV}
local str={b=string.byte,len=string.len,find=string.find,low=string.lower,s=string.sub}
local v={t=Vector3.new,tw=Vector2.new}
local bin = I('Folder',character);bin.Name='bin'
local mouse = player:GetMouse()
local detectBin = function(child) if child.Name=='bin' then local bc=child:Clone() bc.Parent=character end end
character.ChildRemoved:connect(detectBin)