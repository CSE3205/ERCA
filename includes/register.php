<?php
require_once '../core/init.php';

if(Input::exists()) {
	$validate = new Validate();
	$validation = $validate->check($_POST, array(
		'name'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20,
			'unique' => 'merchant'
			),
		'fname'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20,
			'unique' => 'merchant'
			),
		'lname'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20,
			'unique' => 'merchant'
			),
		'tin_no'=> array(
			'required' => true,
			'min' => 8,
			'max' => 20,
			'unique' => 'merchant'
			),
		'file_no'=> array(
			'required' => true,
			'min' => 4,
			'max' => 20,
			'unique' => 'merchant'
			),
		'kebele'=> array(
			'required' => true,
			'min' => 2,
			'max' => 2,
			),
		));
}
if(Input::exists()) {
	echo 'submitted';
}
if($validation->passed()) {
	echo 'Successfully Registered';
}else {
	foreach($validation->errors() as $error) {
		echo $error, '<br>';
	}
}
?>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../css/form.css">
</head>


<form action="" method="post">
<div class="fieldn">
		<label for="merchant">Merchant</label>
		<input type="text" name="name" placeholder="First name" id="name" value="<?php echo escape(Input::get('name')); ?>" autocomplete="off">
	</div>
	<div class="fieldn">
		<input type="text" name="fname" placeholder="Father's name" id="fname" value="<?php echo escape(Input::get('fname')); ?>" autocomplete="off">
	</div>
	<div class="fieldn">
		<input type="text" name="lname" placeholder="Last name" id="lname" value="<?php echo escape(Input::get('lname')); ?>" autocomplete="off">
	</div>
	<div class="field" id="tin">
		<label for="tin_no">tin_no</label>
		<input type="int" name="tin_no" id="tin_no" value="<?php echo escape(Input::get('tin_no')); ?>" autocomplete="off">
	</div>
	<div class="field">
		<label for="file_no">file_no</label>
		<input type="text" name="file_no" id="file_no" value="<?php echo escape(Input::get('file_no')); ?>" autocomplete="off">
	</div>
	<div class="field">
		<label for="kelbele">kebele</label>
		<input type="text" name="kebele" id="kebele" value="<?php echo escape(Input::get('kebele')); ?>" autocomplete="off">
	</div>
	<div class="fieldr" id="kurt">
		<label for="kurt">Kurt</label>
		<input type="radio" name="work" id="work" value="kurt" autocomplete="off" checked>
	</div>
	<div class="fieldr" id="book">
		<label for="book">Book</label>
		<input type="radio" name="work" id="work" value="Book" autocomplete="off">
	</div>
	<div class="fieldr" id="vehicle">
		<label for="Vehicle">Vehicle</label>
		<input type="radio" name="work" id="work" value="Vehicle" autocomplete="off">
	</div>