
--------------- Gift ---------------
Imput in esx_basicneeds\server\main.lua

ESX.RegisterUsableItem('gift', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('gift', 1)    --remove the item
	xPlayer.addMoney(15000)	-- get money amount
    xPlayer.addInventoryItem('bread',30 ) -- get [item][amount]
	xPlayer.addInventoryItem('water',20 )  -- get [item][amount]
	
    TriggerClientEvent('esx:showNotification', source,'你已經使用了 ~g~新手禮包' ) 
	-- Have a nofication to show 
end)

------------------------------------------------------------------------------------