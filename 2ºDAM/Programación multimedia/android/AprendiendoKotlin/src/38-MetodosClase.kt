fun main(){
    val persona_1 = Persona4("Gonzalo","Aguirre Boix",27)
    val persona_2 = Persona4("Jose Vicente","Carratala Sanchis",45)
    println(persona_1.saluda())
}

class Persona4(nombre:String,apellidos:String,edad:Int){
    fun saluda():String{
        return "¡Hola! ¿Que haces?"
    }
}