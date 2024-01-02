<?php

$myfile = fopen("../vault/users/goncho/" . $_POST['nombredocumento'] . ".html", "w") or die("Unable to open file!");
$txt = $_POST['datos'];
fwrite($myfile, $txt);
fclose($myfile);

?>