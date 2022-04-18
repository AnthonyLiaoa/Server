local playersProcessingPoppyResin = {}

RegisterServerEvent('esx_illegal:pickedUpPoppy')
AddEventHandler('esx_illegal:pickedUpPoppy', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('poppyresin')

	if GetCops() >= Config.RequiredCops then
		if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
			TriggerClientEvent('esx:showNotification', _source, _U('poppy_inventoryfull'))
		else
			xPlayer.addInventoryItem(xItem.name, 2)
		end
	else
		TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
	end
end)

RegisterServerEvent('esx_illegal:processPoppyResin')
AddEventHandler('esx_illegal:processPoppyResin', function()
	if not playersProcessingPoppyResin[source] then
		local _source = source
		if GetCops() >= Config.RequiredCops then
			playersProcessingPoppyResin[_source] = ESX.SetTimeout(Config.Delays.HeroinProcessing, function()
				local xPlayer = ESX.GetPlayerFromId(_source)
				local xPoppyResin, xHeroin = xPlayer.getInventoryItem('poppyresin'), xPlayer.getInventoryItem('heroin')

				if xHeroin.limit ~= -1 and (xHeroin.count + 1) > xHeroin.limit then
					TriggerClientEvent('esx:showNotification', _source, _U('heroin_processingfull'))
				elseif xPoppyResin.count < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('heroin_processingenough'))
				else
					xPlayer.removeInventoryItem('poppyresin', 4)
					xPlayer.addInventoryItem('heroin', 2)

					TriggerClientEvent('esx:showNotification', _source, _U('heroin_processed'))
				end

				playersProcessingPoppyResin[_source] = nil
			end)
		else
			TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
		end
	else
		print(('esx_illegal: %s attempted to exploit heroin processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerID)
	if playersProcessingPoppyResin[playerID] then
		ESX.ClearTimeout(playersProcessingPoppyResin[playerID])
		playersProcessingPoppyResin[playerID] = nil
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
