<?php
try {
    $dbh = new PDO(
        'mysql:host=' . $config['db']['host'] . ';dbname=' . $config['db']['name'] , $config['db']['user'], $config['db']['pass']
    );
} catch(PDOException $e) {
    echo $e->getMessage();
}
