package com.goncho.examenmarcas1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.webkit.WebView
import android.webkit.WebViewClient

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val url = "file:///android_asset/index.html"
        val miVistaWeb: WebView = findViewById(R.id.vistaWeb)
        miVistaWeb.loadUrl(url)

        val ajustesVisorWeb = miVistaWeb.settings
        ajustesVisorWeb.javaScriptEnabled = true

        }
    }

