## Para poder trabajar con bases de datos:
import sqlite3 as lite
import sys

## Me conecto a una base de datos llamada agenda
conexion = lite.connect("musica.sqlite")
## Establezco un cursor para saber en un punto de la base de datos voy a trabajar
cursor = conexion.cursor()

while True:
    ## Le pedimos al usuario que seleccione una opción:
    print("Selecciona una opción \n")
    print("\t 1 - Listado de registros \n")
    print("\t 2 - Añadir un registro \n")
    print("\t 3 - Actualizar un registro \n")
    print("\t 4 - Eliminar un registro \n")
    print("\t 5 - Salir\n")
    print("Tu opción: \n")
    
    ## Aquí ejecutamos las acciones anteriores
    num = input()
    if num == "1":
        cursor.execute("SELECT * FROM musica;")
        datos = cursor.fetchall()
        for i in datos:
            print ("ID:",i[0],"\n Titulo del Album:",i[1],"\n Artista:",i[2],"\n Fecha de Lanzamiento:",i[3],"\n Genero musical:",i[4])
    elif num == "2":
        cursor.execute("INSERT INTO musica VALUES(NULL,'Moonlight922','Cruz Cafuné','10 de Enero de 2020', 'Rap Canario');")
        print("Has introducido", i[5])
        conexion.commit()
    elif num == "3":
        cursor.execute("UPDATE musica SET genero  = 'Hip Hop' WHERE genero = 'Rap Canario';")
        print("Has actualizado", i[5])
        conexion.commit()
    elif num == "4":
        cursor.execute("DELETE FROM musica WHERE identificador = 5;")
        print("Has eliminado", i[5])
        conexion.commit()
    elif num == "5":
        print("¡Adiós!")
        break
    else:
        print("Opción inválida. Por favor, selecciona una opción válida.\n")

conexion.commit()
