local ESX = nil
TriggerEvent("esx:getSharedObject", function(obj) 
    ESX = obj 
end)

local GiftRandomOnePoolType ={}
local GiftRandomOnePoolItem ={}
local GiftRandomMultPoolType ={}
local GiftRandomMultPoolItem ={}
local GiftRandomMultFixedItem ={}

Citizen.CreateThread(function()
    GiftRandomOnePoolType ={}
    for key, val in pairs(Config.GiftRandomOnePool) do
        for  x=1,val.rate do
            table.insert(GiftRandomOnePoolType, key)
        end
    end

    --[[GiftRandomMultFixedItem={}
    GiftRandomMultPoolType ={}
    for key, val in pairs(Config.GiftRandomMultPool) do
        if key ~="FixedPool" then
            for  x=1,val.rate do
                table.insert(GiftRandomMultPoolType, key)
            end
        else
            for key2, val2 in pairs(val.poolitem) do
                GiftRandomMultFixedItem[key2]=val2
                
            end
            
        end
    end]]
end)


---------debug use----------------------

TriggerEvent('es:addCommand', 'randomgift', function(source, args, user)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    if xPlayer.getGroup() == 'superadmin' then
        xPlayer.addInventoryItem('randomgift1',20) --500NT
        xPlayer.addInventoryItem('randomgift2',20) --1000
        xPlayer.addInventoryItem('randomgift3',20)
        xPlayer.addInventoryItem('randomgift4',20) --1000NT
        TriggerClientEvent('esx:showNotification', _source,'~o~ 您已經獲得大禮包 ~w~')	
    else
        TriggerClientEvent('esx:showNotification', _source,'~r~你不是管理員他媽不要想偷拿贊助禮包~w~')		
    end
end)
TriggerEvent('es:addCommand', 'removeallitem', function(source, args, user)
    
    local result = MySQL.Sync.fetchAll('SELECT loadout,identifier FROM users')
    local weaponName = string.upper(args[1])
        local a=0
        for x=1, #result, 1 do
           
            local xPlayer = ESX.GetPlayerFromIdentifier(result[x].identifier)
            if xPlayer then
                xPlayer.removeWeapon(weaponName)
            else
                if result[x].loadout then
                local loadout = json.decode(result[x].loadout)
                local chk = false
                for i=1, #loadout, 1 do
                    if loadout[i].name == weaponName then
                        a=a+1
                        table.remove(loadout, i)
                        print('delete\n')
                        print('ID:' .. result[x].identifier)
                        chk=true
                        break
                    end
                end
                if chk then
                    local output = json.encode(loadout)
                MySQL.Async.execute(
                            'UPDATE users SET loadout = @loadout WHERE identifier = @ientifier',
                            {
                               ['@loadout'] = output ,
                               ['@identifier']      = result[x].identifier
                            }
                        )
                 end
            end
               
            end
           

        end
        print('totaldelete :'..a)

end)



ESX.RegisterUsableItem('randomgift1', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    math.randomseed(GetGameTimer())
    xPlayer.removeInventoryItem('randomgift1', 1)    
    GetFixedItem(Config.GiftfixedPool,_source,xPlayer)
end)

ESX.RegisterUsableItem('randomgift4', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    math.randomseed(GetGameTimer())
    xPlayer.removeInventoryItem('randomgift4', 1)    
    GetFixedItem(Config.GiftfixedPool1,_source,xPlayer)
end)

ESX.RegisterUsableItem('randomgift5', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    math.randomseed(GetGameTimer())
    xPlayer.removeInventoryItem('randomgift5', 1)    
    GetFixedItem(Config.GiftfixedPool2,_source,xPlayer)
end)

ESX.RegisterUsableItem('randomgift6', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    math.randomseed(GetGameTimer())
    xPlayer.removeInventoryItem('randomgift6', 1)    
    GetFixedItem(Config.GiftfixedPool3,_source,xPlayer)
end)

ESX.RegisterUsableItem('randomgift2', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('randomgift2', 1)   
    GiftRandomOnePoolItem ={}
    math.randomseed(GetGameTimer())
    local num1 =math.random(1,#GiftRandomOnePoolType)
    local wintype = Config.GiftRandomOnePool[GiftRandomOnePoolType[num1]]

    for key, val in pairs(wintype.poolitem) do
        for  x=1,val.rate do
            table.insert(GiftRandomOnePoolItem, key)
        end
    end

    local num2 = math.random(1,#GiftRandomOnePoolItem)
    local winitemkey = GiftRandomOnePoolItem[num2]
    local winitem = wintype.poolitem[winitemkey]
    CheckItem(winitem,winitemkey,_source,xPlayer)
end)

ESX.RegisterUsableItem('randomgift3', function(source)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('randomgift3', 1)    
    GetFixedItem(GiftRandomMultFixedItem,_source,xPlayer)

    GiftRandomMultPoolItem ={}
    math.randomseed(GetGameTimer())
    local num1 =math.random(1,#GiftRandomMultPoolType)
    local wintype = Config.GiftRandomMultPool[GiftRandomMultPoolType[num1]]

    for key, val in pairs(wintype.poolitem) do
        for  x=1,val.rate do
            table.insert(GiftRandomMultPoolItem, key)
        end
    end

    local num2 = math.random(1,#GiftRandomMultPoolItem)
    local winitemkey = GiftRandomMultPoolItem[num2]
    local winitem = wintype.poolitem[winitemkey]

    CheckItem(winitem,winitemkey,_source,xPlayer)
end)


RegisterServerEvent('esx_gacha:setCarOwned')
AddEventHandler('esx_gacha:setCarOwned', function (vehicleProps)
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local plate =  vehicleProps.plate
    plate=plate:gsub(" ", "-")
	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle,stored) VALUES (@owner, @plate, @vehicle,1)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps)
	}, function (rowsChanged)
		TriggerClientEvent('esx:showNotification', _source, string.format('車牌為~y~%s~s~的車輛\n現在是你的了，\n~b~請記得到車庫確認~s~。', plate) )
	end)
end)


function GetFixedItem(Pool,_source,xPlayer)
    for winitemkey, winitem in pairs(Pool) do
        CheckItem(winitem,winitemkey,_source,xPlayer)
    end
end

function CheckItem(winitem,winitemkey,_source,xPlayer)
  
        if winitem.type == 'item' then
            local itemcount =math.random(winitem.min,winitem.max)
            TriggerClientEvent('esx:showNotification',_source,'獲得了 '..winitem.label ..' x '..itemcount)
            xPlayer.addInventoryItem(winitemkey,itemcount) 
        elseif winitem.type == 'car' then
            local coords=xPlayer.getCoords(true)
            if Config.BroadcastSW then
                TriggerClientEvent('esx_gacha:broadcastmessage', -1,'恭喜 鎮民 '..xPlayer.getName()..' 在開啟過年福袋時中了大獎')
           end
            TriggerClientEvent('esx:showNotification',_source,'恭喜獲得了 '..winitem.label ..' 一台 ')
            TriggerClientEvent('esx_gacha:givecar',_source,coords,winitemkey)
        elseif winitem.type == 'cash' then
            local money =math.random(winitem.min,winitem.max)
            TriggerClientEvent('esx:showNotification',_source,'獲得了 '..winitem.label ..' x '..money)
            xPlayer.addMoney(money)
        elseif winitem.type == 'weapon' then
            local ammocount =math.random(winitem.min,winitem.max)
            TriggerClientEvent('esx:showNotification',_source,'恭喜獲得了 '..winitem.label ..' 一把 及子彈 '..ammocount..' 發')
            xPlayer.addWeapon(winitemkey,ammocount)
        end
   
end
ESX.RegisterServerCallback("esx_gacha:fetchUserRank", function(source, cb)
    local player = ESX.GetPlayerFromId(source)

    if player ~= nil then
        local playerGroup = player.getGroup()

        if playerGroup ~= nil then 
            cb(playerGroup)
        else
            cb("user")
        end
    else
        cb("user")
    end
end)

