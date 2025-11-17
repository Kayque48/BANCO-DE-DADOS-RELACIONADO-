<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);


require_once '../../config/dbConnect.php';

// Verifica se os dados foram enviados corretamente
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nome = $_POST['nome_cliente'];
    $telefone = $_POST['telefone'];
    $email = $_POST['email'];
    $endereco = $_POST['endereco'];

    // Prepara a consulta SQL com placeholders para evitar SQL injection
    $sql = "INSERT INTO db_oficina (NOME_CLIENTE, TELEFONE, EMAIL, ENDERECO) VALUES (?, ?, ?, ?)";
    
    // Prepara a declaração
    if ($stmt = $conn->prepare($sql)) {
        // Bind dos parâmetros
        $stmt->bind_param("ssss", $nome, $telefone, $email, $endereco);

        // Executa a consulta
        if ($stmt->execute()) {
            echo "Dados salvos com sucesso!";
        } else {
            echo "Erro: " . $stmt->error;
        }

        // Fecha a declaração
        $stmt->close();
    } else {
        echo "Erro ao preparar a consulta: " . $conn->error;
    }

    echo "<br><a href='listClient.php'>Voltar</a>";
}

// Fecha a conexão com o banco de dados
$conn->close();
?>
