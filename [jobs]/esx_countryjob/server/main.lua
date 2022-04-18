local time_out = {}
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'country', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'country', _U('alert_country'), true, true)
TriggerEvent('esx_society:registerSociety', 'country', 'country', 'society_country', 'society_country', 'society_country', {type = 'public'})

RegisterServerEvent('esx_countryjob:confiscatePlayerItem')
AddEventHandler('esx_countryjob:confiscatePlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if sourceXPlayer.job.name ~= 'country' then
		print(('esx_countryjob: %s attempted to confiscate!'):format(xPlayer.identifier))
		return
	end

	if itemType == 'item_standard' then
		local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)

		-- does the target player have enough in their inventory?
		if targetItem.count > 0 and targetItem.count <= amount then

			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + amount) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				targetXPlayer.removeInventoryItem(itemName, amount)
				--sourceXPlayer.addInventoryItem   (itemName, amount)
				TriggerEvent('esx_addoninventory:getSharedInventory', 'society_country', function(inventory)
					local inventoryItem = inventory.getItem(itemName)
			
					-- does the player have enough of the item?
					inventory.addItem(itemName, amount)
				end)
				TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated', amount, sourceItem.label, targetXPlayer.name))
				TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated', amount, sourceItem.label, sourceXPlayer.name))
				TriggerEvent('azk_discordlogs:countryLogs', 'confiscate', _source, sourceItem.label, amount, target)
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))	
		end

	elseif itemType == 'item_account' then
		targetXPlayer.removeAccountMoney(itemName, amount)
		--sourceXPlayer.addAccountMoney   (itemName, amount)

		TriggerEvent("esx_addonaccount:getSharedAccount", "society_country_blackMoney", function(account)
            account.addMoney(amount)
        end)
		TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated_account', amount, itemName, targetXPlayer.name))
		TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated_account', amount, itemName, sourceXPlayer.name))
		TriggerEvent('azk_discordlogs:countryLogs', 'confiscate', _source, itemName, amount, target)
		

	elseif itemType == 'item_weapon' then
		if amount == nil then amount = 0 end
		targetXPlayer.removeWeapon(itemName, amount)
		--sourceXPlayer.addWeapon   (itemName, amount)

		TriggerEvent('esx_datastore:getSharedDataStore', 'society_country', function(store)
			local weapons = store.get('weapons')
	
			if weapons == nil then
				weapons = {}
			end
	
			local foundWeapon = false
	
			for i=1, #weapons, 1 do
				if weapons[i].name == itemName then
					weapons[i].count = weapons[i].count + 1
					foundWeapon = true
					break
				end
			end
	
			if not foundWeapon then
				table.insert(weapons, {
					name  = itemName,
					count = 1
				})
			end
	
			store.set('weapons', weapons)
		end)

		local label = ESX.GetWeaponLabel(itemName)

		TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated_weapon', label, targetXPlayer.name, amount))
		TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated_weapon', label, amount, sourceXPlayer.name))
		TriggerEvent('azk_discordlogs:countryLogs', 'confiscate', _source, itemName, amount, target)
		
	end

end)

RegisterServerEvent('esx_countryjob:handcuff')
AddEventHandler('esx_countryjob:handcuff', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'country' then
		TriggerClientEvent('esx_countryjob:handcuff', target)
	else
		print(('esx_countryjob: %s attempted to handcuff a player (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_countryjob:drag')
AddEventHandler('esx_countryjob:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'country' then
		TriggerClientEvent('esx_countryjob:drag', target, source)
	else
		print(('esx_countryjob: %s attempted to drag (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_countryjob:putInVehicle')
AddEventHandler('esx_countryjob:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'country' then
		TriggerClientEvent('esx_countryjob:putInVehicle', target)
	else
		print(('esx_countryjob: %s attempted to put in vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_countryjob:OutVehicle')
AddEventHandler('esx_countryjob:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'country' then
		TriggerClientEvent('esx_countryjob:OutVehicle', target)
	else
		print(('esx_countryjob: %s attempted to drag out from vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_countryjob:getStockItem')
AddEventHandler('esx_countryjob:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_country', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then

			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, _U('have_withdrawn', count, inventoryItem.label))
				TriggerEvent('azk_discordlogs:countryLogs', 'get', _source,  inventoryItem.label, count, source)
				 
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end
	end)
end)

RegisterServerEvent('esx_countryjob:putStockItems')
AddEventHandler('esx_countryjob:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_country', function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, inventoryItem.label))
			TriggerEvent('azk_discordlogs:countryLogs', 'put', xPlayer.source,  inventoryItem.label, count, xPlayer.source)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
			
		end
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:getOtherPlayerData', function(source, cb, target)
	if Config.EnableESXIdentity then
		local xPlayer = ESX.GetPlayerFromId(target)
		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateofbirth
		local height    = result[1].height

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			inventory = xPlayer.inventory,
			accounts  = xPlayer.accounts,
			weapons   = xPlayer.loadout,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		if Config.EnableLicenses then
			TriggerEvent('esx_license:getLicenses', target, function(licenses)
				data.licenses = licenses
				cb(data)
			end)
		else
			cb(data)
		end
	else
		local xPlayer = ESX.GetPlayerFromId(target)

		local data = {
			name       = GetPlayerName(target),
			job        = xPlayer.job,
			inventory  = xPlayer.inventory,
			accounts   = xPlayer.accounts,
			weapons    = xPlayer.loadout
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status then
				data.drunk = math.floor(status.percent)
			end
		end)

		TriggerEvent('esx_license:getLicenses', target, function(licenses)
			data.licenses = licenses
		end)

		cb(data)
	end
end)

ESX.RegisterServerCallback('esx_countryjob:getFineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types WHERE category = @category', {
		['@category'] = category
	}, function(fines)
		cb(fines)
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:getVehicleInfos', function(source, cb, plate)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)

		local retrivedInfo = {
			plate = plate
		}

		if result[1] then
			MySQL.Async.fetchAll('SELECT name, firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				if Config.EnableESXIdentity then
					retrivedInfo.owner = result2[1].firstname .. ' ' .. result2[1].lastname
				else
					retrivedInfo.owner = result2[1].name
				end

				cb(retrivedInfo)
			end)
		else
			cb(retrivedInfo)
		end
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:getVehicleFromPlate', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		if result[1] ~= nil then

			MySQL.Async.fetchAll('SELECT name, firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				if Config.EnableESXIdentity then
					cb(result2[1].firstname .. ' ' .. result2[1].lastname, true)
				else
					cb(result2[1].name, true)
				end

			end)
		else
			cb(_U('unknown'), false)
		end
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:getArmoryWeapons', function(source, cb)
	TriggerEvent('esx_datastore:getSharedDataStore', 'society_country', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:addArmoryWeapon', function(source, cb, weaponName, removeWeapon)
	local xPlayer = ESX.GetPlayerFromId(source)

	if removeWeapon then
		xPlayer.removeWeapon(weaponName)
	end

	TriggerEvent('azk_discordlogs:countryLogs', 'put', source,  weaponName, 1000, source)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_country', function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = weapons[i].count + 1
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 1
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:removeArmoryWeapon', function(source, cb, weaponName)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addWeapon(weaponName, 1000)

	TriggerEvent('azk_discordlogs:countryLogs', 'get', source,  weaponName, 1000, source)

	TriggerEvent('esx_datastore:getSharedDataStore', 'society_country', function(store)
		
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:buyWeapon', function(source, cb, weaponName, type, componentNum)
	local xPlayer = ESX.GetPlayerFromId(source)
	local authorizedWeapons, selectedWeapon = Config.AuthorizedWeapons[xPlayer.job.grade_name]

	for k,v in ipairs(authorizedWeapons) do
		if v.weapon == weaponName then
			selectedWeapon = v
			break
		end
	end

	if not selectedWeapon then
		print(('esx_countryjob: %s attempted to buy an invalid weapon.'):format(xPlayer.identifier))
		cb(false)
	else
		-- Weapon
		if type == 1 then
			if xPlayer.getMoney() >= selectedWeapon.price then
				xPlayer.removeMoney(selectedWeapon.price)
				xPlayer.addWeapon(weaponName, 100)

				cb(true)
			else
				cb(false)
			end

		-- Weapon Component
		elseif type == 2 then
			local price = selectedWeapon.components[componentNum]
			local weaponNum, weapon = ESX.GetWeapon(weaponName)

			local component = weapon.components[componentNum]

			if component then
				if xPlayer.getMoney() >= price then
					xPlayer.removeMoney(price)
					xPlayer.addWeaponComponent(weaponName, component.name)

					cb(true)
				else
					cb(false)
				end
			else
				print(('esx_countryjob: %s attempted to buy an invalid weapon component.'):format(xPlayer.identifier))
				cb(false)
			end
		end
	end
end)


ESX.RegisterServerCallback('esx_countryjob:buyJobVehicle', function(source, cb, vehicleProps, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

	-- vehicle model not found
	if price == 0 then
		print(('esx_countryjob: %s attempted to exploit the shop! (invalid vehicle model)'):format(xPlayer.identifier))
		cb(false)
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)

			MySQL.Async.execute('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, `stored`) VALUES (@owner, @vehicle, @plate, @type, @job, @stored)', {
				['@owner'] = xPlayer.identifier,
				['@vehicle'] = json.encode(vehicleProps),
				['@plate'] = vehicleProps.plate,
				['@type'] = type,
				['@job'] = xPlayer.job.name,
				['@stored'] = true
			}, function (rowsChanged)
				cb(true)
			end)
		else
			cb(false)
		end
	end
end)

ESX.RegisterServerCallback('esx_countryjob:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				print(('esx_countryjob: %s has exploited the garage!'):format(xPlayer.identifier))
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end

end)

function getPriceFromHash(hashKey, jobGrade, type)
	if type == 'helicopter' then
		local vehicles = Config.AuthorizedHelicopters[jobGrade]

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end

	elseif type == 'boat' then
		local vehicles = Config.AuthorizedBoats[jobGrade]
	
		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	elseif type == 'car' then
		local vehicles = Config.AuthorizedVehicles[jobGrade]
		local shared = Config.AuthorizedVehicles['Shared']

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end

		for k,v in ipairs(shared) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	end

	return 0
end

ESX.RegisterServerCallback('esx_countryjob:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_country', function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('esx_countryjob:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)

AddEventHandler('playerDropped', function()
	-- Save the source in case we lose it (which happens a lot)
	local _source = source

	-- Did the player ever join?
	if _source ~= nil then
		local xPlayer = ESX.GetPlayerFromId(_source)

		-- Is it worth telling all clients to refresh?
		if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'country' then
			Citizen.Wait(5000)
			TriggerClientEvent('esx_countryjob:updateBlip', -1)
		end
	end
end)

RegisterServerEvent('esx_countryjob:spawned')
AddEventHandler('esx_countryjob:spawned', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'country' then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_countryjob:updateBlip', -1)
	end
end)

RegisterServerEvent('esx_countryjob:forceBlip')
AddEventHandler('esx_countryjob:forceBlip', function()
	TriggerClientEvent('esx_countryjob:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('esx_countryjob:updateBlip', -1)
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('esx_phone:removeNumber', 'country')
	end
end)

RegisterServerEvent('esx_countryjob:message')
AddEventHandler('esx_countryjob:message', function(target, msg)
	TriggerClientEvent('esx:showNotification', target, msg)
end)

RegisterServerEvent("esx_countryjob:tracker")
AddEventHandler("esx_countryjob:tracker", function(plate)
    local xPlayers = ESX.GetPlayers()

    for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		
        if xPlayer.job.name == 'country' then
            TriggerClientEvent("esx_countryjob:plate", xPlayers[i], plate)
        end

    end
end)

RegisterServerEvent("esx_countryjob:setActivePlates")
AddEventHandler("esx_countryjob:setActivePlates", function(plate)
    time_out[plate] = false
end)

RegisterServerEvent("esx_countryjob:removeActivePlate")
AddEventHandler("esx_countryjob:removeActivePlate", function(plate)
    time_out[plate] = time_out[nil]
    local xPlayers = ESX.GetPlayers()

    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])

        if xPlayer.job.name == 'country' then
            TriggerClientEvent("esx_countryjob:updateActivePlate", xPlayers[i], plate)
        end
    end

end)

RegisterServerEvent("esx_countryjob:getActivePlates")
AddEventHandler("esx_countryjob:getActivePlates", function()
    TriggerClientEvent("esx_countryjob:getActivePlates", source, time_out)
end)


RegisterServerEvent("esx_countryjob:triggerTimer")
AddEventHandler("esx_countryjob:triggerTimer", function(plate)
    local xPlayers = ESX.GetPlayers()
    local startTimer = os.time() + 300
    Citizen.CreateThread(function()
        while os.time() < startTimer and time_out[plate] ~= nil do 
            Citizen.Wait(5)
        end

        for i=1, #xPlayers, 1 do
            local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    
    
            if xPlayers.job.name == 'country' then
                TriggerClientEvent("esx_countryjob:updateTimer", xPlayers[i], plate)
            end
    
        end
    
    end)
end)

ESX.RegisterServerCallback("esx_countryjob:getSharedAccount", function(source, cb)
	TriggerEvent("esx_addonaccount:getSharedAccount", "society_country_blackMoney", function(account)
		local blackMoney

        if account ~= nil then
            blackMoney = account.money
        else
            blackMoney = 0
        end

        cb(blackMoney)
    end)
end)

RegisterServerEvent("esx_countryjob:putBlackMoney")
AddEventHandler("esx_countryjob:putBlackMoney", function(amount)
	TriggerEvent("esx_addonaccount:getSharedAccount", "society_country_blackMoney", function(account)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		if xPlayer.getAccount("black_money").money >= amount then
			xPlayer.removeAccountMoney("black_money", amount)
			account.addMoney(amount)
			TriggerClientEvent("esx:showNotification", xPlayer.source, "你放入了~g~ "..amount.." ~b~黑錢")
		else
			TriggerClientEvent("esx:showNotification", xPlayer.source, "數量錯誤")
		end
	end)
end)

RegisterServerEvent("esx_countryjob:getBlackMoney")
AddEventHandler("esx_countryjob:getBlackMoney", function(count)
	TriggerEvent("esx_addonaccount:getSharedAccount", "society_country_blackMoney", function(account)
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
    	local roomAccountMoney = account.money

    	if roomAccountMoney >= count then
        	account.removeMoney(count)
        	xPlayer.addAccountMoney("black_money", count)
			TriggerClientEvent("esx:showNotification", xPlayer.source, "你取出了~g~ "..count.." ~b~黑錢")    
		else
			TriggerClientEvent("esx:showNotification", xPlayer.source, "數量錯誤")   
        end
     end)
end)