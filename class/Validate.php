<?php
class Validate {
	private $_passed = false,
			$_errors = array(),
			$_db =null;

	public function __construct() {
		$this->_db = DB::getInstance();
	}

	public function check($source, $items = array()) {
		foreach($items as $item => $rules) {
			foreach($rules as $rule => $rule_value) {

				$value = $source [$item];

				if($rule === 'required' && empty($value)) //just making sure we are not wasting our time with an error case
				{
					$this->addError("{$item} is required");
				} else if(!empty($value)) {
					switch($rule) {
						case 'min' :
							if(strlen($value) < $rule_value) {
								$this->addError("{item} must be atleast {$rule_value}");
							}
						break;
						case 'max' :
							if(strlen($value) > $rule_value) {
								$this->addError("{$item} cannot be greater than {$rule_value}");
							}
						break;
						/*case 'unique' :
							$check = $this->_db->get($rule_value, array($item, '=', $value));
							if($check->count()) {
								$this->addError("{item} {$rule_value} is already registered");
							}

						break;*/
						
					}

				}
			}
		}

		if(empty($this->_errors)) {
			$this->_passed = true;
		}

		return $this;
	}

	private function addError($error) {
		$this->_errors[] = $error;
	}
	public function errors() {
		return $this->_errors;
	}

	public function passed() {
		return $this->_passed;
	}
}