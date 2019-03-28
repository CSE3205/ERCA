<?php
require_once ('http://127.0.0.1/ERCA/class/database.php');

$db=new Database('127.0.0.1', 'root', 'root', 'Revenue');

$db->query("select * from merchat");

$db->disconnect();
?>