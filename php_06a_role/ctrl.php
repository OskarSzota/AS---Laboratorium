<?php
require_once 'init.php';

getConf()->login_action = 'login';

switch ($action) {
	default :
		control(null, 'MenuCtrl',	'generateView', ['user','admin']);
	case 'login': 
		control(null, 'LoginCtrl','doLogin');
	case 'calcView' : 
		control(null, 'CalcCtrl', 'generateView', ['user','admin']);
	case 'calcCompute' : 
		control(null, 'CalcCtrl', 'process', ['user','admin']);
	case 'logout' : 
		control(null, 'LoginCtrl', 'doLogout', ['user','admin']);
}