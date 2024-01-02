onmessage = function(json) {
    // Extraer datos del objeto JSON recibido
    var datos = json.data.datos;
    var centro = datos.data[16];
    var viva;
    var celulasvivas = 0;

    // Verificar si las celdas adyacentes están vivas o muertas
    if (datos.data[0] == 0) { celulasvivas++; }
    if (datos.data[4] == 0) { celulasvivas++; }
    if (datos.data[8] == 0) { celulasvivas++; }
    if (datos.data[12] == 0) { celulasvivas++; }
    if (datos.data[20] == 0) { celulasvivas++; }
    if (datos.data[24] == 0) { celulasvivas++; }
    if (datos.data[28] == 0) { celulasvivas++; }
    if (datos.data[32] == 0) { celulasvivas++; }

    // Aplicar reglas del juego para determinar si la célula en el centro está viva o muerta
    if (centro == 255) {
        if (celulasvivas == 3) {
            viva = true;
        } else {
            viva = false;
        }
    }
    if (centro == 0) {
        if (celulasvivas == 3 || celulasvivas == 2) {
            viva = true;
        } else {
            viva = false;
        }
    }

    // Crear un objeto JSON con el resultado y las coordenadas
    var jsondevuelta = { "datos": viva, x: json.data.x, y: json.data.y };

    // Enviar el objeto JSON de vuelta
    postMessage(jsondevuelta);
}
