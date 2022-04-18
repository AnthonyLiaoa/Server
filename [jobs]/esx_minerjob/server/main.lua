ESX               = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("esx_miner:givestone")
AddEventHandler("esx_miner:givestone", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('stone').count < 100 then
                xPlayer.addInventoryItem('stone', 5)
                TriggerClientEvent('esx:showNotification', source, '你得到了5個~b~原礦')
            else
                TriggerClientEvent('esx:showNotification', source, '你無法攜帶更多的~b~原礦')
            end
        end
    end)

    
RegisterNetEvent("esx_miner:washing")
AddEventHandler("esx_miner:washing", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('stone').count > 9 then
                TriggerClientEvent("esx_miner:washing", source)
                Citizen.Wait(15900)
                xPlayer.addInventoryItem('washed_stone', 10)
                xPlayer.removeInventoryItem("stone", 10)
            elseif xPlayer.getInventoryItem('stone').count < 10 then
                TriggerClientEvent('esx:showNotification', source, '你沒有足夠的~b~原礦.')
            end
        end
    end)

RegisterNetEvent("esx_miner:remelting")
AddEventHandler("esx_miner:remelting", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local randomChance = math.random(1, 100)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('washed_stone').count > 9 then
                TriggerClientEvent("esx_miner:remelting", source)
                Citizen.Wait(15900)
                if randomChance < 15 then
                    xPlayer.addInventoryItem("diamond", 1)
                    xPlayer.removeInventoryItem("washed_stone", 10)
                    TriggerClientEvent('esx:showNotification', _source, '你得到~b~1個鑽石~w~')
                elseif randomChance > 15 and randomChance < 30 then
                    xPlayer.addInventoryItem("gold", 5)
                    xPlayer.removeInventoryItem("washed_stone", 10)
                    TriggerClientEvent('esx:showNotification', _source, '你得到~y~5個黃金~w~')
                elseif randomChance > 30 and randomChance < 60 then
                    xPlayer.addInventoryItem("iron", 10)
                    xPlayer.removeInventoryItem("washed_stone", 10)
                    TriggerClientEvent('esx:showNotification', _source, '你得到~w~10個鐵礦')
                elseif randomChance > 60 then
                    xPlayer.addInventoryItem("copper", 20)
                    xPlayer.removeInventoryItem("washed_stone", 10)
                    TriggerClientEvent('esx:showNotification', _source, '你得到~o~20個銅礦~w~')
                end
            elseif xPlayer.getInventoryItem('washed_stone').count < 10 then
                TriggerClientEvent('esx:showNotification', source, '你沒有足夠的~b~洗淨的原礦')
            end
        end
    end)

RegisterNetEvent("esx_miner:selldiamond")
AddEventHandler("esx_miner:selldiamond", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('diamond').count > 0 then
                local pieniadze = Config.DiamondPrice
                xPlayer.removeInventoryItem('diamond', 1)
                xPlayer.addMoney(pieniadze)
                TriggerClientEvent('esx:showNotification', source, '你賣了~b~1個鑽石')
            elseif xPlayer.getInventoryItem('diamond').count < 1 then
                TriggerClientEvent('esx:showNotification', source, '你沒有足夠的~b~鑽石')
            end
        end
    end)

RegisterNetEvent("esx_miner:sellgold")
AddEventHandler("esx_miner:sellgold", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('gold').count > 4 then
                local pieniadze = Config.GoldPrice
                xPlayer.removeInventoryItem('gold', 5)
                xPlayer.addMoney(pieniadze)
                TriggerClientEvent('esx:showNotification', source, '你賣了~y~5個黃金')
            elseif xPlayer.getInventoryItem('gold').count < 5 then
                TriggerClientEvent('esx:showNotification', source, '你沒有足夠的~b~黃金')
            end
        end
    end)

RegisterNetEvent("esx_miner:selliron")
AddEventHandler("esx_miner:selliron", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('iron').count > 9 then
                local pieniadze = Config.IronPrice
                xPlayer.removeInventoryItem('iron', 10)
                xPlayer.addMoney(pieniadze)
                TriggerClientEvent('esx:showNotification', source, '你賣了~w~10個鐵礦')
            elseif xPlayer.getInventoryItem('iron').count < 10 then
                TriggerClientEvent('esx:showNotification', source, '你沒有足夠的~b~鐵礦.')
            end
        end
    end)

RegisterNetEvent("esx_miner:sellcopper")
AddEventHandler("esx_miner:sellcopper", function(item, count)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
        if xPlayer ~= nil then
            if xPlayer.getInventoryItem('copper').count > 19 then
                local pieniadze = Config.CopperPrice
                xPlayer.removeInventoryItem('copper', 20)
                xPlayer.addMoney(pieniadze)
                TriggerClientEvent('esx:showNotification', source, '你賣了~o~20個銅礦')
            elseif xPlayer.getInventoryItem('copper').count < 20 then
                TriggerClientEvent('esx:showNotification', source, '你沒有足夠的~b~銅礦')
            end
        end
    end)
