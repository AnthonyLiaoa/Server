local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function DrawText3D(x, y, z, text)
	SetTextScale(0.32, 0.32)
    SetTextFont(1)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 400
    DrawRect(0.0, 0.0+0.0110, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

------------------------------------------------------------------------ START --------------------------------------------------------------------------
------------------------------------------------------------------------ START --------------------------------------------------------------------------


AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
      --  treeone()
	end
end)







Citizen.CreateThread(function()
--
    while true do 

        local pedcoord = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(pedcoord, -68.39154, 6248.499, 31.4, true)
        if dst <= 4.5 and ESX.GetPlayerData().job.name == 'slaughterer' then
            DrawText3D(-68.39154, 6248.499, 31.4, "按[~g~E~w~]抓取活雞")
        else
            Citizen.Wait(1000)
        end
        if dst <= 1 and IsControlJustPressed(0, Keys["E"]) and ESX.GetPlayerData().job.name == 'slaughterer' then
            exports['progressBars']:startUI(15000, "抓取活雞...")
            alivechickenanim()
            TriggerServerEvent("Spike-alivechicken")
            ClearTask()
            end
        Citizen.Wait(0)
    end
end)



Citizen.CreateThread(function()
	while true do
        Citizen.Wait(5)
        if ESX.GetPlayerData().job.name == 'slaughterer' then
        --	DrawMarker(Config.Type, v.Locations[i], 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.Size.x, Config.Size.y, Config.Size.z, Config.Color.r, Config.Color.g, Config.Color.b, 100, false, true, 2, false, false, false, false)
            DrawMarker(1, -68.39154, 6248.480, 30.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.85, 0.85, 0.85, 0, 200, 0, 150, false, false, 2, false, nil, nil, false)

            DrawMarker(2, -95.62312, 6207.062, 31.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 0, 100, 200, 140, false, false, false, true, false, false, false) -- portion

            DrawMarker(2, -100.4728, 6202.435, 31.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 0, 100, 200, 140, false, false, false, true, false, false, false) -- portion2

            DrawMarker(2, -106.3441, 6204.656, 31.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 233, 55, 22, 222, false, false, false, true, false, false, false) -- pack

            DrawMarker(2, -104.0056, 6206.675, 31.4, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 233, 55, 22, 222, false, false, false, true, false, false, false) -- pack2

            DrawMarker(2, Config.SellLocation.pos.x, Config.SellLocation.pos.y, Config.SellLocation.pos.z + 0.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.2, 0.15, 233, 55, 22, 222, false, false, false, true, false, false, false)
        end
    end     
end)



Citizen.CreateThread(function()
--
    while true do 

        local pedcoord = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(pedcoord, -95.62312, 6207.062, 31.02504, true)
        if dst <= 5 and ESX.GetPlayerData().job.name == 'slaughterer' then
            DrawText3D(-95.62312, 6207.062, 31.02504, "按[~g~E~w~]屠宰活雞")
        else
            Citizen.Wait(1000)
        end
        if dst <= 1 and IsControlJustPressed(0, Keys["E"]) and ESX.GetPlayerData().job.name == 'slaughterer' then
            portionanim(1)
            Citizen.Wait(0)
            TriggerServerEvent("Spike-rawchicken")
            Citizen.Wait(1000)
        end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
--
    while true do 

        local pedcoord = GetEntityCoords(PlayerPedId())
        local dst = GetDistanceBetweenCoords(pedcoord, -100.4728, 6202.435, 31.02504, true)
        if dst <= 5 and ESX.GetPlayerData().job.name == 'slaughterer' then
            DrawText3D(-100.4728, 6202.435, 31.02504, "按[~g~E~w~]屠宰活雞")
        else
            Citizen.Wait(1000)
        end
        if dst <= 1 and IsControlJustPressed(0, Keys["E"]) and ESX.GetPlayerData().job.name == 'slaughterer' then
            portionanim(2)
            Citizen.Wait(0)
            TriggerServerEvent("Spike-rawchicken")
            Citizen.Wait(1000)
            end
        Citizen.Wait(0)
    end
end)





Citizen.CreateThread(function()
--
    while true do
            local pedcoord = GetEntityCoords(PlayerPedId())
            local dst = GetDistanceBetweenCoords(pedcoord, -106.3441, 6204.656, 31.02625, true)
            if dst <= 5 and ESX.GetPlayerData().job.name == 'slaughterer' then
                DrawText3D(-106.3441, 6204.656, 31.02625, "按[~g~E~w~]包裝雞肉")
            else
                Citizen.Wait(2000)
            end
            if dst <= 2 and IsControlJustPressed(0, Keys["E"]) and ESX.GetPlayerData().job.name == 'slaughterer' then
                animpack()
                TriggerServerEvent("Spike-packchicken")
                Citizen.Wait(2000)
            end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
--
    while true do
            local pedcoord = GetEntityCoords(PlayerPedId())
            local dst = GetDistanceBetweenCoords(pedcoord, -104.0056, 6206.675, 31.02505, true)
            if dst <= 5 and ESX.GetPlayerData().job.name == 'slaughterer' then
                DrawText3D(-104.0056, 6206.675, 31.02505, "按[~g~E~w~]包裝雞肉")
            else
                Citizen.Wait(2000)
            end
            if dst <= 2 and IsControlJustPressed(0, Keys["E"]) and ESX.GetPlayerData().job.name == 'slaughterer' then
                animpack()
                TriggerServerEvent("Spike-packchicken")
                Citizen.Wait(6000)
            end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function()
--
    while true do
            local pedcoord = GetEntityCoords(PlayerPedId())
            local dst = GetDistanceBetweenCoords(pedcoord, Config.SellLocation.pos.x, Config.SellLocation.pos.y, Config.SellLocation.pos.z, true)
            if dst <= 5 and ESX.GetPlayerData().job.name == 'slaughterer' then
                DrawText3D(Config.SellLocation.pos.x, Config.SellLocation.pos.y, Config.SellLocation.pos.z, "按[~g~E~w~]販賣雞肉")
            else
                Citizen.Wait(2000)
            end
            if dst <= 2 and IsControlJustPressed(0, Keys["E"]) and ESX.GetPlayerData().job.name == 'slaughterer' then
                exports['progressBars']:startUI(34000, "販賣雞肉...")
                giveAnim()
                TriggerServerEvent("Spike-sellchicken")
                Citizen.Wait(1000)
            end
        Citizen.Wait(0)
    end
end)






Citizen.CreateThread(function()
    --if ESX.GetPlayerData().job.name == 'slaughterer' then
        local blip = AddBlipForCoord(-68.39154, 6248.480)
        SetBlipSprite (blip, 273)
        SetBlipDisplay(blip, 4)
        SetBlipScale  (blip, 0.8)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, 35)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("（🥩1）日暮生鮮|雞肉工廠")
        EndTextCommandSetBlipName(blip)
    --end
    --Citizen.Wait(5)
    --RemoveBlip(blip)
end)



Citizen.CreateThread(function()
    --if ESX.GetPlayerData().job.name == 'slaughterer' then
        local blip = AddBlipForCoord(Config.SellLocation.pos.x, Config.SellLocation.pos.y)
        SetBlipSprite (blip, 273)
        SetBlipDisplay(blip, 4)
        SetBlipScale  (blip, 0.8)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, 35)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("（🥩2）日暮生鮮|雞肉收購")
        EndTextCommandSetBlipName(blip)
    --end
    --Citizen.Wait(5)
    --RemoveBlip(blip)
end)



function ClearTask()
	playerPed = PlayerPedId()
	FreezeEntityPosition(playerPed, false)
    ClearPedTasks(PlayerPedId())
end

function loadanim(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Citizen.Wait(5)
    end
end


function portionanim(stanowisko)
    loadanim("anim@amb@business@coc@coc_unpack_cut_left@")
    FreezeEntityPosition(PlayerPedId(),true)
    TaskPlayAnim(PlayerPedId(), "anim@amb@business@coc@coc_unpack_cut_left@", "coke_cut_v1_coccutter", 3.0, -8, -1, 63, 0, 0, 0, 0 )
    local PedCoords = GetEntityCoords(PlayerPedId())
    nozyk = CreateObject(GetHashKey('prop_knife'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
    AttachEntityToEntity(nozyk, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0xDEAD), 0.13, 0.14, 0.09, 40.0, 0.0, 0.0, false, false, false, false, 2, true)
    if stanowisko == 1 then
        SetEntityHeading(PlayerPedId(), 311.0)
        kurczak = CreateObject(GetHashKey('prop_int_cf_chick_01'),-94.87, 6207.008, 30.08, true, true, true)
        SetEntityRotation(kurczak,90.0, 0.0, 45.0, 1,true)
        exports['progressBars']:startUI(44000, "屠宰雞肉...")
    elseif stanowisko == 2 then
        SetEntityHeading(PlayerPedId(), 222.0)
        kurczak = CreateObject(GetHashKey('prop_int_cf_chick_01'),-100.39, 6201.56, 29.99, true, true, true)
        SetEntityRotation(kurczak,90.0, 0.0, -45.0, 1,true)
        exports['progressBars']:startUI(44000, "包裝雞肉...")
    end
    Citizen.Wait(44000)
    FreezeEntityPosition(PlayerPedId(),false)
    DeleteEntity(kurczak)
    DeleteEntity(nozyk)
    ClearPedTasks(PlayerPedId())
end



function animpack()
FreezeEntityPosition(PlayerPedId(), true)
SetEntityHeading(PlayerPedId(), 40.0)
	local PedCoords = GetEntityCoords(PlayerPedId())
	mieso = CreateObject(GetHashKey('prop_cs_steak'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	AttachEntityToEntity(mieso, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0x49D9), 0.15, 0.0, 0.01, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
	karton = CreateObject(GetHashKey('prop_cs_clothes_box'),PedCoords.x, PedCoords.y,PedCoords.z, true, true, true)
	AttachEntityToEntity(karton, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.13, 0.0, -0.16, 250.0, -30.0, 0.0, false, false, false, false, 2, true)
	pakuje = 1
	loadanim("anim@heists@ornate_bank@grab_cash_heels")
    TaskPlayAnim(PlayerPedId(), "anim@heists@ornate_bank@grab_cash_heels", "grab", 8.0, -8.0, -1, 1, 0, false, false, false)
    Citizen.Wait(6000)
    FreezeEntityPosition(PlayerPedId(), true)
	ClearPedTasks(PlayerPedId())
	DeleteEntity(karton)
	DeleteEntity(mieso)
ClearPedTasksImmediately(PlayerPedId())
FreezeEntityPosition(PlayerPedId(), false)
end




function giveAnim()
local pid = PlayerPedId()
loadanim('amb@medic@standing@kneel@base')
loadanim('anim@gangops@facility@servers@bodysearch@')
FreezeEntityPosition(pid, true)

local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.9, -0.98))
prop1 = CreateObject(GetHashKey('hei_prop_heist_box'), x, y, z,  true,  true, true)

 TaskPlayAnim(PlayerPedId(), "amb@medic@standing@kneel@base" ,"base" ,8.0, -8.0, -1, 1, 0, false, false, false )
 TaskPlayAnim(PlayerPedId(), "anim@gangops@facility@servers@bodysearch@" ,"player_search" ,8.0, -8.0, -1, 48, 0, false, false, false )

 Citizen.Wait(34000)
DeleteObject(prop1)
ClearPedTasksImmediately(PlayerPedId())
FreezeEntityPosition(PlayerPedId(), false)
end


function alivechickenanim()
local player = PlayerPedId()
FreezeEntityPosition(player, true)
loadanim('amb@prop_human_bum_bin@base')
TaskPlayAnim(PlayerPedId(), "amb@prop_human_bum_bin@base" ,"base" ,8.0, -8.0, -1, 1, 0, false, false, false )
Citizen.Wait(15000)
ClearPedTasksImmediately(PlayerPedId())
FreezeEntityPosition(PlayerPedId(), false)
end
