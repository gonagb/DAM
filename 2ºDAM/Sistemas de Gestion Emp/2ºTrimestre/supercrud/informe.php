<?php  include "codificador.php" ?>
<h1>Entregas para Goncho</h1>
<table>
    <tr><th>URL</th><th>Asignatura</th><th>Práctica</th><th>Fecha</th><th>Video</th></tr>
<?php
error_reporting(0);

    include "config.php";

    $mysqli = new mysqli($servidor, $usuario, $contraseña, $base_de_datos);
    $consulta = "SELECT * FROM entregas WHERE email = 'gonagb96@gmail.com'";
        $resultado = $mysqli->query($consulta);
        while ($fila = $resultado->fetch_assoc()) {
            $parts = parse_url($fila['url']);
            parse_str($parts['query'],$query);
            $miparte = $query['v'];
            echo "<tr>";
            echo "<td>".$fila['url']."</td>";
            echo "<td>".$fila['asignatura']."</td>";
            echo "<td>".$fila['practica']."</td>";
            echo "<td>".$fila['epoch']."</td>";

            echo "<td>";
            echo '<iframe width="300" height="200" src="https://www.youtube.com/embed/'.$miparte.'" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
            echo "</td>"; 
            echo "<br>";
            echo "</tr>";
        }


?>
</table>