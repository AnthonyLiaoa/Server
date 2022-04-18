--==================================================================================
--======               ESX_IDENTITY BY ARKSEYONET @Ark                        ======
--======    YOU CAN FIND ME ON MY DISCORD @Ark - https://discord.gg/cGHHxPX   ======
--======    IF YOU ALTER THIS VERSION OF THE SCRIPT, PLEASE GIVE ME CREDIT    ======
--======     Special Thanks To Alphakush and CMD.Telhada For Help Testing     ======
--==================================================================================

--===============================================
--==                 VARIABLES                 ==
--===============================================
local guiEnabled = false
local myIdentity = {}

--===============================================
--==                 VARIABLES                 ==
--===============================================
function EnableGui(enable)
    SetNuiFocus(enable)
    guiEnabled = enable

    SendNUIMessage({
        type = "enableui",
        enable = enable
    })
end

function openRegistry()
  TriggerEvent('esx_identity:showRegisterIdentity')
end

--===============================================
--==           Show Registration               ==
--===============================================
RegisterNetEvent("esx_identity:showRegisterIdentity")
AddEventHandler("esx_identity:showRegisterIdentity", function()
  EnableGui(true)
end)

--===============================================
--==              Close GUI                    ==
--===============================================
RegisterNUICallback('escape', function(data, cb)
    EnableGui(false)
end)

--===============================================
--==           Register Callback               ==
--===============================================
RegisterNUICallback('register', function(data, cb)
  myIdentity = data
  TriggerServerEvent('esx_identity:setIdentity', data)
  EnableGui(false)
  Wait (500)
  TriggerEvent('esx_skin:openSaveableMenu')
end)



--===============================================
--==                 THREADING                 ==
--===============================================
Citizen.CreateThread(function()
    while true do
        if guiEnabled then
            DisableControlAction(0, 1, guiEnabled) -- LookLeftRight
            DisableControlAction(0, 2, guiEnabled) -- LookUpDown
            DisableControlAction(0, 106, true) -- VehicleMouseControlOverride
			DisableControlAction(0, 30, true) -- MoveLeftRight
            DisableControlAction(0, 31, true) -- MoveUpDown
			DisableControlAction(0, 21, true) 
			DisableControlAction(0, 24, true)
			DisableControlAction(0, 25, true)
			DisableControlAction(0, 47, true)
			DisableControlAction(0, 58, true) 
			DisableControlAction(0, 263, true)
			DisableControlAction(0, 264, true) 
			DisableControlAction(0, 257, true)
			DisableControlAction(0, 140, true)
			DisableControlAction(0, 141, true)
            DisableControlAction(0, 142, guiEnabled)			-- MeleeAttackAlternate
			DisableControlAction(0, 143, true)
			DisableControlAction(0, 75, true)
			DisableControlAction(27, 75, true)
			DisableControlAction(0, 245, true)
			DisableControlAction(0, 309, true)
            DisableControlAction(0, 18, guiEnabled) -- Enter
            DisableControlAction(0, 322, guiEnabled) -- ESC
            DisableControlAction(0, 106, guiEnabled) -- VehicleMouseControlOverride

            if IsDisabledControlJustReleased(0, 142) then -- MeleeAttackAlternate
                SendNUIMessage({
                    type = "click"
                })
            end
        end
        Citizen.Wait(0)
    end
end)
