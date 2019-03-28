<?php
class DB {
	private static $_instance = null; // a store of out result
	private $_pdo, 
			$_query, 
			$_error = false, 
			$_results, 
			$count = 0;
	private function __construct() {
		try {
			$this->pdo = new PDO(
						'mysql:host=' . Config::get('mysql/host'). 
						';dbname=' .Config::get('mysql/db'), 
						Config::get('mysql/username'), 
						Config::get('mysql/password')
						);
		} catch(PDOException $e) {
			die($e->getMessage());
		}
	}
	public static function getInstance() {
		if(isset(self::$_instance))//checks to see if we are already connected to the database so that we do not reconnect again and again every time we want something
		{
			self::$_instance = new Db();
		}
		return self::$_instance;

	}
}