--This script is property of OurStory RP but has been released for free on the FiveM forums! Do NOT redisribute this for money or claim it as yours.
--If you use this script, all I ask is that you credit me using my Discord account 4th#4444
--Also, I politely request that you do not rename the script.
--Video showcase: https://www.youtube.com/watch?v=a-StxdwHPfE

ESX              = nil
local PlayerData = {}
local hasInjected = false
local hasInjected2 = false
local morphineTimer = 0
local morphineTimer2 = 0
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end

--Morphine
RegisterNetEvent('OurStoryMorphine:inject')
AddEventHandler('OurStoryMorphine:inject', function()
	prop_name = 'p_syringe_01_s'
	Citizen.CreateThread(function()
		local playerPed = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(playerPed))
		local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
		local boneIndex = GetPedBoneIndex(playerPed, 18905)
		AttachEntityToEntity(prop, playerPed, boneIndex, 0.14, 0.03, 0.02, -50.0, 130.0, -.0, true, true, false, true, 1, true)
		loadAnimDict('mp_arresting')
		TaskPlayAnim(playerPed, 'mp_arresting', 'a_uncuff', 8.0, -8, -1, 49, 0, 0, 0, 0)
		ESX.ShowAdvancedNotification("注射藥物", "通知", "~y~你已注射嗎啡(體力持續回復)~g~\n藥效5分鐘", "CHAR_MP_MORS_MUTUAL")
		Citizen.Wait(3000)
		ClearPedSecondaryTask(playerPed)
		DeleteObject(prop)
		ClearAllPedProps(prop)
		ClearPedTasks(playerPed)
		if hasInjected == false then
			hasInjected = true
			while morphineTimer < 500 do -- 藥物持續多久 目前 1800 秒
				morphineTimer = morphineTimer + 1
				local HP = GetEntityHealth(PlayerPedId())
				HP = HP + 1
				SetEntityHealth(PlayerPedId(), HP)
				Citizen.Wait(1000)
			end
			if hasInjected == true then
				hasInjected = false
				ESX.ShowAdvancedNotification("注射藥物", "通知", "~r~嗎啡藥效退了", "CHAR_MP_MORS_MUTUAL")
				morphineTimer = 0
			end
		else
			ESX.ShowAdvancedNotification("注射藥物", "通知", "~y~你已注射嗎啡(體力持續回復)~g~\n藥效5分鐘", "CHAR_MP_MORS_MUTUAL")
		end
	end)
end)


RegisterNetEvent('OurStoryMorphine:inject2')
AddEventHandler('OurStoryMorphine:inject2', function()
	prop_name2 = 'p_syringe_01_s'
	Citizen.CreateThread(function()
		local playerPed2 = GetPlayerPed(-1)
		local x,y,z = table.unpack(GetEntityCoords(playerPed2))
		local prop2 = CreateObject(GetHashKey(prop_name2), x, y, z + 0.2, true, true, true)
		local boneIndex = GetPedBoneIndex(playerPed2, 18905)
		AttachEntityToEntity(prop2, playerPed2, boneIndex, 0.14, 0.03, 0.02, -50.0, 130.0, -.0, true, true, false, true, 1, true)
		loadAnimDict('mp_arresting')
		TaskPlayAnim(playerPed2, 'mp_arresting', 'a_uncuff', 8.0, -8, -1, 49, 0, 0, 0, 0)
		ESX.ShowAdvancedNotification("注射藥物", "通知", "~y~你已注射腎上腺素\n(奔跑速度提升+耐力無限)~g~\n藥效5分鐘", "CHAR_MP_MORS_MUTUAL")
		SetPedMoveRateOverride(PlayerId(),10.0)
		SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
		Citizen.Wait(3000)
		ClearPedSecondaryTask(playerPed2)
		DeleteObject(prop2)
		ClearAllPedProps(prop2)
		ClearPedTasks(playerPed2)
		if hasInjected2 == false then
			hasInjected2 = true
			while morphineTimer2 < 300 do -- 藥物持續多久 目前 1800 秒
				morphineTimer2 = morphineTimer2 + 1
				ResetPlayerStamina(PlayerId())
				Citizen.Wait(1000)
			end
			if hasInjected2 == true then
				hasInjected2 = false
				ESX.ShowAdvancedNotification("注射藥物", "通知", "~r~腎上腺素藥效退了", "CHAR_MP_MORS_MUTUAL")
				morphineTimer2 = 0
				SetPedMoveRateOverride(PlayerId(),10.0)
				SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
			end
		else
			ESX.ShowAdvancedNotification("注射藥物", "通知", "~y~你已注射腎上腺素\n(奔跑速度提升+耐力無限)~g~\n藥效5分鐘", "CHAR_MP_MORS_MUTUAL")
		end
	end)
end)