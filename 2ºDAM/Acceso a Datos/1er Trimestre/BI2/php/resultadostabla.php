<?php
include "conexion.php";
$sql = $_GET['sql'];
$result = $conn->query($sql);
$contador = 0;
while($row = $result->fetch_assoc()){
    $contador++;
}
echo '<p> La búsqueda ha devuelto '.$contador.'</p>';
?>

<table colpadding = 0 colspacing = 0 cellpadding = 0 cellspacing = 0 width=100%>

<?php
// Parámetros de conexión a la base de datos
include "conexion.php";

// Consulta SQL para seleccionar datos de una tabla
$sql = $_GET['sql']."";
// Ejecutar la consulta
$result = $conn->query($sql);
    // Imprimir las opciones en un menú desplegable
    if ($row = $result->fetch_assoc()) {
        echo '<tr>';
        foreach($row as $campo=>$valor){
            echo '<th>'.$campo.'</th>';
        }
        echo '</tr>';
    }
$conn = new mysqli($servername, $username, $password, $database);
$sql = $_GET['sql'];
$result = $conn->query($sql);
    while ($row = $result->fetch_assoc()) {
        echo '<tr>';
        foreach($row as $campo=>$valor){
            echo '<td>'.$valor.'</td>';
        }
        echo '</tr>';
    }
    // Cerrar la conexión a la base de datos $conn->close();
?>
</table>