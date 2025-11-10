<?php

    define('HOST', 'localhost');
    define('USER', 'root');
    define('PASS', 'senaisp');
    define('DB', 'db_oficina');


    $charset = 'utf-8';

    $conn = mysqli_connect(HOST, USER, PASS, DB)
        or die(''. mysqli_connect_error());

?>