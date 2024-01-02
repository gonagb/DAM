onmessage = function(){
    // Calculo 
    console.log("Vamos con el Calculo ")
    var numero = 33;
    var iters = 100;
    for(var i = 0; i<iters;i++){
        numero = numero*3;
    }
postMessage(numero);
}