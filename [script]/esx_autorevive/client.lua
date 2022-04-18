local sid = GetPlayerServerId(PlayerId())

AddEventHandler('esx:onPlayerDeath', function(data)
	TriggerServerEvent('MK:PlayerDied', sid)
end)

RegisterNetEvent('MK:revive')
AddEventHandler('MK:revive', function()
	if IsEntityDead(PlayerPedId()) then
		TriggerEvent('esx_ambulancejob:revive')
		TriggerServerEvent('MK:PayforRevive', sid)
	end
end)