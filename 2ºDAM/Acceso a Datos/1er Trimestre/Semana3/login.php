<?php
session_start();
// Reemplaza esto con tus propias credenciales de la base de datos
$hostname = "localhost";
$username = "aadd";
$password = "aadd";
$database = "aadd";

// Crea una conexión a la base de datos
$conexion = mysqli_connect($hostname, $username, $password, $database);

// Verifica la conexión
if (!$conexion) {
    die("Conexión fallida: " . mysqli_connect_error());
}

// Define tu consulta SELECT
$consulta = "SELECT * FROM usuarios WHERE user = '". $_POST['user']."' AND password = '".$_POST['password']."' ";
var_dump($_POST['user']);
var_dump($_POST['password']);

// Ejecuta la consulta
$resultado = mysqli_query($conexion, $consulta);
$pasas = false;
    while ($fila = $resultado->fetch_assoc()) {
        $pasas = true;
        $_SESSION['user'] = $fila['user'];
    }
if ($pasas == true) {
    echo "Todo en orden, puedes continuar a la aplicación";
    echo '<meta http-equiv="Refresh" content="5; url=documentos.php" />';
} else {
    echo "Error: " . mysqli_error($conexion);
    echo '<meta http-equiv="Refresh" content="5; url=index.php" />';
}

?>
