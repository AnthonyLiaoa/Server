AddEventHandler('playerDropped', function()
	local playerId = source

	if playerId then
		TriggerClientEvent('esx_job_control:updateBlip', -1)
	end
end)

RegisterNetEvent('esx_job_control:updateAllBlip')
AddEventHandler('esx_job_control:updateAllBlip', function()
	TriggerClientEvent('esx_job_control:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_job_control:updateBlip', -1)
	end
end)

RegisterCommand('workers', function(source, args, rawCommand)
    if source == 0 then
        return
    end

    local xSource = ESX.GetPlayerFromId(source)
    local xPlayers = ESX.GetPlayers()
    local workers = {}

    if xSource.job.grade >= 1 then
        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        
            if xPlayer.job.name == xSource.job.name then
                table.insert(workers, xPlayer.getName() .. '^7')
            end
        end
    
        if workers ~= {} then
            table.sort(workers)
            TriggerClientEvent("chat:addMessage", source, {
                args = {
                    '^2' .. xSource.job.label .. '有' .. #workers .. '人正在值班',
                    table.concat(workers, '、')
                },
                color = { 255, 255, 255 }
            })
        end
    else
        TriggerClientEvent("chat:addMessage", source, {
            args = { '^1^*錯誤：你必須是公職高層！' },
            color = { 255, 255, 255 }
        })
    end
end, false)