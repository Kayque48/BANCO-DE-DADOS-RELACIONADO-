<?php

    require_once __DIR__ . '/../../config/dbConnect.php';
    $result = $conn->query('SELECT * FROM clientes');

    echo "<h2>Clientes Cadastrados</h2>";
    echo "<table border='1'>";
    echo "<tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Telefone</th>
        <th>Email</th>
        <th>Endereço</th>
      </tr>";

      while ($row = $result->fetch_assoc()) {
        echo "<tr>
            <td>{$row['ID_CLIENTE']}</td>
            <td>{$row['NOME_CLIENTE']}</td>
            <td>{$row['TELEFONE']}</td>
            <td>{$row['EMAIL']}</td>
            <td>{$row['ENDERECO']}</td>
            <td><a href='editarClient.php?id={$row['ID_CLIENTE']}'>Editar</a></td>
            <td><a href='deletarClient.php?id={$row['ID_CLIENTE']}  '>Deletar</a></td>
            </tr>";
      }

      echo "</table>";
      $conn->close();
      ?>

      <a href="index.html"><button type="button">Página Inicial</button></a>