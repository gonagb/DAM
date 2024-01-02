var id;
var otros;

onmessage = function (event) {
    id = event.data.id;
    otros = event.data.otros;
};

var tempo;

inicio();

var posx = Math.random() * 1024;
var posy = Math.random() * 1024;

var cr = Math.round(Math.random()*256);
var cg = Math.round(Math.random()*256);
var cb = Math.round(Math.random()*256);

var tam = 2

var direccion = Math.random() * Math.PI * 2;
var velocidad = Math.random() * 3;

function inicio() {
    tempo = setTimeout(bucle, 1000);
}

function colisionabordes(){
    if(posx < 0 || posx > 1024 || posy < 0 || posy > 1024){
        direccion += Math.PI;
    }
}
function mueve(){
    posx += Math.cos(direccion) * velocidad/2;
    posy += Math.sin(direccion) * velocidad/2;

}
function cambiadirrecion(){
    direccion += (Math.random() - 0.5) / 4;
    posx += Math.cos(direccion) * velocidad*2;
    posy += Math.sin(direccion) * velocidad*2;

}
function evitarse(){
    for (var i = 0; i < otros.length; i++){
         var a = posx - otros[i].x;
         var b = posy - otros[i].y;
         var distancia = Math.sqrt( a*a + b*b);
         if (distancia < 50 && otros.id != id && distancia > 4){
            direccion += Math.PI;
            tam = 5;
         }

    }
}


function bucle() {
    tam = 2;
    colisionabordes();
    cambiadirrecion();
    mueve();
    evitarse();

    postMessage({ id: id, x: posx, y: posy, mir: cr, mig: cg, mib: cb, tam: tam });
    clearTimeout(tempo);
    tempo = setTimeout(bucle, 33);
}
