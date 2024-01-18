fun main(){
    val nombre:String = "Gonzalo"
    val mote:String = "Goncho"
    val solo_nombre:String = "Gonzalo"
    val apellidos:String = "Aguirre Boix"
    println(nombre.length)
    println(nombre.uppercase())
    println(nombre.lowercase())
    println(nombre.compareTo(mote))
    println(nombre.indexOf(solo_nombre))
    println(nombre+" "+apellidos)
    println(nombre.plus(apellidos))
    println("Mi nombre es: $nombre $apellidos")
}