ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_blackmoney:washMoney')
AddEventHandler('esx_blackmoney:washMoney', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local job = xPlayer.job.name
	local accountMoney = 0
	
	accountMoney = xPlayer.getAccount('black_money').money

	local ticketQuantity = xPlayer.getInventoryItem('moneywashid').count
	
		if job == "thelostmc" and ticketQuantity > 0 then
			if accountMoney < amount then
				notification('你沒有足夠的 ~r~黑錢~s~ 來洗白')
			else
				xPlayer.removeAccountMoney('black_money', amount)
				xPlayer.addMoney(amount)
				notification('你 ~g~洗了~s~ '..amount..' ~r~的黑錢')
				TriggerEvent("azk_discordlogs:ThelostmcLogs",'wash', source,amount)

			end
		else
			notification('你沒有洗黑錢的權限，請去找黑幫老大，謝謝')
		end
end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end

RegisterServerEvent('esx_blackmoney:washMoney')
AddEventHandler('esx_blackmoney:washMoney', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local job = xPlayer.job.name
	local accountMoney = 0
	
	accountMoney = xPlayer.getAccount('black_money').money

	local ticketQuantity = xPlayer.getInventoryItem('moneywashid').count
	
		if job == "grove" and ticketQuantity > 0 then
			if accountMoney < amount then
				notification('你沒有足夠的 ~r~黑錢~s~ 來洗白')
			else
				xPlayer.removeAccountMoney('black_money', amount)
				xPlayer.addMoney(amount)
				notification('你 ~g~洗了~s~ '..amount..' ~r~的黑錢')
				TriggerEvent("azk_discordlogs:GroveLogs",'wash', source,amount)
			end
		else
			notification('你沒有洗黑錢的權限，請去找黑幫老大，謝謝')
		end
end)

RegisterServerEvent('esx_blackmoney:washMoney')
AddEventHandler('esx_blackmoney:washMoney', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local job = xPlayer.job.name
	local accountMoney = 0
	
	accountMoney = xPlayer.getAccount('black_money').money

	local ticketQuantity = xPlayer.getInventoryItem('moneywashid').count
	
		if job == "mafia" and ticketQuantity > 0 then
			if accountMoney < amount then
				notification('你沒有足夠的 ~r~黑錢~s~ 來洗白')
			else
				xPlayer.removeAccountMoney('black_money', amount)
				xPlayer.addMoney(amount)
				notification('你 ~g~洗了~s~ '..amount..' ~r~的黑錢')
				TriggerEvent("azk_discordlogs:GroveLogs",'wash', source,amount)
			end
		else
			notification('你沒有洗黑錢的權限，請去找黑幫老大，謝謝')
		end
end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end