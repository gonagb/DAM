<?php session_start(); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 3 de Acceso a Datos</title>
    <style>

        body{background-color: rgb(240,240,240);}

        form{
        justify-content: center;
        width: 300px;
        height: 300px;
        background: white;
        margin: auto;
        margin-top: 200px;
        padding: 20px;
        border: 1px solid black;
        box-shadow: 0px 10px 20px rgba(0,0,0,0.3);
        border-radius: 10px;
        }

        input{
            width: 100%;
            margin-top: 10px;
            margin-bottom: 10px;
            border: 0;
            padding-top: 5px;
            padding-bottom: 5px;
        }
    </style>
</head>
<body>
    <form action="login.php" method="POST">
        <input type="text" name="user" placeholder="Usuario">
        <input type="password" name="password" placeholder="Contraseña">
        <input type="submit" value="Iniciar sesión">

    </form>
</body>
</html>