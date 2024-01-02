var boton = document.getElementById("boton");
var overlay = document.getElementById("imagen-overlay");
var imagen = document.getElementById("imagen");

boton.onclick = function() {
    overlay.style.display = "block";
}

overlay.onclick = function() {
    overlay.style.display = "none";
}

imagen.onclick = function(event) {
    event.stopPropagation();
}
