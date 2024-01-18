fun main(){

    var tigre = Tigre()
    println(tigre.zarpazo())
}

open class Felino{
    fun zarpazo():String{
        return "soy un felino y te meto un zarpazo"
    }
}

class Tigre: Felino() {

    fun rugir():String{
        return "Soy un tigre y puedo rugir"
    }
}