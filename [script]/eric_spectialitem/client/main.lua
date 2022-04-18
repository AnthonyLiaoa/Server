ESX = nil
local morphinetimer, beefpowertimer = 0, 0

TriggerEvent("esx:getSharedObject", function(obj) 
    ESX = obj 
end)


RegisterNetEvent('eric_spectialitem:useItem')
AddEventHandler('eric_spectialitem:useItem', function(itemName)
	ESX.UI.Menu.CloseAll()

	if itemName == 'bluepill' then
		local playerPed = PlayerPedId()
		local maxHealth = GetEntityMaxHealth(playerPed)
		local health = GetEntityHealth(playerPed)
		local bluepillHealth = math.max(0, math.floor(health - maxHealth / 2))
        
        SetEntityHealth(playerPed, bluepillHealth)
        SetPedArmour(playerPed, 100)
        
	elseif itemName == 'morphine' then
		local playerPed = PlayerPedId()
		local maxHealth = GetEntityMaxHealth(playerPed)
        local health = GetEntityHealth(playerPed)
        local morphineheal = 100 / Config.morphineheal
        local morphineHealth = math.floor(health + maxHealth / morphineheal)
        
        if health ~= maxHealth then
            ESX.ShowNotification(_U('use_morphine'))
            morphinetimer = Config.morphinetimer * 1000
            
            TriggerServerEvent('eric_spectialitem:removeItem', 'morphine')

            while morphinetimer > 0 do
                if morphineHealth < maxHealth then
                    SetEntityHealth(playerPed, morphineHealth)
                    morphinetimer = morphinetimer - 1000
                    Citizen.Wait(100)
                    health = GetEntityHealth(playerPed)
                    morphineHealth = math.floor(health + maxHealth / morphineheal)
                else
                    SetEntityHealth(playerPed, maxHealth)
                    morphinetimer = 0
                end
                Citizen.Wait(900)
            end
        else
            ESX.ShowNotification(_U('not_need_to_use'))
        end
    elseif itemName == 'beefpower' then
        local playerPed = PlayerPedId()
        local health = GetEntityHealth(playerPed)
        beefpowertimer = Config.beefpowertimer * 1000
        
        ESX.ShowNotification(_U('use_beefpower'))
        
        while beefpowertimer > 0 do
            SetEntityHealth(playerPed, health)
            beefpowertimer = beefpowertimer - 200
            Citizen.Wait(200)
        end
    elseif itemName == 'adrenaline' then
        local playerPed = PlayerPedId()
  
        RequestAnimSet("MOVE_M@QUICK") 
        while not HasAnimSetLoaded("MOVE_M@QUICK") do
            Citizen.Wait(0)
        end    
        ESX.ShowNotification(_U('use_adrenaline'))
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
        Citizen.Wait(3000)
        ClearPedTasksImmediately(playerPed)
        SetTimecycleModifier("spectator5")
        SetPedMotionBlur(playerPed, true)
        SetPedMovementClipset(playerPed, "MOVE_M@QUICK", true)
        SetPedIsDrunk(playerPed, true)
	    SetPedMoveRateOverride(PlayerId(),10.0)
        SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
        AnimpostfxPlay("DrugsMichaelAliensFight", 10000001, true)
        Citizen.Wait(Config.adrenalinetimer * 1000)
        -- after wait stop all 
        SetPedMoveRateOverride(PlayerId(),1.0)
        SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
        SetPedIsDrunk(GetPlayerPed(-1), false)		
        SetPedMotionBlur(playerPed, false)
        ResetPedMovementClipset(GetPlayerPed(-1))
        AnimpostfxStopAll()
        SetTimecycleModifierStrength(0.0)
    end
end)