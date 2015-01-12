<?php
try {
    mb_language('uni'); 
    mb_internal_encoding('UTF-8');
    $dbh = new PDO(
        'mysql:host=' . $config['db']['host'] . ';dbname=' . $config['db']['name'] . ';charset=utf8',
	$config['db']['user'],
	$config['db']['pass'],
        [PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'] 
    );

    return $dbh;
} catch(PDOException $e) {
    echo $e->getMessage();
}
