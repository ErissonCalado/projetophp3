<?php
session_start();
if (!isset($_SESSION['itens'])) {
    $_SESSION['itens'] = array();
}

if (isset($_GET['add']) && $_GET['add'] == "carrinho") {
    $idproduto = $_GET['id'];
    if (!isset($_SESSION['itens'][$idproduto])) {
        $_SESSION['itens'][$idproduto] = 1;
    } else {
        $_SESSION['itens'][$idproduto] += 1;
    }
}
if (count($_SESSION['itens']) == 0) {
    echo 'Carrinho Vazio <br> <a href="conexcarrinho.php">Adicionar itens</a>';
} else {
    $_SESSION['dados'] = array();

    $conexao = new PDO('mysql:host=localhost;dbname=delivery', "root", "");
    foreach ($_SESSION['itens'] as $idproduto => $quantidade) {
        $select = $conexao->prepare("SELECT * FROM produtos WHERE id=?");
        $select->bindParam(1, $idproduto);
        $select->execute();
        $produtos = $select->fetchAll();
        $total = $quantidade * $produtos[0]["preço"];
        echo
        'Nome: ' . $produtos[0]["nome"] . '<br/> Preço: ' . number_format($produtos[0]["preço"], 2, ",", ".") . '<br/> Quantidade: ' . $quantidade . '<br/> Total: ' . number_format($total, 2, ",", ".") . '<br/> <a href="remover.php?remover=carrinho&id=' . $idproduto . '">remover</a> <br/><a href="conexcarrinho.php">continuar comprando</a><hr/>';
        array_push($_SESSION['dados'], array('id_produto' => $idproduto, 'quantidade' => $quantidade, 'preço' => $produtos[0]["preço"], 'total' => $total));
    }
    echo '<a href="finalizar.php">finalizar pedido</a>';
}