<?php 
session_start();
// Abro la conexión con la base de datos (Activar MySQL en Xampp)
include "conexionbd.php";
// Le pido algo a la base de datos
    $peticion = "  
    SELECT * FROM usuarios
    WHERE
        usuario = '".$_POST['usuario']."' AND
        password = '".$_POST['password']."'
        LIMIT 1
    ";


$resultado = mysqli_query($conn,$peticion );

$correcto = false;
$_SESSION['correcto'] = false;

// Devuelvo por pantalla lo que le he pedido
if ($row = $resultado->fetch_assoc()) {
   //  echo $row ['nombre']." ".$row['apellidos']."<br>";
$correcto = true;
$_SESSION['nombre'] = $row['nombre'];
$_SESSION['apellidos'] = $row['apellidos'];

}else{
    // echo "No reconozco ese usuario y/o contraseña"
    $correcto = false;
}

// Validamos
if($correcto){
    $_SESSION['correcto'] = true;
    echo '<meta http-equiv="Refresh" content="3; url=/greeneats-v1.0.0/public/index.php">';
    echo "<head>
    <style>
      body {
        background-color: #33b864;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        font-size: 3rem;
        color: white;
        font-family: sans-serif;

      }
    </style>
  </head>
  <body>
    Accediendo a GreenEats
  </body>";
}else{
    $_SESSION['correcto'] = false;
    echo "No tienes acceso a la base de datos";
    echo '<meta http-equiv="Refresh" content="3; url=inicio.php">';
}
    
// Cierro los recursos que haya abierto
    mysqli_close($conn);
// END
?>