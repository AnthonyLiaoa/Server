local playersProcessingLSD = {}

RegisterServerEvent('esx_illegal:processLSD')
AddEventHandler('esx_illegal:processLSD', function()
	if not playersProcessingLSD[source] then
		local _source = source

		if GetCops() >= Config.RequiredCops then
			playersProcessingLSD[_source] = ESX.SetTimeout(Config.Delays.lsdProcessing, function()
				local xPlayer = ESX.GetPlayerFromId(_source)
				local xLSA, xThionylChloride, xLSD = xPlayer.getInventoryItem('lsa'), xPlayer.getInventoryItem('thionyl_chloride'), xPlayer.getInventoryItem('lsd')

				if xLSD.limit ~= -1 and (xLSD.count + 1) > xLSD.limit then
					TriggerClientEvent('esx:showNotification', _source, _U('lsd_processingfull'))
				elseif xLSA.count < 1 or xThionylChloride.count < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('lsd_processingenough'))
				else
					xPlayer.removeInventoryItem('lsa', 3)
					xPlayer.removeInventoryItem('thionyl_chloride', 3)
					xPlayer.addInventoryItem('lsd', 1)

					TriggerClientEvent('esx:showNotification', _source, _U('lsd_processed'))
				end

				playersProcessingLSD[_source] = nil
			end)
		else
			TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
		end
	else
		print(('esx_illegal: %s attempted to exploit lsd processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

RegisterServerEvent('esx_illegal:processThionylChloride')
AddEventHandler('esx_illegal:processThionylChloride', function()
 	if not playersProcessingLSD[source] then
 		local _source = source
 		if GetCops() >= Config.RequiredCops then
 			playersProcessingLSD[_source] = ESX.SetTimeout(Config.Delays.lsdProcessing, function()
 				local xPlayer = ESX.GetPlayerFromId(_source)
 				local xLSA, xChemicals, xThionylChloride = xPlayer.getInventoryItem('lsa'), xPlayer.getInventoryItem('chemicals'), xPlayer.getInventoryItem('thionyl_chloride')
 				if xThionylChloride.limit ~= -1 and (xThionylChloride.count + 1) > xThionylChloride.limit then
 					TriggerClientEvent('esx:showNotification', _source, _U('thionylchloride_processingfull'))
				elseif xLSA.count < 1 or xChemicals.count < 1 then
 					TriggerClientEvent('esx:showNotification', _source, _U('thionylchloride_processingenough'))
 				else
 					xPlayer.removeInventoryItem('lsa',8)
 					xPlayer.removeInventoryItem('chemicals', 8)
 					xPlayer.addInventoryItem('thionyl_chloride', 8)

 					TriggerClientEvent('esx:showNotification', _source, _U('thionylchloride_processed'))
 				end
 				playersProcessingLSD[_source] = nil
 			end)
 		else
 			TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
 		end
		
 	else
 		print(('esx_illegal: %s attempted to exploit lsd processing!'):format(GetPlayerIdentifiers(source)[1]))
 	end
end)

function CancelProcessing(playerID)
	if playersProcessingLSD[playerID] then
		ESX.ClearTimeout(playersProcessingLSD[playerID])
		playersProcessingLSD[playerID] = nil
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
