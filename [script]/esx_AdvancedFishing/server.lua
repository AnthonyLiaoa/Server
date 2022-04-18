
print("Advanced fishing started successfully")

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterUsableItem('turtlebait', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "turtle")
		
		xPlayer.removeInventoryItem('turtlebait', 1)
		TriggerClientEvent('fishing:message', _source, "~g~你把海龜魚餌放在了魚竿上")
	else
		TriggerClientEvent('fishing:message', _source, "~r~你沒有魚竿")
	end
	
end)

ESX.RegisterUsableItem('fishbait', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "fish")
		
		xPlayer.removeInventoryItem('fishbait', 1)
		TriggerClientEvent('fishing:message', _source, "~g~你把魚餌放在了魚竿上")
		
	else
		TriggerClientEvent('fishing:message', _source, "~r~你沒有魚竿")
	end
	
end)

ESX.RegisterUsableItem('turtle', function(source)

	local _source = source
	xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getInventoryItem('fishingrod').count > 0 then
		TriggerClientEvent('fishing:setbait', _source, "shark")
		
		xPlayer.removeInventoryItem('turtle', 1)
		TriggerClientEvent('fishing:message', _source, "~g~你把海龜肉放在了魚竿上")
	else
		TriggerClientEvent('fishing:message', _source, "~r~你沒有魚竿")
	end
	
end)

ESX.RegisterUsableItem('fishingrod', function(source)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer.job.name == "police" or xPlayer.job.name == "ambulance" then
		TriggerClientEvent("esx:showNotification", _source, "你還沒下班")
	else
		TriggerClientEvent('fishing:fishstart', _source)
	end
	
end)


				
RegisterNetEvent('fishing:catch')
AddEventHandler('fishing:catch', function(bait)
	
	_source = source
	local weight = 2
	local rnd = math.random(1,100)
	xPlayer = ESX.GetPlayerFromId(_source)
	if bait == "turtle" then
		if rnd >= 78 then
			if rnd >= 94 then
				TriggerClientEvent('fishing:setbait', _source, "none")
				TriggerClientEvent('fishing:message', _source, "~r~那個是一條蠻大的魚，還有你的魚竿被甩壞了!")
				TriggerClientEvent('fishing:break', _source)
				xPlayer.removeInventoryItem('fishingrod', 1)
			else
				TriggerClientEvent('fishing:setbait', _source, "none")
				if xPlayer.getInventoryItem('turtle').count > 4 then
					TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的海龜了")
				else
					TriggerClientEvent('fishing:message', _source, "~g~你捉到了一隻海龜\n~r~.")
					xPlayer.addInventoryItem('turtle', 1)
				end
			end
		else
			if rnd >= 75 then
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
				else
					weight = math.random(4,9)
					TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條魚: ~y~~h~" .. weight .. "kg")
					xPlayer.addInventoryItem('fish', weight)
				end
				
			else
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
				else
					weight = math.random(2,6)
					TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條魚: ~y~~h~" .. weight .. "公斤")
					xPlayer.addInventoryItem('fish', weight)
				end
			end
		end
	else
		if bait == "fish" then
			if rnd >= 75 then
				TriggerClientEvent('fishing:setbait', _source, "none")
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
				else
					weight = math.random(4,11)
					TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條魚: ~y~~h~" .. weight .. "公斤")
					xPlayer.addInventoryItem('fish', weight)
				end
				
			else
				if xPlayer.getInventoryItem('fish').count > 100 then
					TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
				else
					weight = math.random(1,6)
					TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條魚: ~y~~h~" .. weight .. "公斤")
					xPlayer.addInventoryItem('fish', weight)
				end
			end
		end
		if bait == "none" then
			
			if rnd >= 70 then
			TriggerClientEvent('fishing:message', _source, "~y~你現在釣魚並沒有吧魚餌放上去")
				if  xPlayer.getInventoryItem('fish').count > 100 then
						TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
					else
						weight = math.random(2,4)
						TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條魚: ~y~~h~" .. weight .. "公斤")
						xPlayer.addInventoryItem('fish', weight)
					end
					
				else
				TriggerClientEvent('fishing:message', _source, "~y~你現在釣魚並沒有吧魚餌放上去")
					if xPlayer.getInventoryItem('fish').count > 100 then
						TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
					else
						weight = math.random(1,2)
						TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條魚: ~y~~h~" .. weight .. "公斤")
						xPlayer.addInventoryItem('fish', weight)
					end
				end
		end
		if bait == "shark" then
			if rnd >= 82 then
			
						if rnd >= 95 then
							TriggerClientEvent('fishing:setbait', _source, "none")
							TriggerClientEvent('fishing:message', _source, "~r~那個是一條蠻大的魚，還有你的魚竿被甩壞了!")
							TriggerClientEvent('fishing:break', _source)
							xPlayer.removeInventoryItem('fishingrod', 1)
						else
							if xPlayer.getInventoryItem('shark').count > 4  then
									TriggerClientEvent('fishing:setbait', _source, "none")
									TriggerClientEvent('fishing:message', _source, "~r~你不能再拿更多的鯊魚了")
							else
									TriggerClientEvent('fishing:message', _source, "~g~你捉到了一條鯊魚!\n~r~.")
									--TriggerClientEvent('fishing:spawnPed', _source)
									xPlayer.addInventoryItem('shark', 1)
							end
						end	
							else
									if xPlayer.getInventoryItem('fish').count > 100 then
										TriggerClientEvent('fishing:message', _source, "~r~你不能拿更多的魚了")
									else
										weight = math.random(4,8)
										TriggerClientEvent('fishing:message', _source, "~g~Y你捉到了一條魚: ~y~~h~" .. weight .. "公斤")
										xPlayer.addInventoryItem('fish', weight)
									end
								
							end
			end
			
		end
	
	
end)

RegisterServerEvent("fishing:lowmoney")
AddEventHandler("fishing:lowmoney", function(money)
    local _source = source	
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeMoney(money)
end)

RegisterServerEvent('fishing:startSelling')
AddEventHandler('fishing:startSelling', function(item)

	local _source = source
	
	local xPlayer  = ESX.GetPlayerFromId(_source)
			if item == "fish" then
					local FishQuantity = xPlayer.getInventoryItem('fish').count
						if FishQuantity <= 4 then
						TriggerClientEvent('esx:showNotification', source, '~r~你沒有足夠的~s~魚來賣')			
					else   
						xPlayer.removeInventoryItem('fish', 5)
						local payment = Config.FishPrice.a
						payment = math.random(Config.FishPrice.a, Config.FishPrice.b) 
						xPlayer.addMoney(payment)
					end
			end
			if item == "turtle" then
				local FishQuantity = xPlayer.getInventoryItem('turtle').count

				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~你沒有足夠的~s~ 海龜')			
				else   
					xPlayer.removeInventoryItem('turtle', 1)
					local payment = Config.TurtlePrice.a
					payment = math.random(Config.TurtlePrice.a, Config.TurtlePrice.b) 
					xPlayer.addAccountMoney('black_money', payment)
					
					
				end
			end
			if item == "shark" then
				local FishQuantity = xPlayer.getInventoryItem('shark').count

				if FishQuantity <= 0 then
					TriggerClientEvent('esx:showNotification', source, '~r~你沒有足夠的~s~鯊魚')			
				else   
					xPlayer.removeInventoryItem('shark', 1)
					local payment = Config.SharkPrice.a
					payment = math.random(Config.SharkPrice.a, Config.SharkPrice.b)
					xPlayer.addAccountMoney('black_money', payment)
					
					
				end
			end
			
	
end)

