ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------雞絲河粉
ESX.RegisterUsableItem('bread', function(source) 
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))-----顯示字體
end)

-------雪花冰
ESX.RegisterUsableItem('water', function(source)   
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_water'))----顯示字體
end)


------滷肉飯
ESX.RegisterUsableItem('porkrice', function(source)    
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('porkrice', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)-----飢餓值
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_porkrice'))-----顯示字體
end)

------牛肉麵
ESX.RegisterUsableItem('beefnoodles', function(source)    
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beefnoodles', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 500000)-----飢餓值
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_beefnoodles'))-----顯示字體
end)

------雞腿便當
ESX.RegisterUsableItem('chickenbento', function(source)    
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chickenbento', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 700000)-----飢餓值
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chickenbento'))-----顯示字體
end)


-------可樂
ESX.RegisterUsableItem('cola', function(source)   
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 300000)-----飢渴值
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cola'))----顯示字體
end)

-------原味奶茶
ESX.RegisterUsableItem('milktea', function(source)   
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('milktea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 500000)-----飢渴值
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_milktea'))----顯示字體
end)

-----芭樂檸檬茶
ESX.RegisterUsableItem('gravalemontea', function(source)   
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gravalemontea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 700000)-----飢渴值
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_gravalemontea'))----顯示字體
end)

--三明治
ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwich', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 400000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	
end)

--棒棒糖
ESX.RegisterUsableItem('lolipoop', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('lolipoop', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_lolipoop'))-----顯示字體
end)

--冰茶
ESX.RegisterUsableItem('icetea', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('icetea', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 600000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_icetea'))
	
end)

--能量飲料
ESX.RegisterUsableItem('soda', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('soda', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 550000)
    TriggerClientEvent('esx_basicneeds:onDrink', source)
    TriggerClientEvent('esx:showNotification', source, _U('used_soda'))
	
end)

TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local playerId = tonumber(args[1])

		-- is the argument a number?
		if playerId then
			-- is the number a valid player?
			if GetPlayerName(playerId) then
			--	print(('esx_basicneeds: %s healed %s'):format(GetPlayerIdentifier(source, 0), GetPlayerIdentifier(playerId, 0)))
				TriggerClientEvent('esx_basicneeds:healPlayer', playerId)
				TriggerClientEvent('chat:addMessage', source, { args = { '^5治癒', '你已經被治癒' } })
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1系統', '此玩家不在遊戲內' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1系統', '錯誤的玩家ID' } })
		end
	else
		--print(('esx_basicneeds: %s healed self'):format(GetPlayerIdentifier(source, 0)))
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1系統', 'Insufficient Permissions.' } })
end, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', params = {{name = 'playerId', help = '(optional) player id'}}})