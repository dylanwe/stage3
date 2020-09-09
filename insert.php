<?php
print($_POST['editor1']);

if(isset($_POST['submit'])) {
    // get all items
    $text = $_POST['editor1'];
    $naamLength = strlen($text);

    if ($naamLength) {
        $host = 'localhost';
        $dbname = 'stage';
        $username = 'root';
        $password = '';
        $db = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8","$username","$password");

        $sql = "UPDATE teksten SET text=? WHERE id=1";
        $db->prepare($sql)->execute([$text]);

        // ga terug naar home
        header('Location: ./index.php');
        exit;
    }
}