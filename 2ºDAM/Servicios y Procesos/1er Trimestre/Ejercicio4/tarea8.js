var id;
var otros;
var comida;

// Cuando se recibe un mensaje, se actualizan las variables id, otros y comida.
onmessage = function (event) {
    id = event.data.id;
    otros = event.data.otros;
    comida = event.data.comida;
};

var tempo;

inicio(); // Llamada a la función inicio.

// Variables iniciales para posición, color, tamaño, dirección, energía, hambre, y estado.
var posx = Math.random() * 512;
var posy = Math.random() * 512;
var cr = Math.round(Math.random() * 256);
var cg = Math.round(Math.random() * 256);
var cb = Math.round(Math.random() * 256);
var tam = 2;
var direccion = Math.random() * Math.PI * 2;
var velocidad = Math.random() * 2;
var energia = Math.random() * 50 + 50;
var hambre = 100 - Math.random() * 50 + 50;
var muerto = false;
var dormido = false;
var hambriento = false;

// Función para iniciar el bucle.
function inicio() {
    tempo = setTimeout(bucle, 1000);
}

// Función para detectar colisión con los bordes.
function colisionabordes() {
    if (posx < 0 || posx > 512 || posy < 0 || posy > 512) {
        direccion += Math.PI;
    }
}

// Función para mover la entidad.
function mueve() {
    posx += Math.cos(direccion) * velocidad;
    posy += Math.sin(direccion) * velocidad;
    energia -= 0.1;
    hambre += 0.1;
}

// Función para buscar comida cercana.
function buscocomida() {
    if (hambriento) {
        for (var i = 0; i < comida.length; i++) {
            var a = posx - comida[i].x;
            var b = posy - comida[i].y;
            var distancia = Math.sqrt(a * a + b * b);

            if (distancia < 60) {
                var angleRadians = Math.atan2(comida[i].y - posy, comida[i].x - posx);
                direccion = angleRadians;
                if (distancia < 50) {
                    hambre -= 0.5;
                }
            }
        }
    }
}

// Función para comer.
function comer() {
    // Implementa la lógica de comer aquí.
}

// Función para verificar si la entidad ha muerto de hambre.
function muerte() {
    if (hambre > 100) {
        muerto = true;
        cr = 0;
        cg = 0;
        cb = 0;
    }
}

// Función para cambiar aleatoriamente la dirección.
function cambiadirrecion() {
    direccion += (Math.random() - 0.5) / 4;
    // posx += Math.cos(direccion) * velocidad*2;
    // posy += Math.sin(direccion) * velocidad*2;
}

// Función para evitar colisiones con otras entidades.
function evitarse() {
    for (var i = 0; i < otros.length; i++) {
        var a = posx - otros[i].x;
        var b = posy - otros[i].y;
        var distancia = Math.sqrt(a * a + b * b);
        
        if (distancia < 20 && otros[i].id !== id && distancia > 3 && !hambriento) {
            var angleRadians = Math.atan2(posy - otros[i].y, posx - otros[i].x);
            direccion = angleRadians + Math.PI; // Cambia la dirección para evitar colisión.
            tam = 5;
        }
    }
}


// Función para dormir y aumentar la energía.
function duerme() {
    energia += 0.3;
}

// Función principal que controla el comportamiento de la entidad.
function bucle() {
    if (hambre < 0) {
        hambre = 0;
    }
    if (energia > 100) {
        energia = 100;
    }
    if (!muerto) { // Se usa el operador ! en lugar de == false.
        tam = energia / 10;
        colisionabordes();
        cambiadirrecion();
        buscocomida();
        
        // Dormir y mover
        if (energia < 20) {
            dormido = true;
        }
        if (dormido) {
            duerme();
        }
        if (energia > 80) {
            dormido = false;
        }
        if (!dormido) {
            mueve();
        }

        // Hambre y comida
        if (hambre > 80) {
            hambriento = true; 
        }
        if (hambre < 20) {
            hambriento = false;
            direccion = Math.random() * Math.PI * 2;
        }

        evitarse();
    }

    postMessage({ id: id, x: posx, y: posy, mir: cr, mig: cg, mib: cb, tam: tam });
    clearTimeout(tempo);
    tempo = setTimeout(bucle, 33);
}
