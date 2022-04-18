Config = {}
Config.ReviveCost  = 8000    --復活費用
Config.MinEms      = 2       --若醫護小於x則復活醫護
Config.EmsWait     = 60000   --醫護等待時間
Config.CitizenWait = 180000  --市民等待時間

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('MK:PlayerDied')
AddEventHandler('MK:PlayerDied', function(_source)
    local xSource = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

    local EMS = 0
	for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        
        if xPlayer.job.name == 'ambulance' then
            EMS = EMS + 1
        end
    end
	
    Citizen.SetTimeout(1000, function()
        if EMS <= Config.MinEms then

            if xSource.job.name == 'ambulance' then
                TriggerClientEvent("chat:addMessage", _source, {
                    args = { '^1^*目前醫護人力不足，你將會在1分鐘後自動復活。' },
                    color = { 255, 255, 255 }
                })
                Citizen.SetTimeout(Config.EmsWait, function()
                    TriggerClientEvent('MK:revive', _source)
                end)

            elseif EMS == 0 then
                TriggerClientEvent("chat:addMessage", _source, {
                    args = { '^1^*目前醫護人力不足，你將會在3分鐘後自動復活。' },
                    color = { 255, 255, 255 }
                })
                Citizen.SetTimeout(Config.CitizenWait, function()
                    TriggerClientEvent('MK:revive', _source)
                end)
            end
        end
    end)
end)

RegisterNetEvent('MK:PayforRevive')
AddEventHandler('MK:PayforRevive', function(_source)
    local xSource = ESX.GetPlayerFromId(_source)

    if xSource.job.name == 'ambulance' then
        return
    end

    TriggerEvent('esx_society:getSociety', 'ambulance', function (society)
        TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
            if xSource.getMoney() >= Config.ReviveCost then
                xSource.removeMoney(Config.ReviveCost)
            elseif xSource.getAccount('bank').money >= Config.ReviveCost then
                xSource.removeAccountMoney('bank', Config.ReviveCost)
            end
            account.addMoney(Config.ReviveCost)
            TriggerClientEvent('esx:showNotification', _source, '你已支付 ' .. Config.ReviveCost .. ' 元')
        end)
    end)
end)