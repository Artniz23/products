<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <title>Таблица Товаров</title>
</head>
<body>
    <?php

    require_once 'CProducts.php';

    $products = new CProducts();

    $products->connectDB();

    $products->getProducts(5);

    ?>
    <script src="script.js"></script>
</body>
</html>