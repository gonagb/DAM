<?php
    $enlace = mysqli_connect("localhost", "cursoaplicacionesweb", "cursoaplicacionesweb", "cursoaplicacionesweb");
    // Le pido algo a la base de datos
    $peticion = "DELETE FROM ".$_GET['tabla']." WHERE identificador =".$_GET['id']."";
    mysqli_query($enlace,$peticion);
    echo '<meta http-equiv="refresh"
        content="2; url=index.php?tabla='.$_POST['tabla'].'">';
    
?>