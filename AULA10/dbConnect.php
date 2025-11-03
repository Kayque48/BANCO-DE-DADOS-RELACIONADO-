<?php
    define('HOST', 'localhost');
    define('USER', 'root');
    define('PASS', 'senaisp');
    define('DB', 'livraria');

    $charset = 'utf8';
    $conn = mysqli_connect(HOST, USER, PASS, DB)
        or die('Erro na conexão: ' . mysqli_connect_error());

    mysqli_set_charset($conn, $charset);