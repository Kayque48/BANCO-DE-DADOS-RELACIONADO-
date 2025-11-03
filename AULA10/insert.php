<?php

    require_once ('dbConnect.php');

    $id = $_POST['ID_LIVRO'];
    $titulo = $_POST['TITULO'];
    $genero = $_POST['GENERO'];
    $autor = $_POST['AUTOR'];
    $status = $_POST['LSTATUS'];
    $editora = $_POST['EDITORA'];
    $ano = $_POST['ANO_LANCAMENTO'];
    $preco = $_POST['PRECO'];
    $quantidade = $_POST['QUANTIDADE'];


    $sql = "INSERT INTO livros (TITULO, GENERO AUTOR, LSTATUS, EDITORA, ANO_LANCAMENTO, PRECO, QUANTIDADE) VALUES ('$titulo', '$genero','$autor', '$status', '$editora', '$ano', '$preco', '$quantidade')";
    if ($conn->query($sql) === TRUE) {
        echo "Dados salvos com sucesso!";
    } else {
        echo "Erro ". $conn->error;
    }

    exit;

    $conn->close();

?>
