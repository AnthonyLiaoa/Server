$('document').ready(function() {
    

    window.addEventListener("message", function (event) {
        if (event.data.action == 'audio') {
            var sound = document.querySelector('#sounds');
            var volume = (event.data.audio['volume'] / 10 ) * event.data.sfx

            if (event.data.distance !== 0) {
                var volume = volume / event.data.distance
            }
            sound.setAttribute('src', 'sounds/' + event.data.audio['file']);
            sound.volume = volume;
			sound.play();
        }
        else
        {
            if (event.data.text == "Locked") {
                event.data.text = '<i style="color:red" class="fas fa-lock"></i><br><i style="color:orange">🚫已鎖定</i>'
            } else if (event.data.text == "Unlocked") {
                event.data.text = '<i style="color:limegreen" class="fas fa-unlock"></i><br><i style="color:orange">未鎖</i>'
            } else if (event.data.text == "Locking") {
                event.data.text = '<i style="color:blue" class="fas fa-lock"></i><br><i style="color:orange">⚙️上鎖中</i>'
            }

            event.x = (event.data.x * 100) + '%';
            event.y = (event.data.y * 100) + '%';
            if (event.data.text == undefined) {event.data.action = "hide"}
            $('.doorlock').html(event.data.text);
            $('.doorlock').css({ "left": event.x, "top": event.y });

            if (event.data.action == "display") {
                $('.doorlock').show()
                $('.container').show()
            } else if (event.data.action == "hide") {
                $('.doorlock').html('');
                $('.doorlock').hide()
                $('.container').hide()
            }
        }
    })
});
