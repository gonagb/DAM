<?php
function subecaracter($cadena){
    for($i=0;$i<strlen($cadena);$i++){
    $cadena[$i] = chr(ord($cadena[$i])+1);
}
    return $cadena;
}

function bajacaracter($cadena){
    for($i=0;$i<strlen($cadena);$i++){
    $cadena[$i] = chr(ord($cadena[$i])-1);
}
    return $cadena;
}

function codifica($cadena){
    $codificado = base64_encode(subecaracter(base64_encode(subecaracter(base64_encode(subecaracter(base64_encode(subecaracter($cadena))))))));
    return $codificado;
}

function descodifica($cadena){
    $descodificado = base64_decode(bajacaracter(base64_decode(bajacaracter(base64_decode(bajacaracter(base64_decode(bajacaracter($cadena))))))));
    return $descodificado;
}
    $original = "Goncho";
    echo "El original es ".$original;
    echo "<br>";
    $codificado = codifica("Goncho");
    echo "El codificado es ".$codificado;
    $descodificado = descodifica($codificado);
    echo "<br>";
    echo "El descodificado es ".$descodificado;



?>