ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function secondsToClock(seconds)
  local seconds = tonumber(seconds)

  if seconds <= 0 then
    return "00:00:00";
  else
    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    return hours..":"..mins..":"..secs
  end
end

RegisterServerEvent('esx_moneywash:washMoney')
AddEventHandler('esx_moneywash:washMoney', function(amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	local rate
	local ticketQuantity = xPlayer.getInventoryItem('moneywashid').count
	
	if ticketQuantity > 0 then
		
    

	for a,b in pairs(Config.Zones) do
		for i = 1, #b.Jobs, 1 do
			if b.Jobs[i] == xPlayer.job.name then
				rate = b.Rate
			end
		end
	end

	amount = ESX.Math.Round(tonumber(amount))
	washedCash = amount * rate
	washedTotal = ESX.Math.Round(tonumber(washedCash))
	
	if Config.enableTimer == true then
		local timer = Config.timer
		local timeClock = ESX.Math.Round(timer / 1000)
	
		if amount > 0 and xPlayer.getAccount('black_money').money >= amount then
			xPlayer.removeAccountMoney('black_money', amount)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_washed_waiting') ..  secondsToClock(timeClock))
			Citizen.Wait(timer)
			
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_received') .. ESX.Math.GroupDigits(washedTotal) .. _U('clean_money'))
			xPlayer.addMoney(washedTotal)
			
			if xPlayer.job.name == "thelostmc" then
				TriggerEvent("azk_discordlogs:ThelostmcLogs", "wash", xPlayer.source, amount)
			elseif xPlayer.job.name == "grove" then
				TriggerEvent("azk_discordlogs:GroveLogs", "wash", xPlayer.source, amount)
			elseif xPlayer.job.name == "Mafia" then
				TriggerEvent("azk_discordlogs:MafiaLogs", "wash", xPlayer.source, amount)
			elseif xPlayer.job.name == "borth" then
				TriggerEvent("azk_discordlogs:borthLogs'", "wash", xPlayer.source, amount)
			end
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
		end
	else 
	
		if amount > 0 and xPlayer.getAccount('black_money').money >= amount then
			xPlayer.removeAccountMoney('black_money', amount)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_have_washed') .. ESX.Math.GroupDigits(amount) .. _U('dirty_money') .. _U('you_have_received') .. ESX.Math.GroupDigits(washedTotal) .. _U('clean_money'))
			xPlayer.addMoney(washedTotal)

			if xPlayer.job.name == "thelostmc" then
				TriggerEvent("azk_discordlogs:ThelostmcLogs", "wash", xPlayer.source, amount, "", "", "")
			elseif xPlayer.job.name == "grove" then
				TriggerEvent("azk_discordlogs:GroveLogs", "wash", xPlayer.source, amount, "", "", "")
			elseif xPlayer.job.name == "Mafia" then
				TriggerEvent("azk_discordlogs:MafiaLogs", "wash", xPlayer.source, amount, "", "", "")
			elseif xPlayer.job.name == "borth" then
				TriggerEvent("azk_discordlogs:borthLogs'", "wash", xPlayer.source, amount, "", "", "")
			end
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_amount'))
		end
	end
	
    else
	    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('donothasitem'))
    end


end)