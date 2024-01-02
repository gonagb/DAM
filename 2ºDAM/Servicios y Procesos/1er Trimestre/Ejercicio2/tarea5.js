onmessage = function(datos){

    console.log(datos)
    console.log("tu edad es:" + datos.data.edad)
    console.log("tu nombre es:" + datos.data.nombre)

    // Calculo 
    console.log("Vamos con un calculo")
    var numero = 33;
    var iters = 100;
    for(var i = 0; i<iters;i++){
        numero = numero*3;
    }
postMessage(numero);
}