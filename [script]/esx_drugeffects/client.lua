ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local runspeed = 1.49 --(Change the run speed here !!! MAXIMUM IS 1.49 !!! )

-- Useitem thread
RegisterNetEvent('esx_drugeffect:useItem')
AddEventHandler('esx_drugeffect:useItem', function(itemName)
    ESX.UI.Menu.CloseAll()

	if itemName == 'cocaine' then
        local lib, anim = 'anim@mp_player_intcelebrationmale@face_palm', 'face_palm'
        local playerPed = PlayerPedId()
    	ESX.ShowNotification('你感覺到身體一陣舒爽！！')
        ESX.Streaming.RequestAnimDict(lib, function()
            --TaskPlayAnim(playerPed, lib, anim, 8.0, -8.0, -1, 32, 0, false, false, false)

            Citizen.Wait(500)
            while IsEntityPlayingAnim(playerPed, lib, anim, 3) do
                Citizen.Wait(0)
                DisableAllControlActions(0)
            end

            TriggerEvent('esx_drugeffect:runMan')
        end)
    end
end)

-- Cocaine effect (Run really fast)
RegisterNetEvent('esx_drugeffect:runMan')
AddEventHandler('esx_drugeffect:runMan', function()
    RequestAnimSet("move_m@hurry_butch@b")
    while not HasAnimSetLoaded("move_m@hurry_butch@b") do
        Citizen.Wait(0)
    end
    onDrugs = true
	count = 0
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
    SetPedMotionBlur(GetPlayerPed(-1), true)
    SetTimecycleModifier("spectator5")
    SetPedMovementClipset(GetPlayerPed(-1), "move_m@hurry_butch@b", true)
	SetRunSprintMultiplierForPlayer(PlayerId(), runspeed)
    DoScreenFadeIn(1000)
	repeat
	--	ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.1)
    --	TaskJump(GetPlayerPed(-1), false, true, false)
    		Citizen.Wait(15000)
		count = count  + 1
    until count == 3
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
    DoScreenFadeIn(1000)
    ClearTimecycleModifier()
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
	SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    ClearAllPedProps(GetPlayerPed(-1), true)
    SetPedMotionBlur(GetPlayerPed(-1), false)
    ESX.ShowNotification('藥效已消失,身體已恢復正常!!!!')
    onDrugs = false
end)