ESX                           = nil

local cachedBins = {}

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)

        Citizen.Wait(5)
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(100)

    for locationIndex = 1, #Config.SellBottleLocations do
        local locationPos = Config.SellBottleLocations[locationIndex]

        local blip = AddBlipForCoord(locationPos)

        SetBlipSprite (blip, 409)
        SetBlipDisplay(blip, 4)
        SetBlipScale  (blip, 0.6)
        SetBlipColour (blip, 48)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Sell Bottles")
        EndTextCommandSetBlipName(blip)
    end

    while true do
        local sleepThread = 500

        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)

        for locationIndex = 1, #Config.SellBottleLocations do
            local locationPos = Config.SellBottleLocations[locationIndex]

            local dstCheck = GetDistanceBetweenCoords(pedCoords, locationPos, true)

            if dstCheck <= 5.0 then
                sleepThread = 5

                local text = "Sell Bottles"

                if dstCheck <= 1.5 then
                    text = "[~g~E~s~] " .. text

                    if IsControlJustReleased(0, 38) then
                        TriggerServerEvent("esx-ecobottles:sellBottles")
                    end
                end
                
                ESX.Game.Utils.DrawText3D(locationPos, text, 0.4)
            end
        end

        Citizen.Wait(sleepThread)
    end
end)

Citizen.CreateThread(function()
    Citizen.Wait(100)

    while true do
        local sleepThread = 1000

        local entity, entityDst = ESX.Game.GetClosestObject(Config.BinsAvailable)

        if DoesEntityExist(entity) and entityDst <= 3.0 then
            sleepThread = 5

            local binCoords = GetEntityCoords(entity)

            ESX.Game.Utils.DrawText3D(binCoords + vector3(0.0, 0.0, 0.5), "按 [~g~E~s~] 翻找垃圾桶", 0.8)

            if IsControlJustReleased(0, 38) then
                if not cachedBins[entity] then
                    cachedBins[entity] = true

                    OpenTrashCan()
                else
                    ESX.ShowNotification("你已經找過這個垃圾桶了!")
                end
            end
        end

        Citizen.Wait(sleepThread)
    end
end)

function OpenTrashCan()
    TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_BIN", 0, true)

    Citizen.Wait(10000)

    TriggerServerEvent("esx-ecobottles:retrieveBottle")

    ClearPedTasks(PlayerPedId())
end
