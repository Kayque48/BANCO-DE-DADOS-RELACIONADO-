<?php

    require_once('dbConnect.php');

    $id = $_POST['id_cliente'];
    $nome = $_POST['nome_cliente'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];


    $sql = "UPDATE livros SET 
            nome = '$nome',
            email = '$email',
            telefone = '$telefone',
        WHERE id_cliente = $id";

    if ($conn->query($sql) === TRUE) {
        echo "Dados atualizados com sucesso!";
        echo "<br><a href='../../public/cadClient.html'>Voltar</a>";
    } else {
        echo "Erro: " . $conn->error;
    }

    $conn->close();
?>

