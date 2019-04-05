<?php
session_start();

$GLOBALS['config']=array(
	'mysql' => array(
		'host' => '127.0.0.1',
		'username' => 'root',
		'password' => '',
		'db' => 'revenue'
		 ),
	'remember' => array(
		'cookie_name' => 'hash',
		'cookie_expiry' => 604800
		),
	'session' => array(
		'session_name' => 'user'
		)
	);

spl_autoload_register(function($class) {
	require_once '../class/'. $class .'.php';
});

spl_autoload_register(function($function) {
	require_once '../function/'.$functiion.'.php';
});