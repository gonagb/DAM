fun main(){
    val diadelasemana:Int = 4
    val resultado = when(diadelasemana){
        1 -> "Hoy es Lunes"
        2 -> "Hoy es Martes"
        3 -> "Hoy es Miercoles"
        4 -> "Hoy es Jueves"
        5 -> "Hoy es Viernes"
        6 -> "Hoy es Sabado"
        7 -> "Hoy es Domingo"
        else -> "No sé que has escrito pero no es un día"
    }
    println(resultado)
}