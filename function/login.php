<?php
require_once '../core/init.php';
// define variables and set to empty values
//$sql = "call login('".$_POST["username"]."','".$_POST["password"]."');";
$user=DB::getInstance()->query("SELECT login(?,?) as user",array($_POST["username"],$_POST["password"]));

foreach($user->results() as $user) {
	$ist=$user->user;
}

switch($ist){
	case 0:
		header('Location: ../index.php');
		echo "Invalid user!";
	break;

	case 1:
		header('Location: ../page/manager.php');
	break;

	case 2:
		header('Location: ../page/employee.php');
	break;

	default: echo 'an error has occured please try again! <br>';
}

  
  ?>