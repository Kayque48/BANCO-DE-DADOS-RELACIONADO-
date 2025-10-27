<?php
    require_once('dbConnect.php');
    $result = $conn->query('SELECT * FROM usuarios');

    echo "<h2>Usuários</h2>";
    echo "<table border='1'>";
    echo "<tr><th>ID</th><th>Nome</th><th>Email</th><th>Ações</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['ID']}</td>
                <td>{$row['NOME']}</td>
                <td>{$row['EMAIL']}</td>
                <td><a href= 'editar.php?id={$row['ID']}'>Editar</a></td>
            </tr>";
    }

    echo "</table>";
    $conn->close();
    ?>

    <a href="index.html"><button type="button">Página Inicial</button></a>