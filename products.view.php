<?php

?>
<table class='product-table'>
    <thead>
        <tr>
            <th>Наименование</th>
            <th>Цена</th>
            <th>Описание</th>
            <th>Количество</th>
            <th>Отображение</th>
        </tr>
    </thead>
    <tbody>
    <?php
        while ($row = $stmt->fetch()) {
            ?>
            <tr class="product-table__row">
                <td><?= $row["PRODUCT_NAME"] ?></td>
                <td><?= $row["PRODUCT_PRICE"] ?></td>
                <td><?= $row["PRODUCT_ARTICLE"] ?></td>
                <td>
                    <button class="product-increase product-btn">+</button>
                    <span data-quantity-index=<?=$row['ID']?>><?= $row["PRODUCT_QUANTITY"] ?></span>
                    <button class="product-decrease product-btn">-</button>
                </td>
                <td><button class="product-table-hide" data-index=<?=$row['ID']?>>Скрыть</button></td>
            </tr>
            <?php
        }
    echo "</tbody>";
echo "</table>";