<?php
    
    define('HOST', 'localhost');
    define('USER', 'root');
    define('PASS', 'senaisp');
    define('DB', 'oficina_mecanica');

    $charset = 'utf8';

    // Tentando a conexão com o banco de dados
    $conn = mysqli_connect(HOST, USER, PASS, DB);

    if (!$conn) {
        die('Erro na conexão: ' . mysqli_connect_error());
    }

    // Caso a conexão seja bem-sucedida
    echo "Conexão bem-sucedida com o banco de dados!";
    mysqli_set_charset($conn, $charset);
?>
