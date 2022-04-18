local blips = {}
local jobsEnabled = {'police', 'ambulance', 'mechanic','country'}
local hasAlreadyJoined = false

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    while ESX.PlayerData == nil do
        Citizen.Wait(0)
    end

    TriggerEvent('esx_job_control:updateBlip')
end)

RegisterNetEvent('esx_job_control:updateBlip')
AddEventHandler('esx_job_control:updateBlip', function()
    print('update-blip')
    for i, v in pairs(blips) do
        RemoveBlip(v)
    end
    blips = {}

    for i, v in pairs(jobsEnabled) do

        if ESX.PlayerData.job and ESX.PlayerData.job.name == v then
            ESX.TriggerServerCallback('esx_society:getOnlinePlayers', function(players)
                for i=1, #players, 1 do
                    if players[i].job.name == v then
                        local id = GetPlayerFromServerId(players[i].source)
                        if NetworkIsPlayerActive(id) and GetPlayerPed(id) ~= PlayerPedId() then
                            createBlip(id)
                        end
                    end
                end
            end)
        end

    end
end)

AddEventHandler('playerSpawned', function(spawn)
	if not hasAlreadyJoined then
		TriggerServerEvent('esx_job_control:updateAllBlip')
	end
	hasAlreadyJoined = true
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
	TriggerServerEvent('esx_job_control:updateAllBlip')
end)

function createBlip(id)
	local ped = GetPlayerPed(id)
    local blip = GetBlipFromEntity(ped)
    local name = GetPlayerName(id)

	if not DoesBlipExist(blip) then
		blip = AddBlipForEntity(ped)
		SetBlipSprite(blip, 1)
        Citizen.InvokeNative( 0x5FBCA48327B914DF, blip, true ) --ShowHeadingIndicatorOnBlip(blip, true) -- Player Blip indicator 
		SetBlipRotation(blip, math.ceil(GetEntityHeading(ped)))
		SetBlipScale(blip, 0.85) -- set scale
		SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString('上班員工: ' .. name)
        EndTextCommandSetBlipName(blip)

		table.insert(blips, blip)
	end
end