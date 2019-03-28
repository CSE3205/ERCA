<?php
// define variables and set to empty values
$username = $password="hi";

if ($_POST["username"] == $username && $_POST["password"] == $password) {
  header('Location: http://127.0.0.1/ERCA/page/employee.php');}
  else echo 'invalid user!!! <br>';
  ?>