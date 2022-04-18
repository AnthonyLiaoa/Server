local staminaTime = 0
ESX = nil

TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

RegisterNetEvent("eric_specialitems:useHealmedicine")
AddEventHandler("eric_specialitems:useHealmedicine", function()
    ESX.ShowNotification("你服用了一顆超級補血劑")
    SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
    SetPedArmour(PlayerPedId(), 100)
end)

RegisterNetEvent("eric_specialitems:useVigormedicine")
AddEventHandler("eric_specialitems:useVigormedicine", function()
    ESX.ShowNotification("你服用了一顆無限體力丸")
    
    staminaTime = Config.staminaTime

    while staminaTime > 0 do
        staminaTime = staminaTime - 50
        ResetPlayerStamina(PlayerPedId())
        Citizen.Wait(50)
        --print(staminaTime)
    end
end)