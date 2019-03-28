<?php
function excape($string) {
	return htmlentities($string, ENT_QUOTES, 'UTF-8');
}