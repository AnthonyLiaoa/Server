local ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) 
    ESX = obj 
end)

TriggerEvent('es:addCommand', 'gift', function(source, args, user)
	TriggerClientEvent("esx_gift:getit", source, true)
end)

RegisterServerEvent('esx_gift:getItem')
AddEventHandler('esx_gift:getItem', function()
	local _source =source	
	local xPlayer  = ESX.GetPlayerFromId(_source)
	local result = MySQL.Sync.fetchAll("SELECT havegift FROM users WHERE `identifier` = @identifier", {
      ['@identifier'] = xPlayer.identifier
    })

	local had = result[1].havegift

	if had == false then	
	xPlayer.addInventoryItem('gift',1)	
	TriggerClientEvent('esx:showNotification', _source,'~o~ 您已經領取新手禮包  ~w~')		
	
	MySQL.Async.execute(
    'UPDATE users SET `havegift` = @yes WHERE identifier = @identifier',
    {
	  ['@yes']       = true,
      ['@identifier'] = xPlayer.identifier
    }
	)	
	else
	
	TriggerClientEvent('esx:showNotification', _source,'~r~ 您已經領取過此獎勵 ~w~')
	
	end
end)

ESX.RegisterUsableItem('gift', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gift', 1)
	 
	xPlayer.addMoney(1000000)
	xPlayer.addInventoryItem('fixkit', 1)
	xPlayer.addInventoryItem('porkrice', 10)
	xPlayer.addInventoryItem('beefnoodles', 10)
	xPlayer.addInventoryItem('chickenbento', 5)
	xPlayer.addInventoryItem('cola', 10)
	xPlayer.addInventoryItem('milktea', 10)
	xPlayer.addInventoryItem('gravalemontea', 5)
end)