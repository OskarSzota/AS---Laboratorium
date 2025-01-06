<?php

namespace app\controllers;

class MenuCtrl {
    public function generateView(){
		
		getSmarty()->assign('page_title','Kalkulator kredytowy');
		getSmarty()->assign('page_description','Tutaj obliczysz raty swojego kredytu');
		getSmarty()->assign('page_header','Kalkulator kredytowy');
		
		getSmarty()->display('MenuView.tpl');
	}
}
