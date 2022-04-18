ESX = nil
local cachedBins = {}
local claim = 0
local cd  = true
local cdsecond = 1800

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) 
            ESX = obj 
        end)

        Citizen.Wait(5)
    end
end)

-- C L A I M --

RegisterCommand("getgift", function()
		TriggerServerEvent('esx_claim:getItem')
		exports.pNotify:SendNotification({text = '<font color="orange">正在獲在線獎勵.......</font><br><i>市政府祝您遊戲愉快',queue = 'right',timeout = 1000,layout = 'centerLeft'  })	
end)

RegisterNetEvent("esx_claim:getit")
AddEventHandler("esx_claim:getit",function()
		TriggerServerEvent('esx_claim:getItem')
		exports.pNotify:SendNotification({text = '<font color="orange">正在獲取在線獎勵.......</font><br><i>市政府祝您遊戲愉快',queue = 'right',timeout = 1000,layout = 'centerLeft'  })	
	end)

RegisterCommand("claim", function()
	if cd == false then
        TriggerServerEvent("esx_claim:claimMoney")
		cdsecond = 1800
		cd = true
        exports.pNotify:SendNotification({text = '<font color="orange">正在獲取時間獎勵.......</font><br><i>市政府祝你遊玩愉快',queue = 'right',timeout = 250,layout = 'centerLeft'})
	else
		exports.pNotify:SendNotification({text = '<font color="red">無法領取請等待30分鐘',queue = 'right',timeout = 250,layout = 'centerLeft'})
	end
end)


RegisterNetEvent("esx_claim:getMoney")
AddEventHandler("esx_claim:getMoney",function()
        TriggerServerEvent('esx_claim:claimMoney')
        exports.pNotify:SendNotification({text = '<font color="orange">獎金已入帳',queue = 'right',timeout = 250,layout = 'centerLeft'})
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if cd then
			Citizen.Wait(1000)
			if(cdsecond > 0)then
				cdsecond = cdsecond - 1
			end
			if(cdsecond==0) then
				cd = false
				TriggerEvent("chatMessage", "伺服器溫馨提醒", { 255, 0, 255, 255}, "/claim可領取掛機獎金，每掛機30分鐘可領取一次" )
			end
		end
	end
end)