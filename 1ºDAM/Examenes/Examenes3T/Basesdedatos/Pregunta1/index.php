<?php

        include "gonchodb.php";

        $conexion = new Gonchodb("crm");
        $apellido = 'Aguirre';
//$conexion->peticion("CREATE TABLE clientes (id,nombre,apellidos,email,telefono)");
// $conexion->peticion('INSERT INTO clientes VALUES ("2","JV","Carratala","jv@goncho.com","636516536")');
//$conexion->peticion("CREATE TABLE productos (id,nombreproducto,precio,dimensiones,descripcion)");
//$conexion->peticion('INSERT INTO productos VALUES ("1","teclado","120","80x15x7","corsair k95 rgb")');
/* $datos = $conexion->peticion("SELECT * FROM clientes");
echo '<table border="1">';
echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
for($i = 0;$i<count($datos);$i++){
    echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['email']."</td><td>".$datos[$i]['telefono']."</td></tr>";}
echo "</table>";
*/
        // Aquí insertamos la variable $datos para hacer la query.
        $datos = $conexion->peticion("SELECT * FROM clientes ORDER BY id ASC");

/*
echo "Vamos a ver lo que queda despues de eliminar <br>";

$datos = $conexion->peticion("SELECT * FROM clientes");
echo '<table border="1">';
echo "<tr><td>nombre</td><td>apellidos</td><td>telefono</td><td>email</td></tr>";
for($i = 0;$i<count($datos);$i++){
    echo "<tr><td>".$datos[$i]['nombre']."</td><td>".$datos[$i]['apellidos']."</td><td>".$datos[$i]['email']."</td><td>".$datos[$i]['telefono']."</td></tr>";
}echo "</table>";*/

// Leemos el archivo CSV y almacenamos los datos en un array
$clientes = [];
if ($archivo = fopen("db\crm\clientes.csv", "r")) {
    while ($datos = fgetcsv($archivo, 1000, ",")) {
        $clientes[] = $datos;
    }
    fclose($archivo);
}

// Ordenar los datos por id con un array_multisort
array_multisort(array_column($clientes, 0), SORT_ASC, $clientes);

// Mostramos los datos en una tabla sencilla
echo '<table border="1">';
echo "<tr><th>ID</th><th>Nombre</th><th>Apellido</th><th>Email</th><th>Telefono</th></tr>";
foreach ($clientes as $cliente) {
    echo "<tr><td>{$cliente[0]}</td><td>{$cliente[1]}</td><td>{$cliente[2]}</td><td>{$cliente[3]}</td><td>{$cliente[4]}</td></tr>";
}
echo "</table>";
    // Y listo! Ya tendr
?>