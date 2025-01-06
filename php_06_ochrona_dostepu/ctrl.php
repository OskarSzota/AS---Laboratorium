<?php
require_once 'init.php';
// Skrypt kontrolera głównego jako jedyny "punkt wejścia" inicjuje aplikację.

// Inicjacja ładuje konfigurację, definiuje funkcje getConf(), getMessages() oraz getSmarty(),
// pozwalające odwołać się z każdego miejsca w systemie do obiektów konfiguracji, messages i smarty.

// Ponadto ładuje skrypt funkcji pomocniczych (functions.php) oraz wczytuje parametr 'action' do zmiennej $action.
// Wystarczy już tylko podjąć decyzję co zrobić na podstawie $action.

// Dodatkowo zmieniono organizację kontrolerów i widoków. Teraz wszystkie są w odpowiednio nazwanych folderach w app

switch ($action) {
	default : // 'menuView'
		include 'check.php';
		$ctrl = new app\controllers\MenuCtrl();
		$ctrl->generateView ();
	break;
	case 'login': // akcja PUBLICZNA - brak check.php
		$ctrl = new app\controllers\LoginCtrl();
		$ctrl->doLogin();
	break;
	case 'calcView' :
		include 'check.php';
		$ctrl = new app\controllers\CalcCtrl();
		$ctrl->generateView ();
	break;
	case 'calcCompute' :
		include 'check.php';
		$ctrl = new app\controllers\CalcCtrl();
		$ctrl->process ();
	break;
	case 'logout' : // akcja NIEPUBLICZNA
		include 'check.php';  // KONTROLA
		$ctrl = new app\controllers\LoginCtrl();
		$ctrl->doLogout();
	break;
}
