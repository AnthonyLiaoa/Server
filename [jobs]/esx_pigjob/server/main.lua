ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_pigjob:reward')
AddEventHandler('esx_pigjob:reward', function(AnimalWeight)
    local xPlayer = ESX.GetPlayerFromId(source)
	local xPork = xPlayer.getInventoryItem('pork')

	if xPork.count <= 50 then
	if AnimalWeight >= 1 then
        xPlayer.addInventoryItem('pork', 1)
		TriggerClientEvent('exp01',source ,10)
		TriggerEvent('nuo:pig',xPlayer.name ,"pork")
    elseif AnimalWeight >= 6 then
        xPlayer.addInventoryItem('pork', 1)
		TriggerClientEvent('exp01',source ,10)
		TriggerEvent('nuo:pig',xPlayer.name ,"pork")
    elseif AnimalWeight >= 15 then
        xPlayer.addInventoryItem('pork', 1)
		TriggerClientEvent('exp01',source ,10)
		TriggerEvent('nuo:pig',xPlayer.name ,"pork")
    end
	else
	TriggerClientEvent('esx:showNotification', xPlayer.source, '你豬肉大於五十片')
	end
	

   -- xPlayer.addInventoryItem('leather', math.random(1, 4))
        
end)

RegisterServerEvent('esx_pigjob:porkpack')
AddEventHandler('esx_pigjob:porkpack', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local xPork = xPlayer.getInventoryItem('pork')
	if xPork.count < 3 then
		TriggerClientEvent('esx:showNotification', xPlayer.source, '你豬肉少於三片')
	else
		xPlayer.removeInventoryItem('pork', 3)
		xPlayer.addMoney(300)
		TriggerClientEvent('exp01',source ,100)
		TriggerClientEvent('esx:showNotification', xPlayer.source, '你販售三片豬肉')
	end
        
end)

function sendNotification(xsource, message, messageType, messageTimeout)
    TriggerClientEvent('notification', xsource, message)
end