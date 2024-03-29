<?php
// Reemplaza esto con tus propias credenciales de la base de datos
$hostname = "localhost";
$username = "docs";
$password = "docs";
$database = "docs";

// Crea una conexión a la base de datos
$conexion = mysqli_connect($hostname, $username, $password, $database);

// Verifica la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Define tu consulta SELECT
$consulta = "SELECT * FROM cms";

// Ejecuta la consulta
$resultado = mysqli_query($conexion, $consulta);

// Verifica si la consulta fue exitosa
if ($resultado) {
    // Crea un array asociativo para almacenar los resultados
    $cms = array();
    while ($fila = mysqli_fetch_assoc($resultado)) {
        // Almacena los resultados en el array asociativo
        $cms[$fila['elemento']] = $fila['contenido'];
    }

    // Libera el conjunto de resultados
    mysqli_free_result($resultado);
} else {
    echo "Error: " . mysqli_error($conexion);
}

// Cierra la conexión
mysqli_close($conexion);
?>