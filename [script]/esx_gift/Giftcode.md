
--------------- Gift ---------------
Imput in esx_basicneeds\server\main.lua

ESX.RegisterUsableItem('gift', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('gift', 1)    --remove the item
    xPlayer.addInventoryItem('fixkit',1) -- get [item][amount]
	xPlayer.addInventoryItem('porkrice',10 )  -- get [item][amount]
	xPlayer.addInventoryItem('beefnoodles',10 )  -- get [item][amount]
	xPlayer.addInventoryItem('chickenbento',5 )  -- get [item][amount]
	xPlayer.addInventoryItem('cola',10 )  -- get [item][amount]
	xPlayer.addInventoryItem('milktea',10 )  -- get [item][amount]
	xPlayer.addInventoryItem('gravalemontea',5 )  -- get [item][amount]
    TriggerClientEvent('esx:showNotification', source,'你已經使用了 ~g~熊貓帝國新手禮包' ) 
	-- Have a nofication to show 
end)

------------------------------------------------------------------------------------