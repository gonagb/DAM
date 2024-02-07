package com.gonagb.paroimpar

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.TextView
import kotlin.random.Random

class MainActivity : AppCompatActivity() {

    private lateinit var radioGroup: RadioGroup
    private lateinit var botonPartida: Button
    private lateinit var resultado1: TextView
    private lateinit var resultado2: TextView
    private lateinit var numeroelegido: EditText

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        radioGroup = findViewById(R.id.radioGroup)
        botonPartida = findViewById(R.id.botonPartida)
        resultado1= findViewById(R.id.resultado1)
        resultado2= findViewById(R.id.resultado2)

        numeroelegido = findViewById(R.id.minumero)

        botonPartida.setOnClickListener{
            clickBotonLanzar()
        }
    }

    private fun clickBotonLanzar(){
        val seleccionado = radioGroup.checkedRadioButtonId
        if(seleccionado != -1){
            val radioseleccionado = findViewById<RadioButton>(seleccionado)
            val valorseleccionado = radioseleccionado.text.toString()
            val numeroseleccionado = numeroelegido.text.toString()
            val numeromaquina = Random.nextInt(10)

            resultado1.text = "La máquina ha escogido: $numeromaquina"

            val total = numeroseleccionado.toInt() + numeromaquina.toInt()
            if(total%2 == 0 && valorseleccionado == "pares"){
                resultado2.text = "El resultado es : $total, la máquina gana"

            }else{
                resultado2.text = "El resultado es : $total, ganaste!"

            }


        }
    }
}