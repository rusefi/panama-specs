<?php

echo '<pre>';
if (move_uploaded_file($_FILES['userfile']['tmp_name'], 'uploaded.xml')) {
    echo "File is valid, and was successfully uploaded.\n";
} else {
    echo "Possible file upload attack!\n";
}

echo 'Here is some more debugging info:';
print_r($_FILES);

print "</pre>";

?>