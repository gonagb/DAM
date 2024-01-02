## Importamos las librerias necesarias
from PIL import Image
import math

## Abrimos la imagen a 
imagen = Image.open("jv.jpg")
## Cargo los pixeles de la imagen y saco un print de su tamaño
pixeles = imagen.load() 
print(imagen.size)
## Ordenamos los pixeles en un array
print(pixeles[0,0])

altura = imagen.size[1] 
anchura = imagen.size[0]
## Le pedimos a cada pixel a partir de el plano con coordenadas x e y
## Sumamos R+G+B y lo dividimos entre 3 para sacar el promedio
## Hacemos un if/else, donde if es menor que 127 es Blanco, y else es Negro

for x in range(0,anchura):
    for y in range(0,altura):
        rojo = pixeles[x,y][0]
        verde = pixeles[x,y][1]
        azul = pixeles[x,y][2]
        color = math.floor((rojo+verde+azul)/3)

        if color < 127:
            rojo = 0
            verde = 0
            azul = 0

        else:
            rojo = 255
            verde = 255
            azul = 255

        pixeles[x,y] = (rojo,verde,azul)
## Por último, guardamos la imagen nueva
imagen.save("resultadoJV.jpg") 
