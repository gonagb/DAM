var archivos = require('fs');

archivos.appendFile("nuevo.txt","Este es el contenido del txt \n ", function(err){
    if(err) throw err;
    console.log("Misión cumplida")
});
