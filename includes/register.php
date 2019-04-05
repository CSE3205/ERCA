<?php
require_once '../core/init.php';

if(Input::exists()) {
	echo Input::get('name');
	$validate = new Validate();
	$validation = $validate->check($_POST, array(
		'name'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20
			//,'unique' => 'merchant'
			),
		'fname'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20
			//,'unique' => 'merchant'
			),
		'lname'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20
			//,'unique' => 'merchant'
			),
		'tin_no'=> array(
			'required' => true,
			'min' => 8,
			'max' => 20
			//,'unique' => 'merchant'
			),
		'file_no'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20
			//,'unique' => 'merchant'
			),
		'kebele'=> array(
			'required' => true,
			'min' => 2,
			'max' => 2,
			),
		));

if($validation->passed()) {
	$reg=DB::getInstance()->query("CALL insertkurt(?,?,?,?,?,?,?,?,?,?,?,?,?);",
			array($_POST["name"],$_POST["fname"],$_POST["lname"],
				$_POST["tin_no"],$_POST["file_no"],$_POST["kebele"],
				'curdate()','curdate()','curdate()',$_POST["workName"],
				$_POST["Kurtin"],$_POST["multiplier"],$_POST["category"]));
	echo 'Successfully Registered';
}else {
	foreach($validation->errors() as $error) {
		echo $error, '<br>';
	}
}
}


?>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../css/form.css">
</head>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../css/form.css">
</head>

<form action="register.php" method="post">
<div class="fieldp">
		<label for="name">Merchant</label>
		<input type="text" name="name" placeholder="First name" id="name" value="<?php echo Input::get('name'); ?>" autocomplete="off">
	
		<input type="text" name="fname" placeholder="Father's name" id="fname" value="<?php echo Input::get('fname'); ?>" autocomplete="off">

		<input type="text" name="lname" placeholder="Last name" id="lname" value="<?php echo Input::get('lname'); ?>" autocomplete="off"><br>
	</div>
	<div class="field" id="tin">
		<label for="tin_no">tin_no</label>
		<input type="int" name="tin_no" id="tin_no" value="<?php echo Input::get('tin_no'); ?>" autocomplete="off">
	
		<label for="file_no">file_no</label>
		<input type="text" name="file_no" id="file_no" value="<?php echo Input::get('file_no'); ?>" autocomplete="off"><br />
	</div>
	
	<div class="field">
		<label for="kelbele">kebele</label>
		<input type="text" name="kebele" id="kebele" value="<?php echo Input::get('kebele'); ?>" autocomplete="off"><br />

		<label for="category">category</label>
		<input type="text" name="category" id="category" value="<?php echo Input::get('category'); ?>" autocomplete="off"><br />

		<label for="workName">workName</label>
		<input type="text" name="workName" id="workName" value="<?php echo Input::get('workName'); ?>" autocomplete="off"><br />
	
	</div>
	<div class="fieldr" id="kurt">
		
		<input type="radio" name="work" id="work" value="kurt" autocomplete="off" checked="" onclick="getElementById(extra)" />Kurt<br />
		
		<input type="radio" name="work" id="work" value="Book" autocomplete="off"/>Book<br />
		
		<input type="radio" name="work" id="work" value="Vehicle" autocomplete="off"/>Vehichle<br />
	</div>
	
	<div id="extra">
		<label for="Kurtin">Kurt</label>
		<input type="int" name="Kurtin" id="Kurtin" value="<?php echo Input::get('Kurtin'); ?>" autocomplete="off">

		<label for="multiplier">Multiplier</label>
		<input type="int" name="multiplier" id="multiplier" value="<?php echo Input::get('multiplier'); ?>" autocomplete="off">


	</div>

	<input type="submit" name="Register" id="reg" value="Register">
</form>