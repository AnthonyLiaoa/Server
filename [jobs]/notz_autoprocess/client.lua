script_name = GetCurrentResourceName()
local onAuto = false
local IsProcessing = false
local gg= 0
Citizen.CreateThread(function()
  while ESX == nil do
   TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent(script_name .. ':client:break')
AddEventHandler(script_name .. ':client:break', function()
	onAuto = false
	IsProcessing = false
	gg = 0
	TriggerEvent("pNotify:SendNotification", {
		text = '<center><strong class="red-text">不能包裝</strong><center>',
		type = "error",
		timeout = 3000,
		layout = "bottomCenter",
		queue = "global"
	})
end)

local ThreadNotz = 1000

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(ThreadNotz)
		local CurrentZone = nil
		local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(cfg['zone']) do
			if(v.Marker['type'] ~= -1 and GetDistanceBetweenCoords(coords, v.coords, true) < 30) then
				ThreadNotz = 5
				DrawMarker(v.Marker['type'], v.coords.x, v.coords.y, v.coords.z + 0.25, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Marker['size']['x'], v.Marker['size']['y'], v.Marker['size']['z'], v.Marker['color']['r'], v.Marker['color']['g'], v.Marker['color']['b'], v.Marker['color']['a'], false, true, 2, true, false, false, false)
				if(GetDistanceBetweenCoords(coords, v.coords, true) < v.Distance) then
					CurrentTextHelper = v.TextShow
					Draw3DText(CurrentTextHelper , v.coords.x, v.coords.y, v.coords.z + 1.0, 0.1,0.1)
					if IsControlJustPressed(1, cfg['Keys'][2]) and not onAuto then
						onAuto = true
						ProcessAuto({i=v.xItem,j =v.coords,k=v.Time})
					end
				end
				elseif(v.Marker['type'] ~= -1 and GetDistanceBetweenCoords(coords, v.coords, true) < 30 + 5.0) then
				ThreadNotz = 1000
			end
		end
	end
end)

local ThreadNotz2 = 1000

Citizen.CreateThread(function() 
	while true do 
		Citizen.Wait(ThreadNotz2) 
		local Coords = GetEntityCoords(PlayerPedId()) 
		if onAuto then
			ThreadNotz2 = 0
			for k,v in ipairs(cfg["DisableKeys"])do 
				DisableControlAction(0,v,true)
			end;
			DrawText2D(0.93, 1.38, 0.6, 1.0, 1.0, "~r~กด "..cfg['Keys'][1].." ยกเลิก", 255, 255, 255, 255)
			DrawText2D(0.93, 1.42, 0.6, 1.0, 1.0, 'รอบ : '..gg, 255, 255, 255, 255)

			if IsControlJustPressed (0,cfg['Keys'][2]) then
				onAuto = false
				gg = 0
				TriggerEvent("pNotify:SendNotification", {
					text = '<center><strong class="green-text">你已經停止動作</strong><center>',
					type = "success",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})
				-- TriggerServerEvent(script_name .. ServerEvent[2])
			end	
		else
			ThreadNotz2 = 1000
		end 
	end 
end)

local ThreadNotz3 = 1000 

function ProcessAuto(result)
	IsProcessing = true
	onAuto = true
	local timeLeft = 5000 / 1000
	while true do
		if onAuto then
			ThreadNotz3 = 5
			local playerPed = PlayerPedId()
			TaskStartScenarioInPlace(playerPed, 'WORLD_HUMAN_JOG_STANDING', 0, false)
			Citizen.Wait(result.k)	
			if GetDistanceBetweenCoords(GetEntityCoords(playerPed), result.j, false) > 10 then
				IsProcessing = false
				onAuto = false
				TriggerEvent("pNotify:SendNotification", {
					text = '<center><strong class="green-text">你離太遠了</strong><center>',
					type = "error",
					timeout = 3000,
					layout = "bottomCenter",
					queue = "global"
				})
				gg = 0
				break
			end
			TriggerServerEvent(script_name .. ':server:additem' , result.i)
			gg = gg + 1
		else
			ClearPedTasksImmediately(GetPlayerPed(-1))
			IsProcessing = false
			Citizen.Wait(cfg['Delay'])
			ThreadNotz3 = 1000
			break
		end
		ClearPedTasksImmediately(GetPlayerPed(-1))
		IsProcessing = false
		Citizen.Wait(ThreadNotz3)
	end
	IsProcessing = false
end


DisplayHelpText = function (str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

RegisterFontFile(cfg['font']) -- the name of your .gfx, without .gfx
fontId = RegisterFontId(cfg['font'])

DrawText2D = function (x, y, scale, width, height, text, r, g, b, a, outline)
	local fontId = RegisterFontId(cfg['font'])
	SetTextFont(fontId)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(0, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x - width/2.3, y - height/2 + 0.005)
end

function Draw3DText(textInput,x,y,z,xo,textscale)
	local x = x
	local y = y
	local z = z
	local px, py, pz = table.unpack(GetGameplayCamCoords())
	local dist       = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)    
	local scale      = (1 / dist) * 20
	local fov        = (1 / GetGameplayCamFov()) * 100
	local scale      = scale * fov   
	SetTextScale(textscale * scale, textscale * scale)
	SetTextFont(fontId)
	SetTextProportional(1)
	SetTextColour(250, 250, 250, 255)
	SetTextDropshadow(1, 1, 1, 1, 255)
	SetTextEdge(2, 0, 0, 0, 150)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(textInput)
	SetDrawOrigin(x, y, z, 0)
	DrawText(0.0, 0.0)
	ClearDrawOrigin()
end

function CreateBlipCircle(coords, text, scale, color, sprite)
	local blip = AddBlipForRadius(coords, 1)

	SetBlipHighDetail(blip, true)
	SetBlipColour(blip, 1)
	SetBlipAlpha (blip, 128)

	-- create a blip in the middle
	blip = AddBlipForCoord(coords)

	SetBlipHighDetail(blip, true)
	SetBlipSprite (blip, sprite)
	SetBlipScale  (blip, scale)
	SetBlipColour (blip, color)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end

Citizen.CreateThread(function()
	for src,info in pairs(cfg['zone']) do
		if info.Blips.OpenBlip then
		CreateBlipCircle(info.coords, info.Blips.name, info.Blips.scale, info.Blips.color, info.Blips.sprite)
		end
	end
end)