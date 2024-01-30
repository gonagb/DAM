<link rel="stylesheet" href="estilocontrolador.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">

<?php
class Supercontrolador {
    // Función para mostrar el formulario
    function formulario($tabla) {
        include "config.php";
        echo '<form action="?" method="POST">';
        echo '<input type="hidden" name="clave" value="procesaformulario">';
        echo '<input type="hidden" name="tabla" value="' . $tabla . '">';
        
        // Crear una conexión a la base de datos
        $conexion = new mysqli($servidor, $usuario, $contraseña, $base_de_datos);
        
        // Consultar las columnas de la tabla
        $query = "SHOW FULL COLUMNS FROM " . $tabla;
        $resultado = $conexion->query($query);
        
        // Procesar los resultados
        while ($fila = $resultado->fetch_assoc()) {
            if ($fila["Key"] == NULL && $fila["Field"] != "epoch") {
                if (json_decode($fila["Comment"])->visible == "true") {
                    preg_match('#\((.*?)\)#', $fila["Type"], $match);
                    echo '
                    <div class="campo">
                    <h3>' . json_decode($fila["Comment"])->titulo . '</h3>
                    <p>' . json_decode($fila["Comment"])->descripcion . '<br> Mínimo número de caracteres: ' . json_decode($fila["Comment"])->min . ' - Máximo número de caracteres ' . $match[1] . '</p>';
                    
                    if ($fila["Null"] == "NO") {
                        echo '<p class="requerido"> * Requerido </p>';
                    }
                    
                    echo '
                    <div class="contienecampo">
                    <table>
                    <tr>
                    <td width=80%;>
                    <input type="text" name="' . $fila["Field"] . '" id="' . $fila["Field"] . '"';
                    
                    if ($fila["Null"] == "NO") {
                        echo " required ";
                    }
                    
                    if (json_decode($fila["Comment"])->deshabilitado == "true") {
                        echo " disabled ";
                    }
                    
                    preg_match('#\((.*?)\)#', $fila["Type"], $match);
                    echo '
                    maxlength = "' . $match[1] . '"
                    minlength = "' . json_decode($fila["Comment"])->min . '"
                    placeholder = "' . $fila["Field"] . '";
                    >
                    </td>
                    <td width=20%;>
                    <div class="tipocampo"><i class="' . json_decode($fila["Comment"])->icono . '"></i></div>
                    </td>
                    </tr>
                    </table>
                    </div>
                    <div class="clearfix"></div>
                    </div>
                    ';
                }
            }
        }
        echo '<input type="submit">';
    }
    
    // Función para procesar el formulario
    function procesaformulario() {
       //echo "procesando formulario";
        
        foreach ($_REQUEST as $nombre_campo => $valor) {
            if (preg_match('~\b(delete|drop|truncate)\b~i', $nombre_campo)) {
                // Si se detecta una palabra clave peligrosa en el nombre del campo, se registra y se detiene la ejecución
                $volcado = implode(",", $_REQUEST) . "," . $_SERVER['REMOTE_ADDR'] . "," . $_SERVER['HTTP_USER_AGENT'] . "\n";
                $myfile = fopen("volcado.txt", "a");
                fwrite($myfile, $volcado);
                die("Ejecución detenida");
            }
            
            if (preg_match('~\b(delete|drop|truncate)\b~i', $valor)) {
                // Si se detecta una palabra clave peligrosa en el nombre del campo, se registra y se detiene la ejecución
                $volcado = implode(",", $_REQUEST) . "," . $_SERVER['REMOTE_ADDR'] . "," . $_SERVER['HTTP_USER_AGENT'] . "\n";
                $myfile = fopen("volcado.txt", "a");
                fwrite($myfile, $volcado);
                die("Ejecución detenida");
            }
            
        }
        
        include "config.php";
        $listadocolumnas = "";
        $listadovalores = "";
        
        foreach ($_POST as $nombre_campo => $valor) {
           // echo "El nombre campo es: ".$nombre_campo."<br>";
            if ($nombre_campo != 'tabla' && $nombre_campo != 'clave') {
                $listadocolumnas .= "," . $nombre_campo . "";
                $listadovalores .= ",'" . $valor . "'";
            }
        }
        
        $conexion = new mysqli($servidor, $usuario, $contraseña, $base_de_datos);
        $query = "INSERT INTO " . $_POST['tabla'] . " (Identificador " . $listadocolumnas . ") VALUES (NULL" . $listadovalores . ")";
        // echo $query;
        $conexion->query($query);
        
        echo '
        <div class="notice">
        <h1> Registro guardado correctamente</h1>
        <p>Tu registro se ha guardado correctamente en la aplicación. Redirigiendo en 5, 4, 3...</p>
        </div>
        ';
        
        echo '<meta http-equiv="refresh" content="5; url=?">';
    }
}
?>
</form>
