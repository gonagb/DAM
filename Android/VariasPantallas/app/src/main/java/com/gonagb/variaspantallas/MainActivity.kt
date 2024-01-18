package com.gonagb.variaspantallas

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        // Seleccionamos el botón por ID
        val miboton:Button = findViewById(R.id.miboton2)
        val miboton3:Button = findViewById(R.id.miboton3)

        // Creo un Listener para el click del boton

        miboton.setOnClickListener{
            var miedad = 18
            //    Toast.makeText(applicationContext,"Mi edad es: "+miedad, Toast.LENGTH_SHORT).show()
            // Ahora lanzamos una actividad 2 desde la actividad 1
            val intent = Intent(this@MainActivity, MainActivity2::class.java)
            intent.putExtra("edad",miedad.toString())
            startActivity(intent)
        }

        miboton3.setOnClickListener{
            var miedad = 28
            //    Toast.makeText(applicationContext,"Mi edad es: "+miedad, Toast.LENGTH_SHORT).show()
            // Ahora lanzamos una actividad 2 desde la actividad 1
            val intent = Intent(this@MainActivity, MainActivity3::class.java)
            intent.putExtra("edad",miedad.toString())
            startActivity(intent)
        }
    }
}