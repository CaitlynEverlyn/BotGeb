-- completed

local sub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/CaitlynEverlyn/BotGeb/refs/heads/main/botgeb.lua'),true))()
warn(sub.Unit)
warn(sub.Player)


local ts = game:GetService("TweenService")
local rs = game:GetService("RunService")
local rep = game:GetService("ReplicatedStorage")
local uis = game:GetService("UserInputService")
local http = game:GetService("HttpService")
local VIM = game:GetService("VirtualInputManager")


local plrs = game:GetService("Players")
local plr = plrs.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local gui = plr.PlayerGui
local root = char:FindFirstChild("HumanoidRootPart")

local gameUI = gui:FindFirstChild("GameGui")
local screen = gameUI:FindFirstChild("Screen")

local middle = screen:FindFirstChild("Middle")
local TradePartner = middle:FindFirstChild("TradePartner")
local itemstrade1 = TradePartner:FindFirstChild("Items")
local itemstrade2 = itemstrade1:FindFirstChild("Items")
local itemstrade3 = itemstrade2:FindFirstChild("Items")
local itemstrade4 = itemstrade3:FindFirstChild("Items")
local scoolframtrade = itemstrade4:FindFirstChild("ScrollingFrame")
local noletuban11 = scoolframtrade:FindFirstChild("noletuban11")
local pos = scoolframtrade.AbsolutePosition
local size = scoolframtrade.AbsoluteSize

--VIM:SendMouseWheelEvent(pos.X+size.X/2,pos.Y+size.Y/2,0,gui)

------ Reduce Render --------------------------------------------------

local Reduce = function()
	for _, plr in ipairs(game.Players:GetPlayers()) do
		if plr ~= game.Players.LocalPlayer then
			if plr.Character then
				for _, v in ipairs(plr.Character:GetDescendants()) do
					if v:IsA("Accessory") or v:IsA("Clothing") then
						v:Destroy()
						task.wait()
					end
				end
			end
		end
	end
	
	for _, v in ipairs(game:GetDescendants()) do
		if v:IsA("Decal") or v:IsA("Texture") then
			v.Transparency = 1
			task.wait()
		elseif v:IsA("MeshPart") then
			v.TextureID = ""
			task.wait()
		elseif v:IsA("SpotLight") or v:IsA("PointLight") then
			v.Enabled = false
			task.wait()
		end
	end
	

	for _, obj in ipairs(game:GetDescendants()) do
		if obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
			obj.Enabled = false
			task.wait()
		end
	end

	local Lighting = game:GetService("Lighting")
	Lighting.LightingStyle = Enum.LightingStyle.ShadowMap
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e9
	Lighting.EnvironmentDiffuseScale = 0
	Lighting.EnvironmentSpecularScale = 0



	
end











---- main ------------------------------------------------

local task1 = function()
	
	local RE_NOTIFYCLIENT:ScreenGui = gui:FindFirstChild("Re:NotifyClient")
	local meno = nil

	while not meno do
		for _,child in ipairs(RE_NOTIFYCLIENT:GetChildren()) do
			if child:IsA("TextButton") then
				print(child)
				meno = child
				break
			end

		end
		task.wait()
	end

	for _,child in ipairs(RE_NOTIFYCLIENT:GetChildren()) do
		if child ~= meno and child:IsA("TextButton") then
			child.Visible = false
		end
	end
	task.wait(1)

	local acceptmeno : TextButton = meno:FindFirstChild("Options"):FindFirstChild("Accept")

	acceptmeno.Size = UDim2.new(0,500,0,500)
	task.wait(.1)
	local pos = acceptmeno.AbsolutePosition
	local size = acceptmeno.AbsoluteSize
	VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, true, gui, 0)
	task.wait(.05)
	VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2, 0, false, gui, 0)

	task.wait(1)
	local trade = nil

	while not trade do
		trade = middle:WaitForChild("Trade", 10)

		if not trade then
			continue
		end
	end


	local terms : ImageButton
	local Items_terms 
	local button 
	local Items_terms2 
	local accecpt : ImageButton = nil
	local Decline

	if trade then
		terms = trade:FindFirstChild("Terms")
		Items_terms = terms:FindFirstChild("Items")
		button = Items_terms:FindFirstChild("Buttons")
		Items_terms2 = button:FindFirstChild("Items")
		accecpt = Items_terms2:FindFirstChild("Accept")
		Decline = Items_terms2:FindFirstChild("Decline") 
	end


	if accecpt and terms.Visible == true then
		Decline:Destroy()

		accecpt.Size = UDim2.new(500,0,500,0)
		while task.wait(.2) do
			if accecpt:FindFirstChild("Title").Text == "Accept" then
				local pos = accecpt.AbsolutePosition
				local size = accecpt.AbsoluteSize
				VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, true, Items_terms2, 0)
				task.wait(.05)
				VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, false, Items_terms2, 0)
				break
			end
		end
	end
	task.wait(.5)
	return true
end

local task2 = function()

	local trade = middle:FindFirstChild("Trade")
	local itemstradess1 = trade:FindFirstChild("Items")
	local itemstradess2 = itemstradess1:FindFirstChild("Items")
	local give = itemstradess2:FindFirstChild("Receive")
	local itemstradess3 = give:FindFirstChild("Items")
	local scrolltrade = itemstradess3:FindFirstChild("ScrollingFrame")

	task.wait(10)

	local function again1()
		for _, unit in pairs(scrolltrade:GetChildren()) do
			if unit:IsA("Frame") then
				local title = unit:FindFirstChild("Frame")
					and unit.Frame:FindFirstChild("ImageLabel")
					and unit.Frame.ImageLabel:FindFirstChild("Title")

				if title and title.Text == sub.Unit then
					-- FOUND=accept
					local buttons = itemstradess2:FindFirstChild("Buttons")
					local buitem = buttons:FindFirstChild("Items")
					local uilist = buitem:FindFirstChild("UIListLayout")
					if uilist then uilist:Destroy() end
					
					local accept = buitem:FindFirstChild("Accept")

					accept.AnchorPoint = Vector2.new(0.5, 0.5)
					accept.Position = UDim2.new(0.5, 0, 0.5, 0)
					accept.Size = UDim2.new(0, 500, 0, 500)
					accept.ZIndex = 9

					task.wait(.1)
					local pos = accept.AbsolutePosition
					local size = accept.AbsoluteSize
	
					while task.wait(.05) do
						if give:FindFirstChild("Ready").Visible == true then
							VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, true, buitem, 0)
							task.wait(.05)
							VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, false, buitem, 0)
							break
						end
					end
					
					return true
				else
					return false -- if not
				end
			end
		end
	end


	-- AUTO LOOP
	while true do
		local ok = again1()

		if ok == true then
			break -- thoát
		else
			-- if not fouynd then break
			task.wait(.5)
			VIM:SendKeyEvent(true,Enum.KeyCode.Q,0,gui)
			task.wait(.1)
			VIM:SendKeyEvent(false,Enum.KeyCode.Q,0,gui)
			task.wait(2)
			break
		end
	end

	

	
end

while true do

	local ok1 = task1()
	if not ok1 then 
		task.wait(1)
		continue 
	end

	task.wait(.5)


	local ok2 = task2()


	if ok2 == true then
		print("return task1 --> task2")
		task.wait(1)

	else

		task.wait(1)
	end
end
