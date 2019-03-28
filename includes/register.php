<?php
require_once '../core/init.php';

if(Input::exists()) {
	echo 'submitted';
}
?>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/index.css">
</head>
<form action="" method="post">
<div class="fieldn">
		<label for="merchant">Merchant</label>
		<input type="text" name="name" id="name" value="" autocomplete="off">
	</div>
	<div class="fieldn">
		<label for="merchant">Merchant</label>
		<input type="text" name="fname" id="fname" value="" autocomplete="off">
	</div>
	<div class="fieldn">
		<label for="merchant">Merchant</label>
		<input type="text" name="lname" id="lname" value="" autocomplete="off">
	</div>
	<div class="field">
		<label for="tin_no">tin_no</label>
		<input type="int" name="tin_no" id="tin_no" value="" autocomplete="off">
	</div>
	<div class="field">
		<label for="file_no">file_no</label>
		<input type="text" name="file_no" id="file_no" value="" autocomplete="off">
	</div>
	<div class="field">
		<label for="kelbele">kebele</label>
		<input type="text" name="kebele" id="kebele" value="" autocomplete="off">
	</div>
	<div class="fieldr">
		<label for="kurt">Kurt</label>
		<input type="radio" name="work" id="work" value="kurt" autocomplete="off" checked>
	</div>
	<div class="fieldr">
		<label for="book">Book</label>
		<input type="radio" name="work" id="work" value="Book" autocomplete="off">
	</div>
	<div class="fieldr">
		<label for="Vehicle">Vehicle</label>
		<input type="radio" name="work" id="work" value="Vehicle" autocomplete="off">
	</div>