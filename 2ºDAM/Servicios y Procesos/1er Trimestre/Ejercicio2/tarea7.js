onmessage = function(datos) {
    console.log(datos);

    // Inicialización de variables
    var destino = 0;

    // Iteración a través de los datos de píxeles
    for (var i = 0; i < datos.data.px.data.length - 8; i += 4) {
        var borde = false;

        // Comprobación de diferencias de píxeles para detectar bordes
        if (Math.abs(datos.data.px.data[i] - datos.data.px.data[i - (datos.data.miab * 4) - 4]) > datos.data.miumbral) {
            borde = true;
        }

        // Aplicación de colores según el resultado
        if (borde) {
            datos.data.pxdst.data[i] = 0;
            datos.data.pxdst.data[i + 1] = 0;
            datos.data.pxdst.data[i + 2] = 0;
            datos.data.pxdst.data[i + 3] = 255;
        } else {
            datos.data.pxdst.data[i] = 255;
            datos.data.pxdst.data[i + 1] = 255;
            datos.data.pxdst.data[i + 2] = 255;
            datos.data.pxdst.data[i + 3] = 255;
        }
    }

    // Creación de objeto JSON con los resultados
    var json = {
        mix: datos.data.mix,
        miy: datos.data.miy,
        resultado: datos.data.pxdst,
        miidworker: datos.data.idworker
    };

    // Envío del objeto JSON como mensaje de vuelta
    postMessage(json);
}
