<?php
    require_once('dbConnect.php');
    require_once('variaveis.php');

    $sql = "UPDATE usuarios SET nome = '$nome', email = '$email' WHERE id = $id";

    if ($conn->query($sql) === TRUE) {
        echo "Dados atualizados com sucesso!";
        echo "<br><a href='index.html'>Voltar</a>";
    } else {
        echo "Erro: " . $conn->error;
    }

    $conn->close();
    ?>