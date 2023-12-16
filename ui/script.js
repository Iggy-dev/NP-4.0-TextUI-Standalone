window.addEventListener('message', function(event) {
    let data = event.data
    if (event.data.type == 'show') {
        $(".tecla").html(data.input);
        $(".texto").html(data.texto);
        $("body").fadeIn();
    }

    if (event.data.type == 'hide') {
        $("body").fadeOut();
    }
})