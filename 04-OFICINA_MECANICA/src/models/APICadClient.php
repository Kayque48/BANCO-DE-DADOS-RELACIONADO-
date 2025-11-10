<?php
    require_once '../../config/dbConnect.php';

    $nome = $_POST['nome'];
    $telefone = $_POST['telefone'];
    $email = $_POST['email'];
    $endereco = $_POST['endereco'];

    $sql = "INSERT INTO db_oficina(NOME_CLIENTE, TELEFONE, EMAIL, ENDERECO) VALUES ('$nome', '$telefone', '$email', '$endereco')";

    if ($conn ->qury($sql)) {
        echo "Dados salvos com sucesso!";
    } else {
        echo "Erro". $conn->error;
    }

    echo "<br><a href='APIListClient.php</a>'";

    exit;
    
    $conn->close();
?>
