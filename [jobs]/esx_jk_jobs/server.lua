ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_jk_jobs:setJobs')
AddEventHandler('esx_jk_jobs:setJobs', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("slaughterer", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~屠宰場 ~s~!')
end)

RegisterServerEvent('esx_jk_jobs:setJobm')
AddEventHandler('esx_jk_jobs:setJobm', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("miner", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~礦場 ~s~!')
end)

RegisterServerEvent('esx_jk_jobs:setJobl')
AddEventHandler('esx_jk_jobs:setJobl', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("lumberjack", 0)-- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~伐木場 ~s~!')
end)

RegisterServerEvent('esx_jk_jobs:setJobt')
AddEventHandler('esx_jk_jobs:setJobt', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("textil", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~裁縫店 ~s~!')	
end)

RegisterServerEvent('esx_jk_jobs:setJobu')
AddEventHandler('esx_jk_jobs:setJobu', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("unemployed", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~代工廠 ~s~!')	
end)

RegisterServerEvent('esx_jk_jobs:setJobthief')
AddEventHandler('esx_jk_jobs:setJobthief', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("thief", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~神偷 ~s~!')	
end)

RegisterServerEvent('esx_jk_jobs:setJobfisherman')
AddEventHandler('esx_jk_jobs:setJobfisherman', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("fisherman", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~海鮮愛好者 ~s~!')	
end)

RegisterServerEvent('esx_jk_jobs:setJobgrove')
AddEventHandler('esx_jk_jobs:setJobgrove', function(job)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.setJob("grove", 0) -- 0 is job grade
	TriggerClientEvent('esx:showNotification', source, '你選擇工作: ~g~懿蘭坊(職業交易所) ~s~!')	
end)
