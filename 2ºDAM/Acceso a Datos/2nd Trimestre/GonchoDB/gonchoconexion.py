from gonchodb_conector import Gonchodb

Conexion1 = Gonchodb("miEmpresa")
Conexion1.insert("clientes","clientePrueba"," Esto es una prueba de conexión ")