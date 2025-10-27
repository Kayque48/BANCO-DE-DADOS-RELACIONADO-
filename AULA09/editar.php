<?php
    
    require_once('dbConnect.php');


    $id = $_GET['id'];
    $result = $conn->query('SELECT * FROM usuarios WHERE ID ='. $id);
    $row = $result->fetch_assoc();
?>

<form action="atualizar.php" method="POST">
    <input type="hidden" name="id" value="<?php echo $row['ID']; ?>">
    Nome: <input type="text" name="nome" value="<?php echo $row['NOME']; ?>"><br>
    Email: <input type="email" name="email" value="<?php echo $row['EMAIL']; ?>"><br>
    <input type="submit " value="Atualizar">
</form>