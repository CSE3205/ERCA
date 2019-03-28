<?php
class Config {
	public static function get($path=null) {
		if($path) {
			$config = $GLOBALS['config']; //so that we do not have to write GLOBALS[PARAMETER] instead we can write $config[parameter]
			$path = explode('/', $path);
			foreach($path as $bit) {
				if(isset($config[$bit])) //check if the value is not null or is set
				{
					$config = $config[$bit]; // a recursive call, that is first it calls GLOBALS[$BIT] then if it has a value or isset then
											//  $config now becomes that value or for example becomes $config=mysql[$bit] this time in the loop 
											// $bit is the next value in the path if $path=mysql => host then Globals[mysql] then mysql[host]
											// is what is computed

				}
			}
			return $config;
		}
		return false;
	}
}