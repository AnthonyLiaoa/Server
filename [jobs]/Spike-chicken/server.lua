ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("Spike-rawchicken")
AddEventHandler("Spike-rawchicken", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local sourceItem = xPlayer.getInventoryItem("slaughtered_chicken")

    if xPlayer.getInventoryItem('alive_chicken') ~= nil and xPlayer.getInventoryItem('alive_chicken').count >= Config.AliveToSlaughter then
        if sourceItem.count + Config.AliveToSlaughter <= sourceItem.limit then
            xPlayer.removeInventoryItem("alive_chicken", Config.AliveToSlaughter)
            xPlayer.addInventoryItem("slaughtered_chicken", Config.AliveToSlaughter)
            TriggerClientEvent('esx:showNotification', src, "你屠宰了 ".. Config.AliveToSlaughter .." 隻~b~活雞")
        else
            xPlayer.removeInventoryItem("alive_chicken", sourceItem.limit - sourceItem.count)
            xPlayer.addInventoryItem("slaughtered_chicken", sourceItem.limit - sourceItem.count)
            TriggerClientEvent('esx:showNotification', src, "你屠宰了 ".. sourceItem.limit - sourceItem.count .." 隻~b~活雞")
        end
    else
        TriggerClientEvent('esx:showNotification', src, "你沒有足夠的活雞")
    end
end)

RegisterNetEvent("Spike-alivechicken")
AddEventHandler("Spike-alivechicken", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local sourceItem = xPlayer.getInventoryItem("alive_chicken")
    
    if sourceItem.count < sourceItem.limit then
        if sourceItem.count + Config.CatchPerSearch <= sourceItem.limit then
            xPlayer.addInventoryItem('alive_chicken', Config.CatchPerSearch)
            TriggerClientEvent('esx:showNotification', src, "你得到了 ".. Config.CatchPerSearch .." 隻~b~活雞")
        else
            xPlayer.addInventoryItem('alive_chicken', sourceItem.limit - sourceItem.count)
            TriggerClientEvent('esx:showNotification', src, "你得到了 ".. sourceItem.limit - sourceItem.count .." 隻~b~活雞")
        end
    else
        TriggerClientEvent("esx:showNotification", src, "你帶不動活雞了")
    end
end)

RegisterNetEvent("Spike-packchicken")
AddEventHandler("Spike-packchicken", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local sourceItem = xPlayer.getInventoryItem("packaged_chicken")
    if xPlayer.getInventoryItem('slaughtered_chicken') ~= nil and xPlayer.getInventoryItem('slaughtered_chicken').count >= 1 then
        if sourceItem.count + Config.SlaughterToPack <= sourceItem.limit then
            xPlayer.removeInventoryItem("slaughtered_chicken", 1)
            xPlayer.addInventoryItem("packaged_chicken", Config.SlaughterToPack)
            TriggerClientEvent('esx:showNotification', src, "你獲得 "..Config.SlaughterToPack.." 個~b~ 包裝雞")
        else
            TriggerClientEvent('esx:showNotification', src, "你帶不動更多的包裝雞了")
        end
    else
        TriggerClientEvent('esx:showNotification', src, "你沒有足夠的屠宰雞")
    end
end)

RegisterNetEvent("Spike-sellchicken")
AddEventHandler("Spike-sellchicken", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    if xPlayer.getInventoryItem('packaged_chicken') ~= nil and xPlayer.getInventoryItem('packaged_chicken').count >= Config.NumberOfSellOneTime then
    xPlayer.removeInventoryItem("packaged_chicken", Config.NumberOfSellOneTime)
    xPlayer.addMoney(Config.SellPrice)
    TriggerClientEvent('esx:showNotification', src, "你賣了 ".. Config.NumberOfSellOneTime .." 個~b~包裝雞")
    else
        TriggerClientEvent('esx:showNotification', src, "你必須有~r~ ".. Config.NumberOfSellOneTime .."~w~個~b~ 包裝雞~w~方可販賣")
    end
end)