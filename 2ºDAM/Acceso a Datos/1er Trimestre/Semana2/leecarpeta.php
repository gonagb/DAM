<?php
$path = 'vault/users/goncho';
if ($handle = opendir($path)) {
    while (false !== ($entry = readdir($handle))) {
        if ($entry != "." && $entry != "..") {
            $fileTypeParts = explode(".", $entry);
            $fileType = isset($fileTypeParts[1]) ? $fileTypeParts[1] : '';

            echo "<div class='item' filetype='$fileType' filename='$entry'>";

            if (is_dir($path . '/' . $entry)) {
                echo "<div class='iconfolder'>
                <img src='img/bootstrap-icons-1.11.1/folder.svg'> </div>";
            } else {
                $fileTypeIcon = 'filetype-' . $fileType;
                echo "<div class='iconfile'>
                <img src='img/bootstrap-icons-1.11.1/$fileTypeIcon.svg'></div>";
            }

            echo "<span class='documentname'>$entry</span>
            </div>";
        }
    }

    closedir($handle);
}
?>
