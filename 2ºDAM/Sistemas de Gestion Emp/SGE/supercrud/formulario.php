<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estiloformulario.css">

    <title>Formulario SGE</title>
</head>
    <body>
        <div id="formulario">
            <img src="brandlogo.jpg">
            <h1>Introduce los datos en este formulario</h1>
            <p>Es muy importante que rellenes este formulario</p>
<?php
    include "controlador.php";              // Incluye el archivo del controlador PHP
    $miformulario = new Supercontrolador(); // Crea una instancia del controlador
    if(isset($_POST['clave']) && $_POST['clave'] == 'procesaformulario'){
        // Comprueba si se ha enviado un formulario y si la clave 'procesaformulario' es igual a la proporcionada
        $miformulario->procesaformulario("entregas"); // Llama al método para procesar el formulario
    } else {
        // Si no se cumplen las condiciones anteriores, muestra el formulario para completar
        $miformulario->formulario("entregas"); // Llama al método para mostrar el formulario
    }
?>

    </div>
    </body>
</html>
