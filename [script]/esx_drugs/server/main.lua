ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function GetCops()
	local xPlayers = ESX.GetPlayers()
	local Cops = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			Cops = Cops + 1
		end
	end

	return Cops
end

RegisterServerEvent('esx_illegal:sellDrug')
AddEventHandler('esx_illegal:sellDrug', function(itemName, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = Config.DrugDealerItems[itemName]
	local xItem = xPlayer.getInventoryItem(itemName)

	if not price then
		print(('esx_illegal: %s attempted to sell an invalid drug!'):format(xPlayer.identifier))
		return
	end

	if xItem.count < amount then
		TriggerClientEvent('esx:showNotification', source, _U('dealer_notenough'))
		return
	end

	price = ESX.Math.Round(price * amount)

	if Config.GiveBlack then
		xPlayer.addAccountMoney('black_money', price)
	else
		xPlayer.addMoney(price)
	end

	xPlayer.removeInventoryItem(xItem.name, amount)

	TriggerEvent("azk_discordlogs:selldrugs", source, itemName, amount)

	TriggerClientEvent('esx:showNotification', source, _U('dealer_sold', ESX.Math.GroupDigits(price), xItem.label, amount))
end)

ESX.RegisterServerCallback('esx_illegal:buyLicense', function(source, cb, licenseName)
	local xPlayer = ESX.GetPlayerFromId(source)
	local license = Config.LicensePrices[licenseName]

	if license == nil then
		print(('esx_illegal: %s attempted to buy an invalid license!'):format(xPlayer.identifier))
		cb(false)
	end

	if xPlayer.getMoney() >= license.price then
		xPlayer.removeMoney(license.price)

		TriggerEvent('esx_license:addLicense', source, licenseName, function()
			cb(true)
		end)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_illegal:canPickUp', function(source, cb, item)
	if GetCops() < Config.RequiredCops then
		TriggerClientEvent('esx:showNotification', source, '警察數量不足！')
		cb(false)
		return false
	end

	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem(item)

	if xItem.limit ~= -1 and xItem.count >= xItem.limit then
		cb(false)
	else
		cb(true)
	end
end)
