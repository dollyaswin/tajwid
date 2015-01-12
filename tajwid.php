<?php
$config = include_once 'config.php';
$pdo = include_once 'pdo.php';
$parentId = isset($_GET['parent_id']) ? $_GET['parent_id'] : 0;

$stmt = $pdo->prepare("SELECT * FROM category WHERE parent_id = :parent_id");
// bind the paramaters
$stmt->bindParam(':parent_id', $parentId, PDO::PARAM_INT); 
$stmt->execute();
$category = $stmt->fetchAll();

$stmt = $pdo->prepare("SELECT * FROM tajwid WHERE category_id = :category_id");
// bind the paramaters
$stmt->bindParam(':category_id', $parentId, PDO::PARAM_INT); 
$stmt->execute();
$tajwid = $stmt->fetchAll();

$tajwids = array_merge($category, $tajwid);

// close database connection
$pdo = null;

// assign to template
require 'template/tajwid.phtml';
