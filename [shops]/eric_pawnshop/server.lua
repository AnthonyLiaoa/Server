ESX = nil

TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

ESX.RegisterServerCallback("eric_pawnshop:getPlayerItems", function(source, cb, shop)
    print(Config.Shop[shop].Items)
    local elements = {}
    local xPlayer = ESX.GetPlayerFromId(source)

    for a,b in ipairs(Config.Shop[shop].Items) do
        local isJob = false

        if b.jobs ~= "any" then
            for k, v in pairs(b.jobs) do
                if xPlayer.job.name == v then
                    isJob = true
                end
            end
        end

        if b.jobs == "any" or isJob then
            local sourceItem = xPlayer.getInventoryItem(b.name)

            if sourceItem.count > 0 then
                table.insert(elements, {label = sourceItem.label, price = b.price, name = b.name, black = b.black_money, count = sourceItem.count})
            end
        end
    end

    cb(elements)
end)

RegisterServerEvent("eric_pawnshop:sellItem")
AddEventHandler("eric_pawnshop:sellItem", function(item, count, price, black)
    local xPlayer = ESX.GetPlayerFromId(source)
    local sourceItem = xPlayer.getInventoryItem(item)

    if sourceItem.count < count then
        TriggerClientEvent("esx:showNotification", source, _U("not_enough_count"))
    else
        xPlayer.removeInventoryItem(item, count)

        if black then
            xPlayer.addAccountMoney("black_money", count * price)
        else
            xPlayer.addMoney(count * price)
        end
        TriggerClientEvent("esx:showNotification", source, _U("sell", sourceItem.label, count, price * count))
    end
end)

print("\nCreate by AiReiKe\nThanks for using eric_pawnshop\n")