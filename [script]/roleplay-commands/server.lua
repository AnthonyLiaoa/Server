--119 Message
RegisterCommand("119", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5醫護局: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 30, 144, 255 }, message)
end)

--119c Message
RegisterCommand("119com", function(source, args, raw)
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5醫護局: ^0(^1" .. GetPlayerName(source) .."^0): 收到呼叫通知，正在去的路上！", { 30, 144, 255 },message)
end)

--country
--[[RegisterCommand("nmsl", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
	TriggerClientEvent('chatMessage', -1, "^3涼山特勤部隊: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)]]--
--110 Message
RegisterCommand("pd", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
	TriggerClientEvent('chatMessage', -1, "^4警政署: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

RegisterCommand("pdcom", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
	TriggerClientEvent('chatMessage', -1, "^4警政署: ^0(^1" .. GetPlayerName(source) .."^0): ^3已接獲報案，正在去的路上！", { 128, 128, 128 })
end)

--mci message
RegisterCommand("mci", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
	TriggerClientEvent('chatMessage', -1, "^6修車廠: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--mcicom Message
RegisterCommand("mcicom", function(source, args, raw)
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^6修車廠: ^0(^1" .. GetPlayerName(source) .."^0): 收到呼叫通知，正在去的路上！", { 30, 144, 255 }, message)
end)

--taxi message
--[[RegisterCommand("taxi", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
	TriggerClientEvent('chatMessage', -1, "^6紅花商會: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--taxicom Message
RegisterCommand("taxicom", function(source, args, raw)
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^6紅花商會: ^0(^1" .. GetPlayerName(source) .."^0): 收到呼叫通知，正在去的路上！", { 30, 144, 255 }, message)
end)]]--

--grove Message
RegisterCommand("md", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^3血狼社: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--市政府 Message
RegisterCommand("wtf", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^8市政府: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--mafia Message
RegisterCommand("mafia", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5稻川集團: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--thelostmc Message
RegisterCommand("mc", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5健合會: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--both Message
--[[RegisterCommand("bor", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^9焰暘堂: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)]]--
--
--[[RegisterCommand("shit", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^1子墨死了: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)]]--
--liao
RegisterCommand("wuhh", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^6我不是管理員😘: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--代工廠
RegisterCommand("employed", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^2代工幫🤞: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)
--cardealer Message
--[[RegisterCommand("cardealer", function(source, args, raw)
    if #args <= 0 then return end
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5帝國車商: ^0(^1" .. GetPlayerName(source) .." ^0| ^1" ..source.."^0)", { 128, 128, 128 }, message)
end)

--cardealercom Message
RegisterCommand("cardealercom", function(source, args, raw)
    local message = table.concat(args, " ")
    TriggerClientEvent('chatMessage', -1, "^5帝國車商: ^0(^1" .. GetPlayerName(source) .."^0): 收到呼叫通知，正在去的路上！", { 30, 144, 255 }, message)
end)]]--

--Function
function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end

--Console Message
 print "Roleplay Commands - Made by Aero"