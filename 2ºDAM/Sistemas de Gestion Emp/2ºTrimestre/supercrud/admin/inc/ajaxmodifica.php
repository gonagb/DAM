<?php


    include "../../config.php";
    $mysqli = new mysqli($servidor, $usuario, $contraseña, $base_de_datos);
    $consulta = "UPDATE ".$_GET['tabla']." SET ".$_GET['columna']." ='".$_GET['valor']."' WHERE Identificador = ".$_GET['identificador']." ";
    $resultado = $mysqli->query($consulta);

?>