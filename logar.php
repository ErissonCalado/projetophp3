<?php
require "conexao.php";
session_start();

$email = filter_input(INPUT_POST, 'login', FILTER_SANITIZE_EMAIL);
$senha = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);
$query_ = "SELECT * FROM usuários WHERE email ='$email'";
$result = $conn->query($query_);
$registeredEmail = false;
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row['email'];
        //echo "Email já cadastrado";
        $registeredEmail = true;
        //header('Location:cadastro.php?login=equal');
    }
} else {
    echo "Email nao tá cadastrado";
    //$registeredEmail = false;
    //header("Location:login.php?login=erro");
    header('Location:login.php?login=erro');
}
if ($registeredEmail) {

    header("Location:home.php");
} //else {
    //$_SESSION['msg'] = "<p style='color:red;'Usuário não foi cadastrado com sucesso</p>";
    //header("Location: cadastro.php");