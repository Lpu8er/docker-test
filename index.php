<?php

$sql = new PDO('mysql://host=mariadb', 'root', 'test');
$stmt = $sql->query("show databases");
var_dump('hello world');
exit;
