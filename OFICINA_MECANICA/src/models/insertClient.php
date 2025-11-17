<?php

ini_set('display_errors', 1);
error_reporting(E_ALL);

// Conexão com o banco de dados (seu dbConnect.php precisa ter a configuração correta)
require_once '../../config/dbConnect.php';

// Verifica se os dados foram enviados corretamente
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Recebe os dados do formulário
    $nome = $_POST['NOME_CLIENTE'];
    $telefone = $_POST['TELEFONE_CLIENTE']; // Alterado para 'TELEFONE_CLIENTE'
    $email = $_POST['EMAIL'];
    $endereco = $_POST['ENDERECO'];

    // Prepara a consulta SQL com placeholders para evitar SQL injection
    $sql = "INSERT INTO CLIENTES (NOME_CLIENTE, TELEFONE, EMAIL, ENDERECO) VALUES (?, ?, ?, ?)";
    
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
