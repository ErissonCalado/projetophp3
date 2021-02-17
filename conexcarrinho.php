<?php
$conexao = new PDO('mysql:host=localhost;dbname=delivery', "root", "");
$select = $conexao->prepare("SELECT * FROM produtos");
$select->execute();
$fetch = $select->fetchAll();
foreach ($fetch as $produto) {
    echo 'Nome do produto: ' . $produto['nome'] . '--> Quantidade: ' . $produto['quantidade'] . '--> Preço: R$ ' . number_format($produto['preço'], 2, ",", ".") . '<a href="carrinho.php?add=carrinho&id=' . $produto['id'] . '">Adicionar ao carrinho</a></br>';
}