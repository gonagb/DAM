<select>
<?php

    include "../../config.php";
    $mysqli = new mysqli($servidor, $usuario, $contraseña, $base_de_datos);
    $consulta = "SELECT Identificador AS Identificador,  ".$_GET['columna']." AS columna FROM ".$_GET['tabla']."";

    $resultado = $mysqli->query($consulta);

    while ($fila = $resultado->fetch_assoc()){
        echo '<option value="'.$fila['Identificador'].'">'.$fila['columna'].'</option>';
        
    }

?>
</select>