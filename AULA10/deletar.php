<?php
require_once('dbConnect.php');

$id = $_GET['id'];

$stmt = $conn->prepare("DELETE FROM livros WHERE ID_LIVRO = ?");
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    echo "Usuário deletado com sucesso!";
} else {
    echo "Erro ao deletar: " . $stmt->error;
}
echo "<br><a href='listar.php'>Voltar para lista</a>";

$stmt->close();
$conn->close();