ESX = nil
Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)
        Citizen.Wait(10)
    end
end)
    


RegisterNetEvent("esx_gacha:broadcastmessage")
AddEventHandler("esx_gacha:broadcastmessage",function(message)
    exports.pNotify:SendNotification(
        {
            text = '<marquee behavior="alternate" height="50" border="0" direction="right" scrollamount="20" style="text-align: left;font-size:30pt;"><b>'..message..'</b></marquee>',
            queue = "right",
            timeout = 5000,
            theme = "relax",
            type ="success",
            layout = "top"  ,
            progressBar= false,
            sounds = {
                sources = {"sound01.wav"}, 
                volume = 0.3,
                conditions = {"docVisible"} 
            }
})	
end)

    
RegisterNetEvent("esx_gacha:givecar")
AddEventHandler("esx_gacha:givecar",function(Coords,vehiclekey)
    ESX.Game.SpawnVehicle(vehiclekey,Coords, 0.0, function (vehicle)
        FreezeEntityPosition(vehicle, true)
        SetEntityVisible(vehicle, false)
        local newPlate     = GeneratePlate()
        local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
        vehicleProps.plate = newPlate
        SetVehicleNumberPlateText(vehicle, newPlate)
        TriggerServerEvent('esx_gacha:setCarOwned', vehicleProps)
        ESX.Game.DeleteVehicle(vehicle)
       
    end)     
end)
---降落傘

RegisterCommand("p", function(source)
    GiveParachute()
end)

function GiveParachute()
        local playerPed = GetPlayerPed(-1)
        local weaponHash = GetHashKey("GADGET_PARACHUTE")
    ESX.TriggerServerCallback("esx_gacha:fetchUserRank", function(playerRank)
        if playerRank == "admin" or playerRank == "superadmin" or playerRank == "mod" then
        TriggerEvent("pNotify:SendNotification", {
          text = "獲得降落傘",
          type = "success",
          timeout = math.random(1000, 10000),
          layout = "centerRight",
          queue = "right"
            })
          GiveWeaponToPed(playerPed,weaponHash , true)
        
        else
        TriggerEvent("pNotify:SendNotification", {
            text = "你不是管理員",
            type = "success",
            timeout = math.random(1000, 10000),
            layout = "centerRight",
            queue = "right"
            })    

        end
    end)
end