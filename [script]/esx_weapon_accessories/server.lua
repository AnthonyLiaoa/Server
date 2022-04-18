local ESX = nil
 
TriggerEvent('esx:getSharedObject', function( obj ) ESX = obj end)

ESX.RegisterUsableItem('weaponAcc_Add', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('weaponAcc_Add', 1)
    TriggerClientEvent('WeaponAcc:Add', source)
end)

ESX.RegisterUsableItem('weaponAcc_Remove', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('weaponAcc_Remove', 1)
    TriggerClientEvent('WeaponAcc:Remove', source)
end)

ESX.RegisterUsableItem('weaponAcc_Skin', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('weaponAcc_Skin', 1)
    TriggerClientEvent('WeaponAcc:Skin', source)
end)

ESX.RegisterUsableItem('weaponAcc_Color', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('weaponAcc_Color', 1)
    TriggerClientEvent('WeaponAcc:Color', source)
end)

RegisterServerEvent('SetWeaponToSQL')
AddEventHandler('SetWeaponToSQL', function(Weapon, Component)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.addWeaponComponent(Weapon, Component)
end)

RegisterServerEvent('RemoveWeaponToSQL')
AddEventHandler('RemoveWeaponToSQL', function(Weapon, Component)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeWeaponComponent(Weapon, Component)
end)