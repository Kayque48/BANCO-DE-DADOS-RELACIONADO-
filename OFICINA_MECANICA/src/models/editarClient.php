<?php

    require_once __DIR__ . 'src/models/dbConnect.php';

    $id = $_GET['id'];
    $result = $conn->query('SELECT * FROM clientes WHERE id_cliente ='. $id);
    $row = $result->fetch_assoc();
?>

<form action="atualizarClient.php" method="POST">
    <input type="hidden" name="id" value="<?php echo $row['ID_CLIENTE']; ?>">
    Título: <input type="text" name="nome_cliente" value="<?php echo $row['NOME_CLIENTE']; ?>"><br>
    Email: <input type="text" name="email" value="<?php echo $row['EMAIL']; ?>"><br>
    Telefone: <input type="text" name="telefone" value="<?php echo $row['TELEFONE']; ?>"><br>
    Endereço: <input type="text" name="endereco" value="<?php echo $row['ENDERECO']; ?>"><br>
    <input type="submit" value="Atualizar">
</form>