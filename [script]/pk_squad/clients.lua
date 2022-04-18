RegisterNetEvent("SquadCreated")
RegisterNetEvent("SquadMemberJoined")
RegisterNetEvent("SquadMemberLeft")
RegisterNetEvent("LeftSquad")
RegisterNetEvent("JoinedSquad")
rd = false

curSquadMembers = {}

local playersDB = {}
for i=0, 256 do
	playersDB[i] = {}
end

AddEventHandler("SquadCreated", function(squadName)
	curSquadMembers = {}
	TriggerEvent("showNotification", "~g~"..squadName.."~w~ has been created!")
	Citizen.Trace("created new squad\n")
	UpdateSquadMembers()
end)

AddEventHandler("JoinedSquad", function(members,squadName)
	curSquadMembers = {}
	TriggerEvent("showNotification", "You joined ~g~"..squadName.."~w~!")
	Citizen.Trace("joined a new squad\n")
	for i,theMember in ipairs(members) do
		table.insert(curSquadMembers,theMember.id)
	end
	UpdateSquadMembers()
end)

AddEventHandler("LeftSquad", function(squadName)
	curSquadMembers = {}
	TriggerEvent("showNotification", "You left ~g~"..squadName.."~w~!")
	Citizen.Trace("we are leaving this squad\n")
	UpdateSquadMembers()
end)

AddEventHandler("SquadMemberLeft", function(memberId,memberName)
	found = false
	for i,theTeammate in ipairs(curSquadMembers) do
		if theTeammate == memberId then
			found = true
			table.remove(curSquadMembers, i)
			TriggerEvent("showNotification", "~g~"..memberName.."~w~ left your Squad!")
		end
	end
	if not found then Citizen.Trace("squad member left but we couldn't find him in our member list\n") else Citizen.Trace("player left us and was removed\n") end
	UpdateSquadMembers()
end)

AddEventHandler("SquadMemberJoined", function(PlayerName,PlayerId)
	TriggerEvent("showNotification", "~g~"..PlayerName.."~w~ joined your Squad!")
	Citizen.Trace("someone joined our squad\n")
	table.insert(curSquadMembers, PlayerId)
	UpdateSquadMembers()
end)

Citizen.CreateThread(function()
	function UpdateSquadMembers()
		ptable = GetPlayers()
		for id, Player in ipairs(ptable) do
			isTeamMate = false
			for i,theTeammate in ipairs(curSquadMembers) do
				if Player == GetPlayerFromServerId(theTeammate) then
					if playersDB[Player].blip then RemoveBlip(playersDB[Player].blip) end
					isTeamMate = true
					local ped = GetPlayerPed(GetPlayerFromServerId(theTeammate))
					local blip = AddBlipForEntity(ped)
					SetBlipSprite(blip, 1)
					Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
					SetBlipNameToPlayerName(blip, Player)
					SetBlipScale(blip, 0.85)
					playersDB[Player].blip = blip
				end
			end
			if isTeamMate == false then
				if playersDB[Player].blip then
					RemoveBlip(playersDB[Player].blip)
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for i,Player in ipairs(playersDB) do
			for id,theTeammate in ipairs(curSquadMembers) do
				if Player == GetPlayerFromServerId(theTeammate) then
					local veh = GetVehiclePedIsIn(playersDB[Player].ped, false)
					if playersDB[Player].ped ~= GetPlayerPed(playersDB[Player]) then
						RemoveBlip(RemoveBlip(playersDB[Player].blip))
						local ped = GetPlayerPed(GetPlayerFromServerId(theTeammate))
						local blip = AddBlipForEntity(ped)
						SetBlipSprite(blip, 1)
						Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
						SetBlipNameToPlayerName(blip, Player)
						SetBlipScale(blip, 0.85)
						playersDB[Player].blip = blip
					end
					local blip = playersDB[Player].blip
					local blipSprite = GetBlipSprite(blip)
					if IsPedInAnyVehicle(playersDB[Player].ped, true) then
						local sprite = GetVehicleSpriteId(veh)

						if blipSprite ~= sprite then
							SetBlipSprite(blip, sprite)
							Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false)
						end
					else
						if blipSprite ~= 1 then
							SetBlipSprite(blip, 1)
							Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
						end
					end
				end
			end
		end
	end
end)

function GetPlayers()
	local players = {}

	for i = 0, 256 do
		if NetworkIsPlayerActive(i) then
			table.insert(players, i)
		end
	end
	return players
end

Citizen.CreateThread(function()
	local currentItemIndex = 1
	local selectedItemIndex = 1

	WarMenu.CreateMenu('Interaction', 'Squad Menu')

	if rd then
		WarMenu.CreateSubMenu('debug', 'Interaction', 'Debug Menu')
	end

	WarMenu.CreateSubMenu('squad', 'Interaction', 'Squad Menu')

	while true do
		if WarMenu.IsMenuOpened('Interaction') then
			if WarMenu.MenuButton('Squad Menu', 'squad') then

			elseif rd and WarMenu.MenuButton("Debug Menu", "debug") then

			end
			WarMenu.Display()
		elseif WarMenu.IsMenuOpened('squad') then
			if WarMenu.Button('Join Squad') then
				DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP12N", "", "", "", "", "", 128 + 1)

				while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
					Citizen.Wait( 0 )
				end

				local result = GetOnscreenKeyboardResult()

				if result then
					TriggerServerEvent("joinsquad", result, GetPlayerName(PlayerId()))
				end

			elseif WarMenu.Button('Leave Squad') then
				TriggerServerEvent("leavesquad", GetPlayerName(PlayerId()))
			end
			WarMenu.Display()

			------------------------------------------------ DEBUG CODE --------------------------------------------------
			elseif IsControlJustReleased(0, 244) then
			if possessed then
				TriggerEvent("showNotification", "~r~I am unable to reach for my pocket.")
			else
				WarMenu.OpenMenu('Interaction')
			end
		end

		Citizen.Wait(0)
	end
end)