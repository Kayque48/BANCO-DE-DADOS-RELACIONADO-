<?php

    require_once('dbConnect.php');

    $id = $_POST['id'];
    $titulo = $_POST['titulo'];
    $genero = $_POST['genero'];
    $autor= $_POST['autor'];
    $status = $_POST['lstatus'];
    $editora = $_POST['editora'];
    $ano = $_POST['ano_lancamento'];
    $preco = $_POST['preco'];
    $quantidade = $_POST['quantidade'];

    $sql = "UPDATE livros SET 
            titulo = '$titulo',
            genero = '$genero',
            autor = '$autor',
            lstatus = '$status',
            editora = '$editora',
            ano_lancamento = '$ano',
            preco = '$preco',
            quantidade = '$quantidade'
        WHERE id_livro = $id";

    if ($conn->query($sql) === TRUE) {
        echo "Dados atualizados com sucesso!";
        echo "<br><a href='cadastro.html'>Voltar</a>";
    } else {
        echo "Erro: " . $conn->error;
    }

    $conn->close();
?>

