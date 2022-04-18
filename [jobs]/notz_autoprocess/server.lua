ESX                 = nil
script_name = GetCurrentResourceName()

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent(script_name .. ':server:additem')
AddEventHandler(script_name .. ':server:additem', function(data)
	local l = source;
	local xPlayer = ESX.GetPlayerFromId(l)
	local lucky = math.random(100)
	local itemDest = {}
	local itemSrc = {}
	local MustxItem , MustxItem_count = xPlayer.getInventoryItem(data['Remove']['name']) , data['Remove']['ct']
	local is = false

	for i=1, #data['Add'] do
		local destData = data['Add'][i]
		if destData.pct == nil or destData.pct >= lucky then
			local xItem , xItem_count = xPlayer.getInventoryItem(destData.name) , destData.ct
			if MustxItem == nil or xItem == nil then
				a = ('^3[%s]^1 Item Not Found'):format(script_name)
				print(a)
				return false
			end
			if MustxItem.count < MustxItem_count then
				TriggerClientEvent("pNotify:SendNotification", l, {
					text = '你需要有 '..ESX.GetItemLabel(MustxItem.name)..' 數量 '..MustxItem_count..' 上</strong><center> ',
					type = "error",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				}) 
				TriggerClientEvent(script_name .. ':client:break', l)
			elseif xItem.limit ~= -1 and (xItem.count + xItem_count) > xItem.limit then
				TriggerClientEvent("pNotify:SendNotification", l, {
					text = '<center><strong class="red-text">'..ESX.GetItemLabel(xItem.name)..'你的全部</strong><center>',
					type = "error",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				}) 
				TriggerClientEvent(script_name .. ':client:break', l)
			else
				is = true
				xPlayer.addInventoryItem(xItem.name, xItem_count)
				local sendToDiscord = '' .. xPlayer.name .. ' 收到 ' .. xItem.name .. ' 數量 ' .. xItem_count .. ''
				TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'process', sendToDiscord, source, '^2')	
			--	g = ('<center><strong class="green-text"> แปรรูป %s จำนวน %s เรียบร้อย</strong><center>'):format(ESX.GetItemLabel(xItem.name),xItem_count)
			--	TriggerClientEvent("pNotify:SendNotification", l, {
			--		text = g,
			--		type = "success",
			--		timeout = 3000,
			--		layout = "bottomCenter",
			--		queue = "global"
			--	}) 
			end
		end
	end	
	if is then
		xPlayer.removeInventoryItem(MustxItem.name, MustxItem_count)
		local sendToDiscord = '' .. xPlayer.name .. ' 浪費 ' .. MustxItem.name .. ' 數量 ' .. MustxItem_count .. ''
		TriggerEvent('azael_dc-serverlogs:sendToDiscord', 'process', sendToDiscord, source, '^2')	
	end
end)