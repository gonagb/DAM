from PIL import Image
img = Image.new('RGBA', (30,30), color = 'red')

texto = "Hola, soy goncho y al fin he entendido como la gente subía mensajes en internet codificandolo en imagenes todos estos años"
x = 0
y = 0
for letra in texto:
    print(letra)
    img.putpixel((0,0),(ord(letra),0,0,255))
    x = x+1
    if x == 30:
        x=0
        y = y+1

    
img.save('semana4/miimagen.png')
