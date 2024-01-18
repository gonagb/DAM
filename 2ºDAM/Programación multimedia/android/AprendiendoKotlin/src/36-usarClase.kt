fun main(){
    val persona = Persona2()
    persona.nombre = "Gonzalo"
    persona.apellidos = "Aguirre Boix"
    persona.edad = 27

    val persona2 = Persona2()
    persona2.nombre = "Jose Vicente"
    persona2.apellidos = "Carratalá Sanchis"
    persona2.edad = 45

    println(persona.nombre)
    println(persona2.nombre)
}

class Persona2{
    var nombre :String = ""
    var apellidos:String = ""
    var edad:Int = 0
}