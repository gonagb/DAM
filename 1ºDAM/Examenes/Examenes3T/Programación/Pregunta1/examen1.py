import sqlite3 as lite
import sys

# Me conecto a una base de datos llamada musica
conexion = lite.connect("musica.sqlite")

# Establezco un cursor para saber en qué punto de la base de datos voy a trabajar
cursor = conexion.cursor()

while True:
    # Le pedimos al usuario que seleccione una opción
    print("Selecciona una opción:\n")
    print("\t1 - Listado de registros")
    print("\t2 - Añadir un registro")
    print("\t3 - Actualizar un registro")
    print("\t4 - Eliminar un registro")
    print("\t5 - Salir\n")
    opcion = input("Tu opción: ")

    if opcion == "1":
        # Listar todos los registros de la tabla "musica"
        cursor.execute("SELECT * FROM musica;")
        datos = cursor.fetchall()
        for i in datos:
            print ("ID:",i[0],"\n Titulo del Album:",i[1],"\n Artista:",i[2],"\n Fecha de Lanzamiento:",i[3],"\n Genero musical:",i[4])
    elif opcion == "2":
        # Insertamos un nuevo registro mediante una sentencia SQL y lo añadimos a la tabla "musica"
        cursor.execute("INSERT INTO musica VALUES(NULL,'Moonlight922','Cruz Cafuné','10 de Enero de 2020', 'Rap Canario');")
        conexion.commit()
        print("Registro añadido correctamente")
    elif opcion == "3":
        # Actualizar el género musical de los registros mediante una sentencia SQL
        cursor.execute("UPDATE musica SET genero = 'Hip Hop' WHERE genero = 'Rap Canario';")
        conexion.commit()
        print("Registros actualizados correctamente")
    elif opcion == "4":
        # Eliminar un registro específico de la tabla "musica"
        id_registro = input("ID del registro a eliminar: ")
        cursor.execute("DELETE FROM musica WHERE identificador = ?;", (id_registro,))
        conexion.commit()
        print("Registro eliminado correctamente")
    elif opcion == "5":
        print("¡Adiós!")
        break
    else:
        print("Opción inválida. Por favor, selecciona una opción válida.\n")

conexion.close()
