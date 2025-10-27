<?php
    
    define('HOTS', 'localhost');
    define('USER', 'root');
    define('PASS', 'senaisp');
    define('DB', 'livraria');

    $charset = 'utf8';
    $conn = mysqli_connect(HOTS, USER, PASS, DB)
        or die(''. mysqli_connect_error());