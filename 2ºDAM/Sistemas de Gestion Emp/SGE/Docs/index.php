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

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistemas de Gestión Empresarial</title>
    <link rel="stylesheet" href="inc/style.css"> 

</head>
<body>
    <header>
        <h1><?php echo $cms['titulo']; ?></h1>
        <h2><?php echo $cms['subtitulo']; ?></h2>
        <nav>
            <ul>
                <li><a href="?">Inicio</a></li>
                <li><a href="?p=productos">Productos</a></li>
                <li><a href="?p=blog">Blog</a></li>
                <li><a href="?p=contacto">Contacto</a></li>

            </ul>
        </nav>
    </header>

    <main>
    <?php 
    if( isset($_GET['p'])) {
        include "inc/".$_GET['p'].".php";
    }else{
        include "inc/inicio.php";
    }
    ?>
    </main>

    <footer>
        <?php echo $cms['copyright']; ?>
    </footer>
</body>
</html>
