<?php
require_once'../core/init.php';

$sheets= array('type','tot','tax','special','clean_up','salary','penality');
$sheet=DB::getInstance();

foreach($sheets as $tables) {
	$sql=$sheet->query("select * from ".$tables.";");
	echo "<label for='".$tables."''><h3>".$tables."</h3>";
	echo " has ".$sql->count()." values";
	echo "</label><br><table border='1' style='width: 100%' id='".$tables."' name='".$tables."'>";
	foreach($sheet->results() as $shet) {
		echo "<tr>";
		foreach($shet as $fields) {
			echo "<td>".$fields."</td>";
		}
	echo "</tr>";
}
echo "</table>";
	
}