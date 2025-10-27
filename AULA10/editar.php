<?php

    require_once('dbConnect.php');

    $id = $_GET['id'];
    $result = $conn->query('SELECT * FROM livros WHERE ID_LIVRO ='. $id);
    $row = $result->fetch_assoc();
?>

<form action="atualizar.php" method="POST">
    <input type="hidden" name="id" value="<?php echo $row['ID_LIVRO']; ?>">
    Título: <input type="text" name="titulo" value="<?php echo $row['TITULO']; ?>"><br>
    Gênero: <input type="text" name="genero" value="<?php echo $row['GENERO']; ?>"><br>
    Autor: <input type="text" name="autor" value="<?php echo $row['AUTOR']; ?>"><br>
    Status: <input type="text" name="lstatus" value="<?php echo $row['LSTATUS']; ?>"><br>
    Editora: <input type="text" name="editora" value="<?php echo $row['EDITORA']; ?>"><br>
    Ano de Lançamento: <input type="text" name="ano_lancamento" value="<?php echo $row['ANO_LANCAMENTO']; ?>"><br>
    Preço: <input type="text" name="preco" value="<?php echo $row['PRECO']; ?>"><br>
    Quantidade: <input type="text" name="quantidade" value="<?php echo $row['QUANTIDADE']; ?>"><br>
    <input type="submit" value="Atualizar">
</form>