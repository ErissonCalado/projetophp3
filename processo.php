<?php
include_once("conexao.php");

$nome = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
$senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);
$query_ = "SELECT * FROM usuários WHERE email ='$email'";
$result = $conn->query($query_);
$registeredEmail = false;
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        //echo $row['email'];
        //echo "Email já cadastrado";
        $registeredEmail = false;
        header("Location: cadastro.php?cadastro=erro");
        //header('Location:cadastro.php?login=equal');
    }
} else {
    echo "Email nao tá cadastrado";
    $registeredEmail = true;
}
if ($registeredEmail) {
    $result_usuario = "INSERT INTO usuários (nome, email, senha, created) VALUES ('$nome', '$email', '$senha', NOW() )";
    $resultado_usuario = mysqli_query($conn, $result_usuario);

    if (mysqli_insert_id($conn)) {
        header("Location: cadastro.php?cadastro=ok");
    } //else {
    //$_SESSION['msg'] = "<p style='color:red;'Usuário não foi cadastrado com sucesso</p>";
    //header("Location: cadastro.php");
}