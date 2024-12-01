<?php
// W skrypcie definicji kontrolera nie trzeba dołączać problematycznego skryptu config.php,
// ponieważ będzie on użyty w miejscach, gdzie config.php zostanie już wywołany.

require_once $conf->root_path.'/lib/smarty/Smarty.class.php';

class MenuCtrl {
    public function generateView(){
		global $conf;
		
		$smarty = new Smarty();
		$smarty->assign('conf',$conf);
		
		$smarty->assign('page_title','Kalkulator kredytowy');
		$smarty->assign('page_description','Tutaj obliczysz raty swojego kredytu');
		$smarty->assign('page_header','Kalkulator kredytowy');
		
		$smarty->display($conf->root_path.'/app/menu/MenuView.html');
	}
}
