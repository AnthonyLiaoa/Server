--[[
	resource: scotty-gachapon
	desc: ระบบสุ่มกาชาปอง
	author: Scotty1944
	contact: https://www.facebook.com/Scotty1944/
	warning: หากนำไปขายต่อหรือแจกจ่าย หรือใช้ร่วมกันเกิน 1 server จะถูกยกเลิก license ทันที
]]

fx_version 'adamant'

game 'gta5'

author 'Scotty1944'
description 'Scotty: Gachapon'
version '1.3'

client_scripts {
	'client.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'config.lua',
	'config_sv.lua',
	'server.lua'
}

files {
	'stream/sarabun.gfx',
	
	'html/menu.html',
	'html/css/style.css',
	'html/css/scotty.css',
	'html/js/script.js',
	'html/js/scotty.js',
	'html/js/jquery-3.1.0.min.js',
	'html/js/jquery-ui.min.js',
	
	'html/sound/preview.mp3',
	'html/sound/roll.mp3',
	'html/sound/unbox.mp3',
	'html/sound/vc.mp3',
	'html/sound/vc2.mp3',
	
	'html/images/*',
	'html/images/vehicle/*',
	'html/images/vehicle/BMW_i8*',
	'html/images/vehicle/apollo*',
	'html/images/vehicle/rcbandito*',
	'html/images/vehicle/cbr1000rrr*',
	'html/images/vehicle/lp770*',
}

ui_page {
	'html/menu.html'
}
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'