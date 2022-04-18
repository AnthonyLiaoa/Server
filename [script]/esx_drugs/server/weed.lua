local playersProcessingCannabis = {}

RegisterServerEvent('esx_illegal:pickedUpCannabis')
AddEventHandler('esx_illegal:pickedUpCannabis', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('cannabis')

	if GetCops() >= Config.RequiredCops then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent('esx:showNotification', _source, _U('weed_inventoryfull'))
		else
			xPlayer.addInventoryItem(xItem.name, 2)
		end
	else
		TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
	end
end)

RegisterServerEvent('esx_illegal:processCannabis')
AddEventHandler('esx_illegal:processCannabis', function()
	if not playersProcessingCannabis[source] then
		local _source = source
		if GetCops() >= Config.RequiredCops then
			playersProcessingCannabis[_source] = ESX.SetTimeout(Config.Delays.WeedProcessing, function()
				local xPlayer = ESX.GetPlayerFromId(_source)
				local xCannabis, xMarijuana = xPlayer.getInventoryItem('cannabis'), xPlayer.getInventoryItem('marijuana')

				if xMarijuana.limit ~= -1 and (xMarijuana.count + 1) > xMarijuana.limit then
					TriggerClientEvent('esx:showNotification', _source, _U('weed_processingfull'))
				elseif xCannabis.count < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('weed_processingenough'))
				else
					xPlayer.removeInventoryItem('cannabis', 4)
					xPlayer.addInventoryItem('marijuana', 2)

					TriggerClientEvent('esx:showNotification', _source, _U('weed_processed'))
				end

				playersProcessingCannabis[_source] = nil
			end)
		else
			TriggerClientEvent('esx:showNotification', _source, '警察數量不足！')
		end
	else
		print(('esx_illegal: %s attempted to exploit weed processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerID)
	if playersProcessingCannabis[playerID] then
		ESX.ClearTimeout(playersProcessingCannabis[playerID])
		playersProcessingCannabis[playerID] = nil
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
