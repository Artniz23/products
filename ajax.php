<?php

require_once 'CProducts.php';

$product = new CProducts();

if (isset($_GET['method'])) {
    $method = $_GET['method'];
}

if (isset($_GET['id_product'])) {
    $product_id = $_GET['id_product'];
}

if (isset($_GET['product_quantity'])) {
    $product_quantity = $_GET['product_quantity'];
}

if (isset($_GET['product_quantity_id'])) {
    $product_quantity_id = $_GET['product_quantity_id'];
}

switch ($method) {
    case 'hide':
        $product->productHide($product_id);
        break;
    case 'set_product_quantity':
        $product->setProductQuantity($product_quantity, $product_quantity_id);
    default:
        break;
}
