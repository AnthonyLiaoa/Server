local playersProcessingCocaLeaf = {}

RegisterServerEvent('esx_illegal:pickedUpCocaLeaf')
AddEventHandler('esx_illegal:pickedUpCocaLeaf', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('coca_leaf')
	if GetCops() >= Config.RequiredCops then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent('esx:showNotification', _source, _U('coca_leaf_inventoryfull'))
		else
			xPlayer.addInventoryItem(xItem.name, 2)
		end
	else
		TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
	end
end)

RegisterServerEvent('esx_illegal:processCocaLeaf')
AddEventHandler('esx_illegal:processCocaLeaf', function()
	if not playersProcessingCocaLeaf[source] then
		local _source = source
		if GetCops() >= Config.RequiredCops then
			playersProcessingCocaLeaf[_source] = ESX.SetTimeout(Config.Delays.CokeProcessing, function()
				local xPlayer = ESX.GetPlayerFromId(_source)
				local xCocaLeaf, xCoke = xPlayer.getInventoryItem('coca_leaf'), xPlayer.getInventoryItem('coke')

				if xCoke.limit ~= -1 and (xCoke.count + 1) > xCoke.limit then
					TriggerClientEvent('esx:showNotification', _source, _U('coke_processingfull'))
				elseif xCocaLeaf.count < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('coke_processingenough'))
				else
					xPlayer.removeInventoryItem('coca_leaf', 4)
					xPlayer.addInventoryItem('coke', 2)

					TriggerClientEvent('esx:showNotification', _source, _U('coke_processed'))
				end

				playersProcessingCocaLeaf[_source] = nil
			end)
		else
			TriggerClientEvent('esx:showNotification', _source, '警察數量不足！')
		end
		
	else
		print(('esx_illegal: %s attempted to exploit coke processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerID)
	if playersProcessingCocaLeaf[playerID] then
		ESX.ClearTimeout(playersProcessingCocaLeaf[playerID])
		playersProcessingCocaLeaf[playerID] = nil
	end
end

RegisterServerEvent('esx_illegal:cancelProcessing')
AddEventHandler('esx_illegal:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerID, reason)
	CancelProcessing(playerID)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
