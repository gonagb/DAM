<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Semana 2 de Acceso a Datos </title>
    <link rel="stylesheet" href="../css/estilo.css">
    
    <!-- jQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script src="../js/scrpits.js"></script>

</head>
<body>
    <table>
        <tr id="menu" style="height: 20px;">
            <td>
            Menu
            </td>
        </tr>
        <tr id="documentnamebar" style="height: 20px;">
            <td>
                <input type="text" id="documentname" placeholder="Nombre del documento" value="<?php explode(".",$_GET['file'])[0]?>">
            </td>
        </tr>
        <tr id="herramientas" style="height: 50px;">
            <td>
                <button id="guardar"><img src="../img/bootstrap-icons-1.11.1/save.svg" class="icon"></button>
                <select id="tipotexto">
                    <option value="p">Texto de parrafo</option>
                    <option value="h1">Encabezado 1</option>
                    <option value="h2">Encabezado 2</option>
                    <option value="h3">Encabezado 3</option>
                    <option value="h4">Encabezado 4</option>
                    <option value="h5">Encabezado 5</option>
                    <option value="h6">Encabezado 6</option>
                    <option value="pre">Texto preformateado</option>
                </select>
                <select id="selectfont">
                    <option value="Arial">Arial</option>
                    <option value="Verdana">Verdana</option>
                    <option value="Tahoma">Tahoma</option>
                    <option value="Trebuchet MS">Trebuchet MS</option>
                    <option value="Times New Roman">Times New Roman</option>
                    <option value="Georgia">Georgia</option>
                    <option value="Garamond">Garamond</option>
                    <option value="Courier New">Courier New</option>
                    <option value="Brush Script MT">Brush Script MT</option>
                </select>
                <input type="number" id="fontsize" value="12">
                <button id="bold"><img src="../img/bootstrap-icons-1.11.1/type-bold.svg"></button>
                <button id="italic"><img src="../img/bootstrap-icons-1.11.1/type-italic.svg"></button>
                <button id="underline"><img src="../img/bootstrap-icons-1.11.1/type-underline.svg"></button>
                <input type="color" id="fontcolor">
                <button id="orderedlist"><img src="../img/bootstrap-icons-1.11.1/list-ol.svg"></button>
                <button id="unorderedlist"><img src="../img/bootstrap-icons-1.11.1/list-ul.svg"></button>
                <button id="alignleft"><img src="../img/bootstrap-icons-1.11.1/text-left.svg"></button>
                <button id="aligncenter"><img src="../img/bootstrap-icons-1.11.1/text-center.svg"></button>
                <button id="alignright"><img src="../img/bootstrap-icons-1.11.1/text-right.svg"></button>
                <button id="alignjustify"><img src="../img/bootstrap-icons-1.11.1/justify-left.svg"></button>
            </td>
        </tr>
        <tr>
            <td id="fondopagina">
                <div id="pagina" contenteditable="true">
                    <?php include "../vault/users/".$_SESSION['user']."/".$_GET['file'] ?>
                </div>
            </td>
        </tr>
    </table>
</body>
</html>