<?php
session_start();
foreach ($_SESSION['dados'] as $produtos) {
    $conexao = new PDO('mysql:host=localhost;dbname=delivery', "root", "");
    $insert = $conexao->prepare("INSERT INTO pedidos() VALUES(NULL,?,?,?,?)");
    $insert->bindParam(1, $produtos['id_produto']);
    $insert->bindParam(2, $produtos['quantidade']);
    $insert->bindParam(3, $produtos['preço']);
    $insert->bindParam(4, $produtos['total']);
    $insert->execute();
}