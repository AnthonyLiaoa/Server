ESX = nil

TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

ESX.RegisterUsableItem("healmedicine", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    print(838578)
    xPlayer.removeInventoryItem("healmedicine", 1)
    TriggerClientEvent("eric_specialitems:useHealmedicine", source)
end)

ESX.RegisterUsableItem("vigormedicine", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    print(838578)
    xPlayer.removeInventoryItem("vigormedicine", 1)
    TriggerClientEvent("eric_specialitems:useVigormedicine", source)
end)