local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
ESX 			    			= nil
local showblip = false
local displayedBlips = {}
local AllBlips = {}
local number = nil
local openui = false


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


AddEventHandler('onResourceStop', function(resource)
	  if resource == GetCurrentResourceName() then
		  SetNuiFocus(false, false)
	  end
end)
  
RegisterNUICallback('escape', function(data, cb)
	 
	  SetNuiFocus(false, false)
  
	  SendNUIMessage({
		  type = "close",
	  })

	  openui = false
end)

RegisterNUICallback('bossactions', function(data, cb)
	 
	SetNuiFocus(false, false)

	SendNUIMessage({
		type = "close",
	})

	OpenBoss(number)
end)

local Cart = {}

RegisterNUICallback('putcart', function(data, cb)
	table.insert(Cart, {item = data.item, label = data.label, count = data.count, id = data.id, price = data.price})
	cb(Cart)
end)

RegisterNUICallback('notify', function(data, cb)
	ESX.ShowNotification(data.msg)
end)

RegisterNUICallback('refresh', function(data, cb)
	 
	Cart = {}
		Wait(500)
		ESX.TriggerServerCallback('esx_kr_shop:getOwnedShop', function(data)
			Wait(100)
			ESX.TriggerServerCallback('esx_kr_shop:getShopItems', function(result)
			
					if data ~= nil then
						Owner = true
					end

					if result ~= nil then

								SetNuiFocus(true, true)
				
								SendNUIMessage({
									type = "shop",
									result = result,
									owner = Owner,
								})
					end

				end, number)
			end, number)
end)

RegisterNUICallback('emptycart', function(data, cb)
	Cart = {}
	
end)

RegisterNUICallback('buy', function(data, cb)
	
		TriggerServerEvent('esx_kr_shops:Buy', number, data.Item, data.Count)
	Cart = {}
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
   PlayerData = xPlayer
end)

local ShopId           = nil
local Msg        = nil
local HasAlreadyEnteredMarker = false
local LastZone                = nil


AddEventHandler('esx_kr_shop:hasEnteredMarker', function(zone)
	if zone == 'center' then
		ShopId = zone
		number = zone
		Msg  = _U('press_to_open_center')
	elseif zone <= 100 then
		ShopId = zone
		number = zone
		Msg  = _U('press_to_open')
	elseif zone >= 100 then
		ShopId = zone
		number = zone
		Msg  = _U('press_to_rob')
	end
end)

AddEventHandler('esx_kr_shop:hasExitedMarker', function(zone)
	ShopId = nil
end)

Citizen.CreateThread(function ()
 	while true do
		Citizen.Wait(0)

		if ShopId ~= nil then

			SetTextComponentFormat('STRING')
			AddTextComponentString(Msg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

				if IsControlJustReleased(0, Keys['E']) then

					if ShopId == 'center' then
						OpenShopCenter()
					

					elseif ShopId <= 100 then
						ESX.TriggerServerCallback('esx_kr_shop:getOwnedShop', function(data)
							if openui == false then
								ESX.TriggerServerCallback('esx_kr_shop:getShopItems', function(result)

									if data ~= nil then
										Owner = true
									end
	
									if result ~= nil then

										SetNuiFocus(true, true)
						
										SendNUIMessage({
											type = "shop",
											result = result,
											owner = Owner,
										})
									end
			
								end, number)
								openui = true
							end
						end, number)

					elseif ShopId >= 100 then
						Robbery(number - 100)
					end

	 	 		end
		end
	end
 end)



function OpenShopCenter()

	ESX.UI.Menu.CloseAll()

  	local elements = {}

		if showblip then
			table.insert(elements, {label = '在地圖上隱藏所有商店', value = 'removeblip'})
		else
			table.insert(elements, {label = '在地圖上顯示所有商店', value = 'showblip'})
		end

				Wait(500)
			ESX.TriggerServerCallback('esx_kr_shop:getShopList', function(data)

				for i=1, #data, 1 do
					table.insert(elements, {label = _U('buy_shop') .. data[i].ShopNumber .. ' [$' .. data[i].ShopValue .. ']', value = 'kop', price = data[i].ShopValue, shop = data[i].ShopNumber})
				end


					ESX.UI.Menu.Open(
					'default', GetCurrentResourceName(), 'shopcenter',
					{
						title    = 'Shop',
						align    = 'left',
						elements = elements
					},
					function(data, menu)

					if data.current.value == 'kop' then
					ESX.UI.Menu.CloseAll()

					ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'name', {
					title = _U('name_shop')
					}, function(data2, menu2)

					local name = data2.value
					TriggerServerEvent('esx_kr_shops:BuyShop', name, data.current.price, data.current.shop, data.current.bought)
					menu2.close()

					end,
					function(data2, menu2)
					menu2.close()
					end)

					elseif data.current.value == 'removeblip' then
						showblip = false
						createForSaleBlips()
						menu.close()
					elseif data.current.value == 'showblip' then
						showblip = true
						createForSaleBlips()
						menu.close()
					end
					end)
				end,
			function(data, menu)
		menu.close()
	end)
end

-- function OpenShop()
--   ESX.UI.Menu.CloseAll()
--   local elements = {}

  
-- 	ESX.TriggerServerCallback('esx_kr_shop:getOwnedShop', function(data)
-- 	ESX.TriggerServerCallback('esx_kr_shop:getShopItems', function(result)

--         if data ~= nil then
--             table.insert(elements, {label = 'Boss Menu', value = 'boss'})
--         end

-- 	    if result ~= nil then
-- 		    for i=1, #result, 1 do
-- 		        if result[i].count > 0 then
-- 					table.insert(elements, {label = result[i].label .. ' | ' .. result[i].count ..' in your stock for [$' .. result[i].price .. ' per item]', value = 'buy', ItemName = result[i].item})
-- 				end
-- 			end
-- 		end


--   ESX.UI.Menu.Open(
--   'default', GetCurrentResourceName(), 'shops',
--   {
-- 	title    = 'Shop',
-- 	align    = 'left',
-- 	elements = elements
--   },
--   function(data, menu)
-- 	if data.current.value == 'boss' then
--         ESX.UI.Menu.CloseAll()
-- 		OpenBoss()
		
-- 	elseif data.current.value == 'buy' then
--         	ESX.UI.Menu.CloseAll()

-- 			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'mainmeny', {
-- 			title = 'How much whould you like to buy?'
-- 			}, function(data2, menu2)

--        	 	local count = tonumber(data2.value)

-- 				TriggerServerEvent('esx_kr_shops:Buy', number, data.current.ItemName, count)
-- 				menu2.close()
	
--                     	end,
--                     	function(data2, menu2)
--                     	menu2.close()
--                 	end)
--                     end
--                 end,
--                 function(data, menu)
-- 				menu.close()
-- 			end)
-- 		end, number)
-- 	end, number)
-- end

function OpenBoss()


  ESX.TriggerServerCallback('esx_kr_shop:getOwnedShop', function(data)
  
	local elements = {}

		table.insert(elements, {label = '您有：$' .. data[1].money .. '在你公司',    value = ''})
		table.insert(elements, {label = '出貨量',    value = 'shipments'})
        table.insert(elements, {label = '放入待售物品', value = 'putitem'})
        table.insert(elements, {label = '取出要出售的物品',    value = 'takeitem'})
        table.insert(elements, {label = '在您的公司中投入資金',    value = 'putmoney'})
        table.insert(elements, {label = '從公司拿錢',    value = 'takemoney'})
        table.insert(elements, {label = '更改公司名稱：$' .. Config.ChangeNamePrice,    value = 'changename'})
		table.insert(elements, {label = '以$出售您的公司' .. math.floor(data[1].ShopValue / Config.SellValue),   value = 'sell'})

		ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'boss',
		{
			title    = 'Shop',
			align    = 'left',
			elements = elements
		},
		function(data, menu)
        if data.current.value == 'putitem' then
            PutItem(number)
        elseif data.current.value == 'takeitem' then  
            TakeItem(number)
        elseif data.current.value == 'takemoney' then
            

            ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'takeoutmoney', {
                title = '你要取出多少資金?'
            }, function(data2, menu2)
  
			local amount = tonumber(data2.value)
			
			TriggerServerEvent('esx_kr_shops:takeOutMoney', amount, number)
			
			menu2.close()
        
		end,
		function(data2, menu2)
		menu2.close()
		end)

	 	elseif data.current.value == 'putmoney' then
			ESX.UI.Menu.CloseAll()

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'putinmoney', {
			title = '你要存入多少資金?'
			}, function(data3, menu3)
			local amount = tonumber(data3.value)
			TriggerServerEvent('esx_kr_shops:addMoney', amount, number)
			menu3.close()
				end,
				function(data3, menu3)
			menu3.close()
		end)

		elseif data.current.value == 'sell' then
		  ESX.UI.Menu.CloseAll()    

		  ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'sell', {
			title = 'WRITE: (YES) without parentheses to confim'
          }, function(data4, menu4)
            
            if data4.value == 'YES' then
              TriggerServerEvent('esx_kr_shops:SellShop', number)
              menu4.close()
			end
		    	end,
		    	function(data4, menu4)
		    menu4.close()
		end)

	  elseif data.current.value == 'changename' then
		ESX.UI.Menu.CloseAll()    

		ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'changename', {
		  title = '您想為誰命名您的商店？'
        }, function(data5, menu5)
            
            TriggerServerEvent('esx_kr_shops:changeName', number, data5.value)
            menu5.close()
               		end,
                	function(data5, menu5)
                	menu5.close()
				end)
				
			elseif data.current.value == 'shipments' then
				OpenShipments(number)

				end
        		end,
        		function(data, menu)
        	menu.close()
	    end)
    end, number)
end

function OpenShipments(id)

	local elements = {}

	--table.insert(elements, {label = '訂購產品', value = 'buy'})
	--table.insert(elements, {label = '出貨量', value = 'shipments'})

	ESX.UI.Menu.Open(
  	'default', GetCurrentResourceName(), 'shipments',
	{
		title    = '商店',
		align    = 'left',
		elements = elements
	},
	  function(data, menu)
		
		if data.current.value == 'buy' then
			ESX.UI.Menu.CloseAll()
			OpenShipmentDelivery(id)
		elseif data.current.value == 'shipments' then
			ESX.UI.Menu.CloseAll()
			GetAllShipments(id)
		end
		end,
	function(data, menu)
	menu.close()
	end)
end

function GetAllShipments(id)

	local elements = {}

	ESX.TriggerServerCallback('esx_kr_shop:getTime', function(time)
	ESX.TriggerServerCallback('esx_kr_shop:getAllShipments', function(items)

	local once = true
	local once2 = true

		for i=1, #items, 1 do

			if time - items[i].time >= Config.DeliveryTime and once2 then
			table.insert(elements, {label = '--準備好貨--'})
			table.insert(elements, {label = '獲取所有貨件', value = 'pickup'})
			once2 = false
			end

			if time - items[i].time >= Config.DeliveryTime then
			table.insert(elements, {label = items[i].label,	value = items[i].item, price = items[i].price})
			end

			if time - items[i].time <= Config.DeliveryTime and once then
				table.insert(elements, {label = '-待發貨-'})
				once = false
			end

			if time - items[i].time <= Config.DeliveryTime then
				times = time - items[i].time
				table.insert(elements, {label = items[i].label .. '剩下的時間：' .. math.floor((Config.DeliveryTime - times) / 60) .. '分鐘' })
			end

		end

	ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'allshipments',
	{
	  title    = '商店',
	  align    = 'left',
	  elements = elements
	},
	  function(data, menu)
		
		if data.current.value == 'pickup' then
			TriggerServerEvent('esx_kr_shops:GetAllItems', id)
		end
	
		end,
		function(data, menu)
		menu.close()
		end)

	end, id)
	end)
end

function OpenShipmentDelivery(id)
	ESX.UI.Menu.CloseAll()
	local elements = {}

		for i=1, #Config.Items, 1 do
			table.insert(elements, {labels =  Config.Items[i].label, label =  Config.Items[i].label .. ' for $' .. Config.Items[i].price .. ' a piece ',	value = Config.Items[i].item, price = Config.Items[i].price})
		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'shipitem',
			{
			title    = '商店',
			align    = 'left',
			elements = elements
			},
			function(data, menu)
				menu.close()
				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'krille', {
				title = '你想買多少錢？'
				}, function(data2, menu2)
					menu2.close()
					TriggerServerEvent('esx_kr_shop:MakeShipment', id, data.current.value, data.current.price, tonumber(data2.value), data.current.labels)

				end, function(data2, menu2)
					menu2.close()
				end)

		end,
		function(data, menu)
		menu.close()
	end)
end


function TakeItem(number)

  local elements = {}

  ESX.TriggerServerCallback('esx_kr_shop:getShopItems', function(result)

	for i=1, #result, 1 do
	    if result[i].count > 0 then
	    	table.insert(elements, {label = result[i].label .. ' | ' .. result[i].count ..'件存放[' .. result[i].price .. '每件$', value = 'removeitem', ItemName = result[i].item})
	    end
    end


  ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'takeitem',
  {
	title    = '商店',
	align    = 'left',
	elements = elements
  },
  function(data, menu)
local name = data.current.ItemName

    if data.current.value == 'removeitem' then
        menu.close()
        ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'howmuch', {
        title = '您想拿多少？'
        }, function(data2, menu2)

        local count = tonumber(data2.value)
		menu2.close()
    	TriggerServerEvent('esx_kr_shops:RemoveItemFromShop', number, count, name)
    
			end, function(data2, menu2)
				menu2.close()
			end)
			end
		end,
		function(data, menu)
		menu.close()
		end)
  	end, number)
end


function PutItem(number)

  local elements = {}

  ESX.TriggerServerCallback('esx_kr_shop:getInventory', function(result)

    for i=1, #result.items, 1 do
        
      local invitem = result.items[i]
      
	    if invitem.count > 0 then
			table.insert(elements, { label = invitem.label .. '|' .. invitem.count .. '在你的包裡', count = invitem.count, name = invitem.name})
	    end
	end

  ESX.UI.Menu.Open(
  'default', GetCurrentResourceName(), 'putitem',
  {
	title    = '商店',
	align    = 'left',
	elements = elements
  },
  function(data, menu)

        local itemName = data.current.name
        local invcount = data.current.count

			ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'sell', {
			title = _U('how_much')
			}, function(data2, menu2)

			local count = tonumber(data2.value)
		
			if count > invcount then
				ESX.ShowNotification('~r~你不能賣出比自己更多的東西')
				menu2.close()
				menu.close()
			else
				menu2.close()
				menu.close()

				ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'sellprice', {
				title = _U('set_price')
				}, function(data3, menu3)

				local price = tonumber(data3.value)
				menu3.close()
				TriggerServerEvent('esx_kr_shops:setToSell', number, itemName, count, price)
		
						end)
					end
				end,
				function(data3, menu3)
				menu3.close()
				end)
			end, 
			function(data2, menu2)
			menu2.close()
			end)
        end, function(data, menu)
        menu.close()
    end)
end


Citizen.CreateThread(function ()
  while true do
	Citizen.Wait(1)

	local coords = GetEntityCoords(GetPlayerPed(-1))
	local sleep = true
	
		for k,v in pairs(Config.Zones) do
			if(27 ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 20.0 ) then
				sleep = false
				if v.Pos.red then
					DrawMarker(23, v.Pos.x, v.Pos.y, v.Pos.z + 0.05, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.2, 180, 0, 0, 200, false, true, 2, false, false, false, false)
					DrawMarker(29, v.Pos.x, v.Pos.y, v.Pos.z + 1.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 180, 0, 0, 200, false, true, 2, false, false, false, false)		
				else
					DrawMarker(23, v.Pos.x, v.Pos.y, v.Pos.z + 0.05, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.2, 0, 180, 0, 200, false, true, 2, false, false, false, false)
					DrawMarker(29, v.Pos.x, v.Pos.y, v.Pos.z + 1.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 180, 0, 200, false, true, 2, false, false, false, false)
				end
	        end
	    end
		if sleep then
		Wait(500)
		end
    end
end)


Citizen.CreateThread(function ()
  while true do
	Citizen.Wait(0)

	local coords      = GetEntityCoords(GetPlayerPed(-1))
	local isInMarker  = false
	local currentZone = nil
	local sleep = true

	for k,v in pairs(Config.Zones) do
	  if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 1.2) then
		sleep = false
		isInMarker  = true
		currentZone = v.Pos.number
	  end
	end

	if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
	  HasAlreadyEnteredMarker = true
	  LastZone                = currentZone
	  TriggerEvent('esx_kr_shop:hasEnteredMarker', currentZone)
	end

	if not isInMarker and HasAlreadyEnteredMarker then
	  HasAlreadyEnteredMarker = false
	  TriggerEvent('esx_kr_shop:hasExitedMarker', LastZone)
	end
	if sleep then
		Wait(500)
		end
  end
end)

RegisterNetEvent('esx_kr_shops:setBlip')
AddEventHandler('esx_kr_shops:setBlip', function()
		Wait(500)
  	ESX.TriggerServerCallback('esx_kr_shop:getOwnedBlips', function(blips)

		if blips ~= nil then
			createBlip(blips)
	  	end
   	end)
end)

RegisterNetEvent('esx_kr_shops:removeBlip')
AddEventHandler('esx_kr_shops:removeBlip', function()

	for i=1, #displayedBlips do
    	RemoveBlip(displayedBlips[i])
	end

end)

AddEventHandler('playerSpawned', function(spawn)
	Citizen.Wait(500)

	ESX.TriggerServerCallback('esx_kr_shop:getOwnedBlips', function(blips)

		if blips ~= nil then
			createBlip(blips)
		end
	end)
end)



Citizen.CreateThread(function()
	Citizen.Wait(500)

	ESX.TriggerServerCallback('esx_kr_shop:getOwnedBlips', function(blips)

		if blips ~= nil then
			createBlip(blips)
		end
	end)
end)

--[[Citizen.CreateThread(function()
 	Citizen.Wait(500)
 		local blip = AddBlipForCoord(6.09, -708.89, 44.97)

 		SetBlipSprite (blip, 605)
 		SetBlipDisplay(blip, 4)
 		SetBlipScale  (blip, 1.2)
 		SetBlipColour (blip, 5)
 		SetBlipAsShortRange(blip, true)

 		BeginTextCommandSetBlipName("STRING")
 		AddTextComponentString('Properties')
 		EndTextCommandSetBlipName(blip)
end)]]--

function createBlip(blips)
 	for i=1, #blips, 1 do
   		for k,v in pairs(Config.Zones) do
 			if v.Pos.number == blips[i].ShopNumber then
 				local blip = AddBlipForCoord(vector3(v.Pos.x, v.Pos.y, v.Pos.z))
 					SetBlipSprite (blip, 52)
 					SetBlipDisplay(blip, 4)
 					SetBlipScale  (blip, 0.8)
 					SetBlipColour (blip, 32)
					SetBlipAsShortRange(blip, true)
 					BeginTextCommandSetBlipName("STRING")
 					AddTextComponentString(blips[i].ShopName)
                    EndTextCommandSetBlipName(blip)
 					table.insert(displayedBlips, blip)
 			end
  		end
 	end
end


function createForSaleBlips()
	if showblip then

		IDBLIPS = {
			[1] = {x = 373.875,   y = 325.896,  z = 102.566, n = 1},
			[2] = {x = 2557.458,  y = 382.282,  z = 107.622, n = 2},
			[3] = {x = -3038.939, y = 585.954,  z = 6.908, n = 3},
			[4] = {x = -1487.553, y = -379.107,  z = 39.163, n = 4},
			[5] = {x = 1392.562,  y = 3604.684,  z = 33.980, n = 5},
			[6] = {x = -2968.243, y = 390.910,   z = 14.043, n = 6},
			[7] = {x = 2678.916,  y = 3280.671, z = 54.241, n = 7},
			[8] = {x = -48.519,   y = -1757.514, z = 28.421, n = 8},
			[9] = {x = 1163.373,  y = -323.801,  z = 68.205, n = 9},
			[10] = {x = -707.501,  y = -914.260,  z = 18.215, n = 10},
			[11] = {x = -502.77, y = -334.22,   z = 50.33, n = 11},
			[12] = {x = 1698.388,  y = 4924.404,  z = 41.063, n = 12},
			[13] = {x = 1961.464,  y = 3740.672, z = 31.343, n = 13},
			[14] = {x = 1135.808,  y = -982.281,  z = 45.415, n = 14},
			[15] = {x = 25.88,     y = -1347.1,   z = 28.5, n = 15},
			[16] = {x = -1393.409, y = -606.624,  z = 29.319, n = 16},
			[17] = {x = 547.431,   y = 2671.710, z = 41.156, n = 17},
			[18] = {x = -3241.927, y = 1001.462, z = 11.830, n = 18},
			[19] = {x = 1166.024,  y = 2708.930,  z = 37.157, n = 19},
			[20] = {x = 1729.216,  y = 6414.131, z = 34.037, n = 20},
		}

		for i=1, #IDBLIPS, 1 do

			local blip2 = AddBlipForCoord(vector3(IDBLIPS[i].x, IDBLIPS[i].y, IDBLIPS[i].z))
				
				SetBlipSprite (blip2, 52)
				SetBlipDisplay(blip2, 4)
				SetBlipScale  (blip2, 0.8)
				SetBlipColour (blip2, 1)
				SetBlipAsShortRange(blip2, true)
				BeginTextCommandSetBlipName("STRING")
				AddTextComponentString('ID: ' .. IDBLIPS[i].n)
				EndTextCommandSetBlipName(blip2)
				table.insert(AllBlips, blip2)
		end

		else
			for i=1, #AllBlips, 1 do
				RemoveBlip(AllBlips[i])
			end
		ESX.UI.Menu.CloseAll()
	end
end

--ROBBERY

local Var = nil
local Coordss = nil
local OnRobbery = false
local Id = nil
local Name = nil

function Robbery(id)

	local coords1 = {
		[1] = {x = 380.43, y = 331.72, z = 103.57, heading = 10.57},
		[2] = {x = 2550.01, y = 387.18, z = 108.62, heading = 108.62},
		[3] = {x = -3048.03, y = 588.01, z = 7.91, heading = 7.91},
		[4] = {x = -1479.36, y = -375.25, z = 39.16, heading = 26.67},
		[5] = {x = 1394.35, y = 3612.5, z = 34.98, heading = 52},
		[6] = {x = -2959.7, y = 387.3, z =14.04 , heading = 354.41},
		[7] = {x = 2674.8, y = 3288.59, z = 55.24, heading = 146.73},
		[8] = {x = -42.87, y = -1748.46, z = 29.42, heading = 170.75},
		[9] = {x = 1159.95, y = -313.69, z = 69.21, heading = 234.49},
		[10] = {x = -708.55, y = -904.24, z =19.22 , heading = 195.46},
		[11] = {x = -502.77, y = -334.22, z = 42.33, heading = 266.27},
		[12] = {x = 1707.01, y = 4918.92, z = 42.06, heading = 56.63},
		[13] = {x = 1961.64, y = 3749.69, z = 32.34, heading = 91.68},
		[14] = {x = 1126.78, y = -980.38, z = 45.42, heading = 176.32},
		[15] = {x = 31.11, y = -1340.3, z = 29.5 , heading = 77.9},
		[16] = {x = -1384.04, y = -630.34, z = 30.82, heading = 325.19},
		[17] = {x = 544.51, y = 2663.17, z = 42.16, heading = 285.33},
		[18] = {x = -3249.25, y = 1006.62, z = 12.83, heading = 177.56},
		[19] = {x = 1168.84, y = 2719.05, z = 37.16, heading = 80.83},
		[20] = {x = 1736.71, y = 6418.89, z = 35.04, heading = 62.3},
    }

    -- TriggerServerEvent('esx_kr_shops:UpdateCurrentShop', id)

        ESX.TriggerServerCallback('esx_kr_shop-robbery:getUpdates', function(result)
		ESX.TriggerServerCallback('esx_kr_shop-robbery:getOnlinePolices', function(results)

			if result.cb ~= nil then
				if results >= Config.RequiredPolices then
                TriggerServerEvent('esx_kr_shops-robbery:UpdateCanRob', id)
                
                    local coords = {
                        x = coords1[id].x,
                        y = coords1[id].y,
                        z = coords1[id].z - 1,
					}
						TriggerServerEvent('esx_phone:send', "police", "在商店搶劫" .. result.name .. '的店', true, coords)
						TriggerServerEvent('esx_kr_shops-robbery:NotifyOwner', "~r~您的店鋪~b~(" .. result.name .. ')~r~被搶劫', id)
						TriggerServerEvent('esx_kr_shops-robbery:startRobbing', result.name)
						ESX.Game.SpawnObject(1089807209, coords, function(safe)
						SetEntityHeading(safe, coords1[id].heading)
						FreezeEntityPosition(safe, true)

                        SetEntityHealth(safe, 80000)
                        OnRobbery = true
						Var = safe
						Id = id
						Coordss = coords
						Name = result.name
						end)
                else
					ESX.ShowNotification("~r~在線沒有足夠的警察" .. results .. '/' .. Config.RequiredPolices)
				end
			else
				ESX.ShowNotification("~r~這家商店已經被搶劫了，請稍等" ..  math.floor((Config.TimeBetweenRobberies - result.time)  / 30) .. '分鐘')
			end
		end)
	end, id)
end




Citizen.CreateThread(function()
	while true do
        Wait(0)
			local playerpos = GetEntityCoords(GetPlayerPed(-1))
				if OnRobbery and GetDistanceBetweenCoords(playerpos.x, playerpos.y, playerpos.z, Coordss.x, Coordss.y, Coordss.z, true) <= 15 then
					
					local hp = GetEntityHealth(Var)
					--TriggerEvent("mt:missiontext", "打破保險庫文件：~r~ " .. hp/800 .. "%", 5000)
					TriggerEvent("mt:missiontext", "打破保險庫文件：~r~ " .. (hp-76800)/32 .. "%", 5000)

				--if hp == 0 then
				if hp < 76800 then
					OnRobbery = false
					TriggerServerEvent('esx_kr_shops-robbery:GetReward', Id)
					TriggerServerEvent("esx_kr_shops-robbery:NotifyOwner", '~r~您商店的搶劫~b~(' .. Name ..')~r~ 不幸地成功了！', Id)
					DeleteEntity(Var)
				end

				elseif OnRobbery and GetDistanceBetweenCoords(playerpos.x, playerpos.y, playerpos.z, Coordss.x, Coordss.y, Coordss.z, true) >= 15 then
					OnRobbery = false
					DeleteEntity(Var)
					TriggerServerEvent('esx_kr_shops-robbery:NotifyOwner', "~g~您商店的搶劫~b~(" .. Name .. ')~g~ 沒有成功！', Id)
					ESX.ShowNotification(_U("robbery_cancel"))	
				end
	end
end)

RegisterNetEvent("mt:missiontext") -- credits: https://github.com/schneehaze/fivem_missiontext/blob/master/MissionText/missiontext.lua
AddEventHandler("mt:missiontext", function(text, time)
		ClearPrints()
		SetTextEntry_2("STRING")
		AddTextComponentString(text)
		DrawSubtitleTimed(time, 1)
end)




RegisterNetEvent("esx_kr_shops-robbery:policenotify")
AddEventHandler("esx_kr_shops-robbery:policenotify", function(name)
    local PlayerData = ESX.GetPlayerData()
    local posblip = nil

    while PlayerData.job == nil do
        Citizen.Wait(1)
    end
    if PlayerData.job.name == "police" then
		ESX.ShowNotification("有人正在搶劫中")
        if not DoesBlipExist(posblip) then
            posblip = AddBlipForCoord(Coordss.x, Coordss.y, Coordss.z)
            SetBlipSprite(posblip, 161)
            SetBlipScale(posblip, 2.0)
            SetBlipColour(posblip, 1)

            PulseBlip(posblip)
            Citizen.Wait(Config.TimeBlip* 1000)
            RemoveBlip(posblip)
        end
    end
end)
