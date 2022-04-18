local ESX = nil
local cooldown = 0
TriggerEvent("esx:getSharedObject", function(obj) 
    ESX = obj 
end)

TriggerEvent('es:addCommand', 'claim', function(source, args, user)
	TriggerClientEvent("esx_claim:getit", source, true)
end)

TriggerEvent('es:addCommand', 'claim', function(source, args, user)
	TriggerClientEvent("esx_claim:getmoney", source, true)
end)

RegisterServerEvent('esx_claim:claimMoney')
AddEventHandler('esx_claim:claimMoney', function()
	local _source =source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(100000)
	TriggerClientEvent('esx:showNotification', _source,'~o~ 獎金已入帳  ~w~')
end)