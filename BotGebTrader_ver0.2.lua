math.randomseed(os.time())

task.wait(math.random(10,20))

local sub = loadstring(game:HttpGet(('https://raw.githubusercontent.com/CaitlynEverlyn/BotGeb/refs/heads/main/botgeb.lua'),true))()



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

local gameUI = gui:FindFirstChild("GameGui") or gui:FindFirstChild("MobileGui2")
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







if not uis.TouchEnabled and uis.KeyboardEnabled and uis.MouseEnabled then
	print("Computer device")
	local task1 = function()
		local left = screen:FindFirstChild("Left")
		local sidebar = left:FindFirstChild("Sidebar")
		local items1 = sidebar:FindFirstChild("Items")
		local trade = items1:FindFirstChild("Trade")
		local items2 = trade:FindFirstChild("Items")
		local buttonleft = items2:FindFirstChild("Button")


		if buttonleft then
			firesignal(buttonleft.MouseButton1Click)
		end
		task.wait(1)
		return true
	end



	local task2 = function()
		local function findtar()
			local target = nil

			for v,nole in pairs(scoolframtrade:GetChildren()) do
				if nole:IsA("Frame") then
					if nole.Name:sub(1,#sub.AutoTrade.Player) == sub.AutoTrade.Player then
						target = nole

					end
				end
			end

			return target
		end
		local function again1()
			local target = findtar()

			for v,another in pairs(target.Parent:GetChildren()) do
				if another:IsA("Frame") then
					if another.Name ~= target.Name then
						another.Visible = false
					end
				end
			end


			local buttontar : ImageButton = target:FindFirstChild("Button")


			task.wait(.2)

			firesignal(buttontar.MouseButton1Click)
		end
		again1()
		task.wait(1)
		local trade = nil

		while not trade do
			trade = middle:WaitForChild("Trade",10)
			if not trade then
				task1()
				task.wait(.1)
				task1()
				task.wait(.1)
				again1()
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

			while task.wait(.2) do
				if accecpt:FindFirstChild("Title").Text == "Accept" then

					firesignal(accecpt.MouseButton1Click)
					break
				end
			end
		end
		task.wait(.5)
		return true
	end

	local task3 = function(a :number)
		local number = a or 1
		

		local trade = middle:FindFirstChild("Trade")
		local itemstradess1 = trade:FindFirstChild("Items")
		local itemstradess2 = itemstradess1:FindFirstChild("Items")
		local give = itemstradess2:FindFirstChild("Give")
		local itemstradess3 = give:FindFirstChild("Items")
		local scrolltrade = itemstradess3:FindFirstChild("ScrollingFrame")
		
		local unit = scrolltrade:FindFirstChild("unit_more")

		local tradewith : TextLabel
		if trade:FindFirstChild("Items"):FindFirstChild("Who"):FindFirstChild("Items"):FindFirstChild("DN") then
			tradewith = trade:FindFirstChild("Items"):FindFirstChild("Who"):FindFirstChild("Items"):FindFirstChild("DN")
		end

		if tradewith.Text:sub(1,#sub.AutoTrade.Player) ~= sub.AutoTrade.Player then
			for a = 1,5 do
				VIM:SendKeyEvent(true,Enum.KeyCode.Q,0,gui)
				task.wait(.05)
				VIM:SendKeyEvent(false,Enum.KeyCode.Q,0,gui)
				task.wait()
			end

		end
		


		local function again1()
			local Receive = itemstradess2:FindFirstChild("Receive")
			local itemstradess33 = Receive:FindFirstChild("Items")
			local scrolltrades = itemstradess33:FindFirstChild("ScrollingFrame")
			for _, child in ipairs(scrolltrades:GetChildren()) do
				if child:IsA("Frame") then
					local title = child:FindFirstChild("Frame")
						and child.Frame:FindFirstChild("ImageLabel")
						and child.Frame.ImageLabel:FindFirstChild("Title")

					if title and title.Text == sub.AutoTrade.Key then

						return true
					end
				end
			end
			
		end



		local start = tick() 

		while task.wait(.05) do

			if again1() == true then
				break
			end


			if tick() - start >= 15 then
				warn("ticktac")
				VIM:SendKeyEvent(true, Enum.KeyCode.Q, false, gui)
				task.wait(.1)
				VIM:SendKeyEvent(false, Enum.KeyCode.Q, false, gui)
				task.wait(1)
				return false
			end
		end


		
		local function delta()


			task.wait(.3)

			if unit:IsA("Frame") and unit.Name == "unit_more" and unit:FindFirstChild("TextButton") then

				unit.Parent = itemstradess3
				local button = unit:FindFirstChild("TextButton")

				firesignal(button.MouseButton1Click)

				unit.Parent = scrolltrade


				local inventorytrade = trade:FindFirstChild("Inventory")
				local inventorytrade2 = inventorytrade:FindFirstChild("Inventory")
				local inventoryframe1 = inventorytrade2:FindFirstChild("Frame")
				local inventory_items1 = inventoryframe1:FindFirstChild("Items")
				local inventory_items2 = inventory_items1:FindFirstChild("Items")
				local inventory_Scoll = inventory_items2:FindFirstChild("ScrollingFrame")
				print(inventory_Scoll)

				for v,remove in pairs(inventory_Scoll:GetChildren()) do
					if remove:IsA("Frame") then
						if remove:FindFirstChild("Frame"):FindFirstChild("ImageLabel"):FindFirstChild("Title").Text ~= sub.Unit then
							remove.Visible = false
						end
					end
				end

				for v,mob in pairs(inventory_Scoll:GetChildren()) do
					if mob:IsA("Frame") then
						print(mob)
						local mob_Frame = mob:FindFirstChild("Frame")
						local mob_Image = mob_Frame:FindFirstChild("ImageLabel")
						local mob_Title = mob_Image:FindFirstChild("Title")
						print("title: ".. mob_Title.Text)


						if mob_Title.Text == sub.AutoTrade.Unit then
							local grid = mob.Parent:FindFirstChild("UIGridLayout")
							grid.Parent = nil
							mob.Parent = inventory_Scoll.Parent

							local button = mob:FindFirstChild("TextButton")

							local posbu = button.AbsolutePosition
							local sizebu = button.AbsoluteSize

							task.wait()
							firesignal(button.MouseButton1Click)

							while trade:FindFirstChild("AmountAdd").Visible == false do
								if tonumber(mob_Title.Parent:FindFirstChild("Count").Text:match("%d+")) ~= nil then
									task.wait(.05)
								else
									break
								end	
							end

							if trade:FindFirstChild("AmountAdd").Visible == true then

								local AmountAdd = trade:FindFirstChild("AmountAdd")
								local amFrame = AmountAdd:FindFirstChild("Frame")
								local amFrame2 = amFrame:FindFirstChild("Frame")
								local amActions = amFrame2:FindFirstChild("Actions")
								local amItems = amActions:FindFirstChild("Items")
								local uilist = amItems:FindFirstChild("UIListLayout")
								if uilist then uilist:Destroy() end
								local cancel = amActions:FindFirstChild("Cancel")
								if cancel then cancel.Visible = false end
								task.wait(.1)
								local add : ImageLabel = amItems:FindFirstChild("Add")

								local posam = button.AbsolutePosition
								local sizeam = button.AbsoluteSize
								task.wait(.1)
								firesignal(add.MouseButton1Click)

							else

								local buttons = itemstradess2:FindFirstChild("Buttons")
								local buitem = buttons:FindFirstChild("Items")
								local uilist = buitem:FindFirstChild("UIListLayout")
								if uilist then uilist:Destroy() end

								local accept = buitem:FindFirstChild("Accept")


								task.wait(.5)
								firesignal(accept.MouseButton1Click)
							end


							grid.Parent = inventory_Scoll

							break
						end
					end
			

				end

				for v,remove in pairs(inventory_Scoll:GetChildren()) do
					if remove:IsA("Frame") then
						if remove:FindFirstChild("Frame"):FindFirstChild("ImageLabel"):FindFirstChild("Title").Text ~= sub.AutoTrade.Unit then
							remove.Visible = true
						end
					end
				end

				task.wait()
			end
		end
		
		for o = 1,number do
			delta()
		end
		task.wait(25)
		plr:Kick()
		
		return true

	end

	local task4 = function()

		VIM:SendKeyEvent(true,Enum.KeyCode.E,0,gui)
		task.wait(.05)
		VIM:SendKeyEvent(false,Enum.KeyCode.E,0,gui)
		task.wait(.5)

		local inventory = middle:FindFirstChild("Inventory")
		local invPanel = inventory:FindFirstChild("Inventory")
		local invFrame = invPanel:FindFirstChild("Frame")
		local invItems = invFrame:FindFirstChild("Items")
		local invItems2 = invItems:FindFirstChild("Items")
		local invscfr = invItems2:FindFirstChild("ScrollingFrame")

		task.wait(1)

		local function Scan()
			local result = {}
			local children = invscfr:GetChildren()
			for i, child in children do
				if child:IsA("Frame") and #child:GetChildren() > 0 then

					local subChildren = child:GetChildren()
					for j, ch in subChildren do
						if ch:IsA("Frame") and ch.Name:match("^unit_") then
							table.insert(result, ch)
						end
					end
				end
			end
			return result
		end
		
		local tar

		for _,num in ipairs(Scan()) do
			local igma = num:FindFirstChild("Frame"):FindFirstChild("ImageLabel")

			if not igma or not igma.Parent then
				continue
			end
			if igma:FindFirstChild("Title").Text == sub.AutoTrade.Unit then
				local count :TextLabel = igma:FindFirstChild("Count")
					local x = tonumber(count.Text:match("%d+"))
					tar = x
				break
			else
				print("notfound")
			end

		end
		return tar
		
	end
	
	local number = task4()

	local DK1 = true
	
	while DK1 do
		VIM:SendKeyEvent(true,Enum.KeyCode.Q,0,gui)
		task.wait(.05)
		VIM:SendKeyEvent(false,Enum.KeyCode.Q,0,gui)
		task.wait(.2)
		if task1() == true then
			if task2() == true then
				task.wait(.3)
				if task3(number) == true then
					print("done")
					DK1 = false

					break
				else continue
				end

			end
		end

	end


end


