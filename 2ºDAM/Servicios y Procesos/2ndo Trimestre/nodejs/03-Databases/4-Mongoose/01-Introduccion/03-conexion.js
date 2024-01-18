var mongoose = require ('mongoose');
// npm install mongoose

const conexion = 'mongodb://127.0.0.1/contacto'

// Me conecto a la conexion creada con Mongoose

mongoose.connect(conexion,{useNewUrlParser:true,useUnifiedTopology:true,}).then(function(){
    console.log("Conectado a MongoDB con Mongoose");
});