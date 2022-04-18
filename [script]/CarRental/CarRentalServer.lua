ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('chargePlayer')
AddEventHandler('chargePlayer', function(chargeAmount)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeMoney(chargeAmount)
end)

RegisterServerEvent("devAddPlayer")
AddEventHandler("devAddPlayer", function(devAddAmount)
	TriggerEvent("es:getPlayerFromId", source, function(user)
		user.addMoney(devAddAmount)
		CancelEvent()
	end)
end)