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
const NuevoFormulario = new Formulario({
    nombre:"Goncho",
    asunto:"Esto es una prueba de email de la grabación",
    mensaje:"Este es el cuerpo del mensaje",
    fecha:"16/01/2024",
})

// Me conecto a la conexion creada con Mongoose
mongoose.connect(conexion).then(function(){
    console.log("Conectado a MongoDB con Mongoose")
    NuevoFormulario.save()
    .then(function(){
     console.log("Insertado")
    })
})