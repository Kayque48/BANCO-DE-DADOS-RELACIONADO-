<?php

    require_once('dbConnect.php');
    $result = $conn->query('SELECT * FROM livros');

    echo "<h2>Livros Cadastrados</h2>";
    echo "<table border='1'>";
    echo "<tr>
        <th>ID</th>
        <th>Título</th>
        <th>Gênero</th>
        <th>Autor</th>
        <th>Status</th>
        <th>Editora</th>
        <th>Ano de Lançamento</th>
        <th>Preço</th>
        <th>Quantidade</th>
      </tr>";

    while ($row = $result->fetch_assoc()) {
    echo "<tr>
        <td>{$row['ID_LIVRO']}</td>
        <td>{$row['TITULO']}</td>
        <td>{$row['GENERO']}</td>
        <td>{$row['AUTOR']}</td>
        <td>{$row['LSTATUS']}</td>
        <td>{$row['EDITORA']}</td>
        <td>{$row['ANO_LANCAMENTO']}</td>
        <td>R$ {$row['PRECO']}</td>
        <td>{$row['QUANTIDADE']}</td>
        <td><a href='editar.php?id={$row['ID_LIVRO']}'>Editar</a></td>
        <td><a href='deletar.php?id={$row['ID_LIVRO']}  '>Deletar</a></td>
        </tr>";
    }

    echo "</table>";
    $conn->close();
    ?>

    <a href="index.html"><button type="button">Página Inicial</button></a>