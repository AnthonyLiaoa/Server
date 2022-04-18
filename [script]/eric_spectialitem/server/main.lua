ESX = nil
local playersHealing = {}


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('adrenaline', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.removeInventoryItem('adrenaline', 1)

	TriggerClientEvent('eric_spectialitem:useItem', 'adrenaline')
end)

--[[ESX.RegisterUsableItem('devilfruit', function() --提高跳躍高度, 持續時間:30秒

end)]]--

ESX.RegisterUsableItem('bluepill', function(source)
    if not playersHealing[source] then
        local xPlayer = ESX.GetPlayerFromId(source)
        
        xPlayer.removeInventoryItem('bluepill', 1)
        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('use_bluepill'))    
	
		playersHealing[source] = true
		TriggerClientEvent('eric_spectialitem:useItem', _source, 'bluepill')
		Citizen.Wait(600)
        playersHealing[source] = nil
	end
end)

ESX.RegisterUsableItem('beefpower', function()
    if not playersHealing[source] then
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        
        xPlayer.removeInventoryItem('beefpower', 1)
        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('use_beefpower'))    
	
		playersHealing[source] = true
		TriggerClientEvent('eric_spectialitem:useItem', 'beefpower')
		Citizen.Wait(Citizen.Wait((Config.beefpowertimer + 1) * 1000))
        playersHealing[source] = nil
    else
        TriggerClientEvent('esx:showNotification', xPlayer.source, _U('can_not_use'))
	end
    
end)

ESX.RegisterUsableItem('morphine', function(source)
    if not playersHealing[source] then
		local xPlayer = ESX.GetPlayerFromId(source)
	
		playersHealing[source] = true
		TriggerClientEvent('eric_spectialitem:useItem', 'morphine')
		Citizen.Wait((Config.morphinetimer + 1) * 1000)
        playersHealing[source] = nil
	end
end)

RegisterServerEvent('eric_spectialitem:removeItem')
AddEventHandler('eric_spectialitem:removeItem', function(itemName)
    local xPlayer = ESX.GetPlayerFromId(source)
    
    xPlayer.removeInventoryItem(itemName, 1)
end)