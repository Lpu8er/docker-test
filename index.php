<?php

$sql = new PDO('mysql://root:test@mariadb:3306');
$stmt = $sql->query("show databases");
var_dump('hello world');
exit;
