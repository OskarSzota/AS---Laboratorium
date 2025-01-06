<?php

namespace app\controllers;

use app\forms\CalcForm;
use app\transfer\CalcResult;

class CalcCtrl {

	private $form;   //dane formularza (do obliczeń i dla widoku)
	private $result; //inne dane dla widoku

	/** 
	 * Konstruktor - inicjalizacja właściwości
	 */
	public function __construct(){
		//stworzenie potrzebnych obiektów
		$this->form = new CalcForm();
		$this->result = new CalcResult();
	}
	
	/** 
	 * Pobranie parametrów
	 */
	public function getParams(){
		$this->form->kwota = getFromRequest('kwota');
		$this->form->miesiac = getFromRequest('miesiac');
		$this->form->oprocentowanie = getFromRequest('oprocentowanie');
	}
	
	/** 
	 * Walidacja parametrów
	 * @return true jeśli brak błedów, false w przeciwnym wypadku 
	 */
	public function validate() {
		// sprawdzenie, czy parametry zostały przekazane
		if (! (isset ( $this->form->kwota ) && isset ( $this->form->miesiac ) && isset ( $this->form->oprocentowanie ))) {
			// sytuacja wystąpi kiedy np. kontroler zostanie wywołany bezpośrednio - nie z formularza
			return false; //zakończ walidację z błędem
		}
		
		// sprawdzenie, czy potrzebne wartości zostały przekazane
		if ($this->form->kwota == "") {
			getMessages()->addError('Nie podano kwoty');
		}
		if ($this->form->miesiac == "") {
			getMessages()->addError('Nie podano liczby miesiecy');
		}
		if ($this->form->oprocentowanie == "") {
			getMessages()->addError('Nie podano oprocentowania');
		}
		
		// nie ma sensu walidować dalej gdy brak parametrów
		if (! getMessages()->isError()) {
			
			// sprawdzenie, czy $x i $y są liczbami całkowitymi
			if (! is_numeric ( $this->form->kwota )) {
				getMessages()->addError('Kwota nie jest liczbą całkowitą');
			}
			
			if (! is_numeric ( $this->form->miesiac )) {
				getMessages()->addError('Liczba miesiecy nie jest liczbą całkowitą');
			}

			if (! is_numeric ( $this->form->oprocentowanie )) {
				getMessages()->addError('Oprocentowanie nie jest liczbą całkowitą');
			}
		}
		
		return ! getMessages()->isError();
	}
	
	/** 
	 * Pobranie wartości, walidacja, obliczenie i wyświetlenie
	 */
	public function process(){

		$this->getparams();
		
		if ($this->validate()) {
				
			//konwersja parametrów na int
			$this->form->kwota = floatval($this->form->kwota);
			$this->form->miesiac = floatval($this->form->miesiac);
			$this->form->oprocentowanie = floatval($this->form->oprocentowanie);
			getMessages()->addInfo('Parametry poprawne.');

			$odsetki = $this->form->kwota * (($this->form->miesiac / 12) * $this->form->oprocentowanie/100);

			$this->result->result = ($this->form->kwota + $odsetki) / $this->form->miesiac;
			
			getMessages()->addInfo('Wykonano obliczenia.');
		}
		
		$this->generateView();
	}
	
	
	/**
	 * Wygenerowanie widoku
	 */
	public function generateView(){
		global $user;

		getSmarty()->assign('user',$user);

		getSmarty()->assign('page_title','Kalkulator kredytowy');
		getSmarty()->assign('page_description','Tutaj obliczysz raty swojego kredytu');
		getSmarty()->assign('page_header','Kalkulator kredytowy');
		
		getSmarty()->assign('form',$this->form);
		getSmarty()->assign('res',$this->result);
		
		getSmarty()->display('CalcView.tpl');
	}
}
