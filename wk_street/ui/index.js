$(function() {

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (event.data.type == "base") {
            document.getElementById("street").innerHTML = item.streetname;
        }
    })

});