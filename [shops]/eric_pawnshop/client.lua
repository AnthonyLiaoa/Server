local isOpenMenu = false
ESX = nil

TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        for k, v in pairs(Config.Shop) do
            if GetDistanceBetweenCoords(v.pos, GetEntityCoords(PlayerPedId()), true) <= 10.0 then
                DrawMarker(1, v.pos, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 0.8, 200, 10, 10, 100, false, false, 2, false, false, false, false)
                ESX.Game.Utils.DrawText3D(v.pos + vector3(0.0, 0.0, 0.5), _U('press_to_open', k), 0.6)
                if GetDistanceBetweenCoords(v.pos, GetEntityCoords(PlayerPedId()), true) <= 1.5 and IsControlJustReleased(0, 38) then
                    isOpenMenu = true
                    OpenShopMenu(k)
                    print(k)
                    print("\nCreate by AiReiKe\nThanks for using eric_pawnshop\n")
                end
            end

            if GetDistanceBetweenCoords(v.pos, GetEntityCoords(PlayerPedId()), true) > 2.0 then
                if isOpenMenu then
                    isOpenMenu = false
                    ESX.UI.Menu.CloseAll()
                end
			end
        end
    end
end)

Citizen.CreateThread(function()
    for k, v in pairs(Config.Shop) do
        if v.blip == true then  
        	local blip = AddBlipForCoord(v.pos)
	        SetBlipSprite(blip, 480)
			SetBlipColour(blip, 1)
	        SetBlipScale(blip, 0.8)
	        SetBlipAsShortRange(blip, true)

	        BeginTextCommandSetBlipName("STRING")
	        AddTextComponentString(k)
	        EndTextCommandSetBlipName(blip)
        end
    end
end)

function OpenShopMenu(shop)
    ESX.TriggerServerCallback("eric_pawnshop:getPlayerItems", function(Items)
        local elements = {}

        for i = 1, #Items, 1 do
            table.insert(elements, {label = _U("item_label", Items[i].label, Items[i].price, Items[i].count), value = Items[i].name, price = Items[i].price, black = Items[i].black})
        end

        ESX.UI.Menu.Open("default", GetCurrentResourceName(), "pawn_shop_menu",
        {
            title = shop,
            elements = elements
        }, function(data, menu)
            ESX.UI.Menu.Open("dialog", GetCurrentResourceName(), "shop_count", 
            {
                title = _U("count")
            }, function(data2, menu2)
                menu2.close()
                menu.close()
                isOpenMenu = false
                TriggerServerEvent("eric_pawnshop:sellItem", data.current.value, data2.value, data.current.price, data.current.black)
            end, function(data2, menu2)
                menu2.close()
            end)
        end, function(data, menu)
            menu.close()
            isOpenMenu = false
        end)
    end, shop)
end