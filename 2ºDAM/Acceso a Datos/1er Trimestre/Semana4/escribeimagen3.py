# Importamos la clase Image de la biblioteca Pillow (PIL)
from PIL import Image
# Importamos la biblioteca tkinter y su módulo ttk
import tkinter as tk
from tkinter import ttk

# Creamos una instancia de la clase Tk para la interfaz gráfica
raiz = tk.Tk()
# Establecemos las dimensiones iniciales de la ventana
raiz.geometry('200x200')

# Creamos variables de cadena para almacenar el texto y el nombre del archivo
textoescrito = tk.StringVar()
nombrearchivo = tk.StringVar()

# Definimos la función 'guardar' que se ejecuta al hacer clic en el botón
def guardar():
    ancho = 30
    alto = 30
    # Creamos una nueva imagen en blanco y negro con fondo negro
    img = Image.new('RGBA', (ancho, alto), color='black')
    # Obtenemos el texto ingresado por el usuario
    texto = textoescrito.get()
    x = 0
    y = 0
    # Iteramos sobre cada carácter del texto
    for letra in texto:
        # Asignamos el valor ASCII del carácter al componente rojo del píxel
        img.putpixel((x, y), (ord(letra), 0, 0, 255))
        x = x + 1
        # Controlamos el ancho de la imagen
        if x == ancho:
            x = 0
            y = y + 1
    # Guardamos la imagen en formato PNG con el nombre proporcionado por el usuario
    img.save(nombrearchivo.get() + '.png')

# Creamos etiquetas, entradas y botones para la interfaz gráfica
etiqueta1 = tk.Label(raiz, text="Indica el nombre del archivo")
etiqueta1.pack()

entrada1 = tk.Entry(raiz, textvariable=nombrearchivo)
entrada1.pack()

etiqueta2 = tk.Label(raiz, text="Indica el mensaje a grabar")
etiqueta2.pack()

entrada2 = tk.Entry(raiz, textvariable=textoescrito)
entrada2.pack()

boton = tk.Button(raiz, text="Guardar", command=guardar)
boton.pack()

# Iniciamos el bucle principal de la interfaz gráfica
raiz.mainloop()
