import random

print("Piedra, Papel o Tijera, vO.5")
def bucle():
    print("1 = PIEDRA")
    print("2 = PAPEL")
    print("3 = TIJERA")
    tirada = int(input("Escoge tu opción: "))

    tiradaordenador = random.randint(1,3)

    if tiradaordenador == 1:
        print ("La máquina ha escogido: piedra")
    elif tiradaordenador == 2:
        print ("La máquina ha escogido: papel")
    elif tiradaordenador == 3:
        print ("La máquina ha escogido: tijera")

    if tirada == 1 and tiradaordenador == 1:
        print ("¡EMPATE!")
    elif tirada == 1 and tiradaordenador == 2:
        print ("Máquina gana")
    elif tirada == 1 and tiradaordenador == 3:
        print ("Has ganado! ")
    elif tirada == 2 and tiradaordenador == 1:
        print ("Has ganado! ")
    elif tirada == 2 and tiradaordenador == 2:
        print ("EMPATE!")
    elif tirada == 2 and tiradaordenador == 3:
        print ("Máquina gana")
    elif tirada == 3 and tiradaordenador == 1:
        print ("Máquina gana")
    elif tirada == 3 and tiradaordenador == 2:
        print ("Has ganado! ")
    elif tirada == 3 and tiradaordenador == 3:
        print ("EMPATE!")
    bucle()
bucle()
    
    
    