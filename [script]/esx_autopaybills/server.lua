ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function SocietyInvest(d, h, m)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_police', function(account)
		account.addMoney(Config.SocietyPolice)
	end)
	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ambulance', function(account)
		account.addMoney(Config.SocietyAmbulance)
	end)
end


function PayBills(d, h, m)
	--print("服務器支付的當前賬單可能會暫時滯後")
	CreateThread(function()
		Wait(0)
		--MySQL.Async.fetchAll('SELECT * FROM billing WHERE TO_DAYS(NOW()) - TO_DAYS(time) > '..Config.OverTime, {}, function (result)
		MySQL.Async.fetchAll('SELECT * FROM billing', {}, function (result)
		
			for i=1, #result, 1 do

		
				local xPlayer = ESX.GetPlayerFromIdentifier(result[i].identifier)
				
				-- message player if connected
				if xPlayer then
					local accountMoney = xPlayer.getAccount('bank').money

							xPlayer.removeAccountMoney('bank', result[i].amount*Config.MaxPercentPay)
							TriggerClientEvent('esx:showNotification', xPlayer.source, "您已被政府強制徵收 ".. ESX.Math.GroupDigits(result[i].amount*Config.MaxPercentPay).."逾期未繳繳費單")
							TriggerEvent('esx_addonaccount:getSharedAccount', result[i].target, function(account)
								account.addMoney(result[i].amount*Config.MaxPercentPay)
							end)
							MySQL.Sync.execute('DELETE FROM billing WHERE `id` = @id',
							{
								['@id'] = result[i].id
							})
							--print(xPlayer.name.." 支付 "..result[i].amount.." 逾期未繳繳費單 "..result[i].target)
								local name = ESX.GetPlayerName(xPlayer.identifier)
								local amount = result[i].amount
								local target = result[i].target
								local label = result[i].label
							TriggerEvent('dclog:autopaybills',name,(amount*Config.MaxPercentPay),label,Config.MaxPercentPay)
						
					
				else -- pay rent either way
				
					MySQL.Async.fetchScalar('SELECT bank FROM users WHERE identifier = @identifier', 
					{
						['@identifier'] = result[i].identifier
					}, function(bankmoney)
					


								MySQL.Sync.execute('UPDATE users SET bank = bank - @bank WHERE identifier = @identifier',
								{
									['@bank']       = result[i].amount*Config.MaxPercentPay,
									['@identifier'] = result[i].identifier
								})
								TriggerEvent('esx_addonaccount:getSharedAccount', result[i].target, function(account)
									account.addMoney(result[i].amount*Config.MaxPercentPay)
								end)
								MySQL.Sync.execute('DELETE FROM billing WHERE `id` = @id',
								{
									['@id'] = result[i].id
								})
								local name = ESX.GetPlayerName(result[i].identifier)
								local amount = result[i].amount
								local target = result[i].target
								local label = result[i].label
								--print(name.." 支付 "..(amount).."逾期未繳繳費單"..target)
								TriggerEvent('dclog:autopaybills',name,(amount*Config.MaxPercentPay),label,Config.MaxPercentPay)

						
					end)
				end
				Citizen.Wait(1000)
			end
		end)
	end)
end

if Config.SocietyInvest then
	TriggerEvent('cron:runAt', 22, 0, SocietyInvest)
end

if Config.AutoPayBills then
	Citizen.CreateThread(function()
		Citizen.Wait(5000)
		PayBills()	
	end)
	TriggerEvent('cron:runAt', 24, 0, PayBills)
end