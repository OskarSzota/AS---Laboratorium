<?php
// W skrypcie definicji kontrolera nie trzeba dołączać problematycznego skryptu config.php,
// ponieważ będzie on użyty w miejscach, gdzie config.php zostanie już wywołany.

class MenuCtrl {
    public function generateView(){
		
		getSmarty()->assign('page_title','Kalkulator kredytowy');
		getSmarty()->assign('page_description','Tutaj obliczysz raty swojego kredytu');
		getSmarty()->assign('page_header','Kalkulator kredytowy');
		
		getSmarty()->display('MenuView.html');
	}
}
