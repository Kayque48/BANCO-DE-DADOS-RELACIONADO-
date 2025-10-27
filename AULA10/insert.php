<?php

   $id = $_POST['id_livro'];
    $titulo = $_POST['titulo'];
    $genero = $_POST['genero'];
    $autor = $_POST['autor'];
    $status = $_POST['lstatus'];
    $editora = $_POST['editora'];
    $ano = $_POST['ano_lancamento'];
    $preco = $_POST['preco'];
    $quantidade = $_POST['quantidade'];

    require_once ('dbConnect.php');

    $sql = "INSERT INTO livraria (TITULO, GENERO AUTOR, LSTATUS, EDITORA, ANO_LANCAMENTO, PRECO, QUANTIDADE) VALUES ('$titulo', '$genero','$autor', '$satus', '$editora', '$ano', '$preco', '$quantidade')";
    if ($conn->query($sql) === TRUE) {
        echo "Dados salvos com sucesso!";
    } else {
        echo "Erro ". $conn->error;
    }

    exit;

    $conn->close();

?>
