<?php
// Parámetros de conexión a la base de datos
include "conexion.php";

// Verificar si hay errores en la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Consulta SQL para seleccionar datos de una tabla
$sql = "SHOW TABLES";

// Ejecutar la consulta
$result = $conn->query($sql);

if ($result) {
    // Imprimir las opciones en un menú desplegable
    while ($row = $result->fetch_array()) {
        echo '<option value="' . $row[0] . '">' . $row[0] . '</option>';
    }

    // Cerrar la conexión a la base de datos
    $conn->close();
} else {
    echo "Error en la consulta: " . $conn->error;
}
?>
