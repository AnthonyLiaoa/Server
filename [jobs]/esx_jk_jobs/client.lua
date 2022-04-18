local PlayerData = {}
ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		-- local sleep = true
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)),  Config.Marker.x,Config.Marker.y,Config.Marker.z, true) < 5 then
			-- sleep = true
			DrawMarker(Config.Marker.type, Config.Marker.x, Config.Marker.y, Config.Marker.z-1.0, 0, 0, 0, 0, 0, 0, 4.0001,4.0001,4.0001, 0, Config.Color.r, Config.Color.g, Config.Color.b, 0, 0, 0, 0, 0, 0, 0)
			DisplayHelpText("按 ~g~E~s~ 開啟職業清單")
		 if (IsControlJustReleased(1, 51)) then
			SetNuiFocus( true, true )
			SendNUIMessage({
				ativa = true
			})
		 end
		end
		-- if sleep then
		-- Wait(0)
		-- end
	end
end)

Citizen.CreateThread(function()
	local blip = AddBlipForCoord(Config.Marker.x, Config.Marker.y, Config.Marker.z)
	SetBlipSprite (blip, 407)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.7)
	SetBlipColour (blip, 27)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("就業中心")
	EndTextCommandSetBlipName(blip)
end)

RegisterNUICallback('1', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobs')
  	cb('ok')
end)

RegisterNUICallback('2', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobm')
  	cb('ok')
end)

RegisterNUICallback('3', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobl')
  	cb('ok')
end)

RegisterNUICallback('4', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobt')
  	cb('ok')
end)

RegisterNUICallback('5', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobu')
  	cb('ok')
end)

RegisterNUICallback('6', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobthief')
  	cb('ok')
end)

RegisterNUICallback('7', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobfisherman')
  	cb('ok')
end)

RegisterNUICallback('8', function(data, cb)
	TriggerServerEvent('esx_jk_jobs:setJobgrove')
  	cb('ok')
end)


RegisterNUICallback('fechar', function(data, cb)
	SetNuiFocus( false )
	SendNUIMessage({
	ativa = false
	})
  	cb('ok')
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
