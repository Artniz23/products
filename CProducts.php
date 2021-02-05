<?php

class CProducts {

    public $db;
    private $database_host = 'localhost';
    private $database_user = '';
    private $database_pass = '';
    private $database_db = 'products';
    private $database_charset = 'utf8';

    public function connectDB()
    {
        $dsn = "mysql:host=$this->database_host;dbname=$this->database_db;charset=$this->database_charset";
        
        $opt = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ];

        try {
            $this->db = new PDO($dsn, $this->database_user, $this->database_pass, $opt);
        } catch (PDOException $e) {
            die("Connect Error" . $e);
        }
    }

    public function getProducts($limit=0)
    {
        $sql = "SELECT * FROM `Products` WHERE `PRODUCT_HIDE` = 0 ORDER BY `DATE_CREATE` DESC" . ($limit ? " LIMIT :limit" : "");
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        $stmt->execute();
       
        require_once('products.view.php');

    }

    public function productHide($product_id)
    {
        $this->connectDB();
        $stmt = $this->db->prepare("UPDATE `Products` SET `PRODUCT_HIDE` = 1 WHERE ID = :id");
        $stmt->bindValue(':id', $product_id, PDO::PARAM_INT);
        $stmt->execute();
    }

    public function setProductQuantity($quantity, $product_id) {
        $this->connectDB();
        $stmt = $this->db->prepare("UPDATE `Products` SET `PRODUCT_QUANTITY` = :quantity WHERE ID = :id");
        $stmt->bindValue(':quantity', $quantity, PDO::PARAM_INT);
        $stmt->bindValue(':id', $product_id, PDO::PARAM_INT);
        $stmt->execute();
    }

}