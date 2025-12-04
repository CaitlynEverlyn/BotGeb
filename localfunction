task.wait(1)

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




if uis.TouchEnabled and not uis.KeyboardEnabled and not uis.MouseEnabled then
	-- Converted version: all VIM:SendMouseButtonEvent → VIM:SendTouch
	-- Coordinates kept exactly the same

	print("Computer device")
	local task1 = function()
		local left = screen:FindFirstChild("Left")
		local sidebar = left:FindFirstChild("Sidebar")
		local items1 = sidebar:FindFirstChild("Items")
		local trade = items1:FindFirstChild("Trade")
		local items2 = trade:FindFirstChild("Items")
		local buttonleft = items2:FindFirstChild("Button")

		if buttonleft then
			local pos = buttonleft.AbsolutePosition
			local size = buttonleft.AbsoluteSize
			VIM:SendTouch(pos.X+size.X, pos.Y+size.Y, true)
			task.wait()
			VIM:SendTouch(pos.X+size.X, pos.Y+size.Y, false)
		end
		task.wait(1)
		return true
	end

	local task2 = function()
		local function findtar()
			local target = nil

			for v,nole in pairs(scoolframtrade:GetChildren()) do
				if nole:IsA("Frame") then
					if nole.Name:sub(1,#sub.Player) == sub.Player then
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

			target.Size = UDim2.new(1,0,0,500)
			local buttontar : ImageButton = target:FindFirstChild("Button")
			local postar = buttontar.AbsolutePosition
			local size1 = buttontar.AbsoluteSize

			task.wait(.2)
			VIM:SendTouch(postar.X+size1.X/2, postar.Y+size1.Y/2 , true)
			task.wait()
			VIM:SendTouch(postar.X+size1.X/2, postar.Y+size1.Y/2 , false)
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
			accecpt.Size = UDim2.new(500,0,500,0)
			while task.wait(.2) do
				if accecpt:FindFirstChild("Title").Text == "Accept" then
					local pos = accecpt.AbsolutePosition
					local size = accecpt.AbsoluteSize
					VIM:SendTouch(pos.X+size.X/2, pos.Y+size.Y/2, true)
					task.wait(.05)
					VIM:SendTouch(pos.X+size.X/2, pos.Y+size.Y/2, false)
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

		if tradewith.Text:sub(1,#sub.Player) ~= sub.Player then
			for a = 1,5 do
				VIM:SendKeyEvent(true,Enum.KeyCode.Q,0,gui)
				task.wait(.05)
				VIM:SendKeyEvent(false,Enum.KeyCode.Q,0,gui)
				task.wait()
			end

		end

		local function delta()


			task.wait(.3)

			if unit:IsA("Frame") and unit.Name == "unit_more" and unit:FindFirstChild("TextButton") then

				unit.Parent = itemstradess3
				local button = unit:FindFirstChild("TextButton")
				local pos = unit.AbsolutePosition
				local size = unit.AbsoluteSize
				VIM:SendTouch(pos.X+size.X/2, pos.Y+size.Y/2 , true)
				task.wait(.05)
				VIM:SendTouch(pos.X+size.X/2, pos.Y+size.Y/2 , false)

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
						local mob_Frame = mob:FindFirstChild("Frame")
						local mob_Image = mob_Frame:FindFirstChild("ImageLabel")
						local mob_Title = mob_Image:FindFirstChild("Title")

						if mob_Title.Text == sub.Unit then
							local grid = mob.Parent:FindFirstChild("UIGridLayout")
							grid.Parent = nil
							mob.Parent = inventory_Scoll.Parent

							local button = mob:FindFirstChild("TextButton")

							local posbu = button.AbsolutePosition
							local sizebu = button.AbsoluteSize

							for z = 1,5 do
								--VIM:SendMouseWheelEvent(posbu.X+sizebu.X/2,posbu.Y+sizebu.Y/2,0,gui)
								task.wait(.05)
							end
							task.wait()
							VIM:SendTouch(posbu.X+sizebu.X/2, posbu.Y+sizebu.Y/2, true)
							task.wait(.05)
							VIM:SendTouch(posbu.X+sizebu.X/2, posbu.Y+sizebu.Y/2, false)

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
								add.ZIndex = 9
								add.Position = UDim2.new(0.25, 0, 0.25, 0)
								add.Size = UDim2.new(0, 500, 0, 500)

								local posam = button.AbsolutePosition
								local sizeam = button.AbsoluteSize
								task.wait(.1)
								VIM:SendTouch(posam.X+sizeam.X, posam.Y+sizeam.Y , true)
								task.wait(.05)
								VIM:SendTouch(posam.X+sizeam.X, posam.Y+sizeam.Y , false)	

							else

								local buttons = itemstradess2:FindFirstChild("Buttons")
								local buitem = buttons:FindFirstChild("Items")
								local uilist = buitem:FindFirstChild("UIListLayout")
								if uilist then uilist:Destroy() end

								local accept = buitem:FindFirstChild("Accept")
								accept.Position = UDim2.new(0.25, 0, 0.25, 0)
								accept.Size = UDim2.new(0,500,0,500)
								accept.ZIndex = 9
								task.wait(.1)
								local pos = accept.AbsolutePosition
								local size = accept.AbsoluteSize

								VIM:SendTouch(pos.X+size.X/2, pos.Y+size.Y/2 , true)
								task.wait(.05)
								VIM:SendTouch(pos.X+size.X/2, pos.Y+size.Y/2 , false)
							end


							grid.Parent = inventory_Scoll

							break
						end
					end


				end

				for v,remove in pairs(inventory_Scoll:GetChildren()) do
					if remove:IsA("Frame") then
						if remove:FindFirstChild("Frame"):FindFirstChild("ImageLabel"):FindFirstChild("Title").Text ~= sub.Unit then
							remove.Visible = true
						end
					end
				end

				task.wait(.05)
			end
		end

		for o = 1,number do
			delta()
		end

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
			if igma:FindFirstChild("Title").Text == sub.Unit then
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
	warn(number)
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
				end

			end
		end

	end


elseif not uis.TouchEnabled and uis.KeyboardEnabled and uis.MouseEnabled then
	print("Computer device")
	local task1 = function()
		local left = screen:FindFirstChild("Left")
		local sidebar = left:FindFirstChild("Sidebar")
		local items1 = sidebar:FindFirstChild("Items")
		local trade = items1:FindFirstChild("Trade")
		local items2 = trade:FindFirstChild("Items")
		local buttonleft = items2:FindFirstChild("Button")


		if buttonleft then
			local pos = buttonleft.AbsolutePosition
			local size = buttonleft.AbsoluteSize
			VIM:SendMouseButtonEvent(pos.X+size.X,pos.Y+size.Y , 0, true, gui, 0)
			task.wait()
			VIM:SendMouseButtonEvent(pos.X+size.X,pos.Y+size.Y , 0, false, gui, 0)
		end
		task.wait(1)
		return true
	end



	local task2 = function()
		local function findtar()
			local target = nil

			for v,nole in pairs(scoolframtrade:GetChildren()) do
				if nole:IsA("Frame") then
					if nole.Name:sub(1,#sub.Player) == sub.Player then
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

			target.Size = UDim2.new(1,0,0,500)
			local buttontar : ImageButton = target:FindFirstChild("Button")
			local postar = buttontar.AbsolutePosition
			local size1 = buttontar.AbsoluteSize

			task.wait(.2)

			VIM:SendMouseButtonEvent(postar.X+size1.X/2,postar.Y+size1.Y/2 , 0, true, target, 0)
			task.wait()
			VIM:SendMouseButtonEvent(postar.X+size1.X/2,postar.Y+size1.Y/2 , 0, false, target, 0)
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

		if tradewith.Text:sub(1,#sub.Player) ~= sub.Player then
			for a = 1,5 do
				VIM:SendKeyEvent(true,Enum.KeyCode.Q,0,gui)
				task.wait(.05)
				VIM:SendKeyEvent(false,Enum.KeyCode.Q,0,gui)
				task.wait()
			end

		end
		
		local function delta()


			task.wait(.3)

			if unit:IsA("Frame") and unit.Name == "unit_more" and unit:FindFirstChild("TextButton") then

				unit.Parent = itemstradess3
				local button = unit:FindFirstChild("TextButton")
				local pos = unit.AbsolutePosition
				local size = unit.AbsoluteSize
				VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, true, gui, 0)
				task.wait(.05)
				VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, false, gui, 0)

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


						if mob_Title.Text == sub.Unit then
							local grid = mob.Parent:FindFirstChild("UIGridLayout")
							grid.Parent = nil
							mob.Parent = inventory_Scoll.Parent

							local button = mob:FindFirstChild("TextButton")

							local posbu = button.AbsolutePosition
							local sizebu = button.AbsoluteSize

							for z = 1,5 do
								VIM:SendMouseWheelEvent(posbu.X+sizebu.X/2,posbu.Y+sizebu.Y/2,0,gui)
								task.wait(.05)
							end
							task.wait()
							VIM:SendMouseButtonEvent(posbu.X+sizebu.X/2,posbu.Y+sizebu.Y/2 , 0, true, gui, 0)
							task.wait(.05)
							VIM:SendMouseButtonEvent(posbu.X+sizebu.X/2,posbu.Y+sizebu.Y/2 , 0, false, gui, 0)

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
								add.ZIndex = 9
								add.Position = UDim2.new(0.25, 0, 0.25, 0)
								add.Size = UDim2.new(0, 500, 0, 500)

								local posam = button.AbsolutePosition
								local sizeam = button.AbsoluteSize
								task.wait(.1)
								VIM:SendMouseButtonEvent(posam.X+sizeam.X,posam.Y+sizeam.Y , 0, true, gui, 0)
								task.wait(.05)
								VIM:SendMouseButtonEvent(posam.X+sizeam.X,posam.Y+sizeam.Y , 0, false, gui, 0)	

							else

								local buttons = itemstradess2:FindFirstChild("Buttons")
								local buitem = buttons:FindFirstChild("Items")
								local uilist = buitem:FindFirstChild("UIListLayout")
								if uilist then uilist:Destroy() end

								local accept = buitem:FindFirstChild("Accept")
								accept.Position = UDim2.new(0.25, 0, 0.25, 0)
								accept.Size = UDim2.new(0,500,0,500)
								accept.ZIndex = 9
								task.wait(.1)
								local pos = accept.AbsolutePosition
								local size = accept.AbsoluteSize

								VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, true, buitem, 0)
								task.wait(.05)
								VIM:SendMouseButtonEvent(pos.X+size.X/2,pos.Y+size.Y/2 , 0, false, buitem, 0)
							end


							grid.Parent = inventory_Scoll

							break
						end
					end
			

				end

				for v,remove in pairs(inventory_Scoll:GetChildren()) do
					if remove:IsA("Frame") then
						if remove:FindFirstChild("Frame"):FindFirstChild("ImageLabel"):FindFirstChild("Title").Text ~= sub.Unit then
							remove.Visible = true
						end
					end
				end

				task.wait(.05)
			end
		end
		
		for o = 1,number do
			delta()
		end
		
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
			if igma:FindFirstChild("Title").Text == sub.Unit then
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
	warn(number)
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
				end

			end
		end

	end


end


