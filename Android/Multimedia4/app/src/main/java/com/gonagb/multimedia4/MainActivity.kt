package com.gonagb.multimedia4

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast

class MainActivity : AppCompatActivity() {
// En primer lugar creamos las variables globales
    private lateinit var campo1: EditText;
    private lateinit var campo2: EditText;
    private lateinit var miboton: Button;


    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    // A esas variables les asigno elementos reales del UI
        campo1 = findViewById(R.id.campo1)
        campo2 = findViewById(R.id.campo2)
        miboton = findViewById(R.id.miboton)
    // Al boton le pongo un Listener
        miboton.setOnClickListener{
    // Atrapo los valores de cada uno de los campos
        val texto1 = campo1.text.toString()
        val texto2 = campo2.text.toString()
    // Y los muestro por pantalla de momento en un Toast
        val mensaje = "Nombre: $texto1 - Apellidos : $texto2"
        Toast.makeText(this,mensaje,Toast.LENGTH_SHORT).show()
        }
    }
}