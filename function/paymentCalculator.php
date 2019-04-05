<?php
require_once '../core/init.php'

$db=DB::getInstance();
function calcTot($tin) {
	$db->query("SELECT calctot(?)",array($tin));
}

