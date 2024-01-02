<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 3 de Acceso a Datos</title>

    <!-- jQuery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <style>
        .item{
            width: 300px;
            height: 300px;
            padding: 5px;
            margin: 5px;
            border: 1px solid gray;
            border-radius: 5px;
            float: left;
            position: relative;
            display: table-cell;
            text-align: center;
            vertical-align: middle;
        }
        .documentname{
            position: absolute;
            bottom: 5px;
            left: 5px;
            width: 100%;
        }
        .iconfile,
        .iconfolder {
            width: 100%;
            margin: auto;
        }
        .iconfile img,
        .iconfolder img {
            width: 70%;
            margin: auto;
        }
    </style>
    <script>
        $(document).ready(function(){
            $("#carpetactual").load("leecarpeta.php?user=<?php echo $_SESSION['user'] ?>")
            $(document).on("click",".item", function(){
                if($(this).attr("filetype") == "html"){
                    window.location = "documento/index.php?file="+$(this).attr("filename")
                }
            })
        })
    </script>

</head>
<body>
    <header>

    </header>
    <main>
        <h3>Lista de documentos</h3>
        <div id="carpetactual">

        </div>
    </main>
    <footer>

    </footer>
</body>
</html>