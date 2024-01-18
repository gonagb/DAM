var mongoose = require ('mongoose');
// npm install mongoose

const conexion = 'mongodb://127.0.0.1/contacto'

const formularioSchema = new mongoose.Schema({
    nombre:String,
    asunto:String, 
    mensaje:String, 
    fecha:String
});

const Formulario = mongoose.model("Formulario", formularioSchema);

// Me conecto a la conexion creada con Mongoose
mongoose.connect(conexion,{useNewUrlParser:true,useUnifiedTopology:true,}).then(function(){
    console.log("Conectado a MongoDB con Mongoose");
});