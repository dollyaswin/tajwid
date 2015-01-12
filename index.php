<?php
$config = include_once 'config.php';
$pdo = include_once 'pdo.php';

// @todo retrieve category with parent_id is null
$sql = "SELECT * FROM `category` WHERE `parent_id` IS NULL";
$categories = [];
foreach ($pdo->query($sql) as $row) {
    $categories[] = $row;
}

// close database connection
$pdo = null;

// assign to template
require 'template/index.phtml';
