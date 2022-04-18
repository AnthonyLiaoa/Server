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

-- G I F T --

RegisterCommand("panda", function()
		TriggerServerEvent('esx_gift:getItem')
		exports.pNotify:SendNotification({text = '<font color="orange">正在獲取新手禮包.......</font><br><i>日暮之都祝您遊戲愉快',queue = 'right',timeout = 1000,layout = 'centerLeft'  })	
end)

RegisterCommand("test1", function()
    local obj =Citizen.InvokeNative(0x0A6DB4965674D243 ,GetPlayerPed(-1))
    print(obj)
end)

RegisterNetEvent("esx_gift:getit")
AddEventHandler("esx_gift:getit",function()
		TriggerServerEvent('esx_gift:getItem')
		exports.pNotify:SendNotification({text = '<font color="orange">正在獲取新手禮包.......</font><br><i>日暮之都祝您遊戲愉快',queue = 'right',timeout = 1000,layout = 'centerLeft'  })	
	end)
