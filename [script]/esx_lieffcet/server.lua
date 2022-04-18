--This script is property of OurStory RP but has been released for free on the FiveM forums. Do NOT redisribute this for money or claim to have written it yourself. 
--If you use this script, all I ask is that you credit me using my Discord account 4th#4444
--Also, I politely request that you do not rename the script however if you really want to I wont stop you.
--Video showcase: https://www.youtube.com/watch?v=a-StxdwHPfE

ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('morphine', function(source)   ----嗎啡 SQL items 需新增 morphine
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('morphine', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', -100000)  ---消耗狀態值(口渴)
	TriggerClientEvent('esx_status:add', source, 'hunger', -100000)  ---消耗狀態值(飢餓)
	TriggerClientEvent('OurStoryMorphine:inject', source)
end)


ESX.RegisterUsableItem('morphine2', function(source)    ----腎上腺素 SQL items 需新增 morphine2
	local xPlayer = ESX.GetPlayerFromId(source)    
	xPlayer.removeInventoryItem('morphine2', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', -100000)  ---消耗狀態值(口渴)
	TriggerClientEvent('esx_status:add', source, 'hunger', -100000)  ---消耗狀態值(飢餓)
	TriggerClientEvent('OurStoryMorphine:inject2', source)
end)