<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use core\Validator;
use app\forms\AddStatusForm;

class AddStatusCtrl {

    private $form; //dane formularza

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new AddStatusForm();
    }

    // Walidacja danych przed zapisem (nowe dane lub edycja).
    public function validateSave() {
        //0. Pobranie parametrów z walidacją
        $this->form->addstatus_id = ParamUtils::getFromRequest('addstatus_id', true, 'Błędne wywołanie aplikacji');
        $this->form->addstatus_name = ParamUtils::getFromRequest('addstatus_name', true, 'Błędne wywołanie aplikacji');

        if (App::getMessages()->isError())
            return false;

        // 1. sprawdzenie czy wartości wymagane nie są puste
        if (empty(trim($this->form->addstatus_name))) {
            Utils::addErrorMessage('Wprowadź nazwe statusu');
        }

        if (App::getMessages()->isError())
            return false;

        // 2. sprawdzenie poprawności przekazanych parametrów

        //$d = \DateTime::createFromFormat('Y-m-d', $this->form->birthdate);
        //if ($d === false) {
        //    Utils::addErrorMessage('Zły format daty. Przykład: 2015-12-20');
        //}

        return !App::getMessages()->isError();
    }

    //validacja danych przed wyswietleniem do edycji
    public function validateEdit() {
        //pobierz parametry na potrzeby wyswietlenia danych do edycji
        //z widoku listy osób (parametr jest wymagany)
        $this->form->addstatus_id = ParamUtils::getFromCleanURL(1, true, 'Błędne wywołanie aplikacji');
        return !App::getMessages()->isError();
    }

    public function action_addStatusNew() {
        $this->generateView();
    }

    //wysiweltenie rekordu do edycji wskazanego parametrem 'id'
    public function action_statusEdit() {
        // 1. walidacja id osoby do edycji
        if ($this->validateEdit()) {
            try {
                // 2. odczyt z bazy danych osoby o podanym ID (tylko jednego rekordu)
                $record = App::getDB()->get("statusy", "*", [
                    "id_statusu" => $this->form->addstatus_id
                ]);
                // 2.1 jeśli osoba istnieje to wpisz dane do obiektu formularza
                $this->form->addstatus_id = $record['id_statusu'];
                $this->form->addstatus_name = $record['nazwa_statusu'];
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił błąd podczas odczytu rekordu');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }
        }
    
        // 3. Wygenerowanie widoku
        $this->generateView();
    }

    //public function action_personDelete() {
    //    // 1. walidacja id osoby do usuniecia
    //    if ($this->validateEdit()) {
    //
    //        try {
    //            // 2. usunięcie rekordu
    //            App::getDB()->delete("person", [
    //                "idperson" => $this->form->id
    //            ]);
    //            Utils::addInfoMessage('Pomyślnie usunięto rekord');
    //        } catch (\PDOException $e) {
    //            Utils::addErrorMessage('Wystąpił błąd podczas usuwania rekordu');
    //            if (App::getConf()->debug)
    //                Utils::addErrorMessage($e->getMessage());
    //        }
    //    }
    //
    //    // 3. Przekierowanie na stronę listy osób
    //    App::getRouter()->forwardTo('personList');
    //}

    public function action_addStatusSave() {

        // 1. Walidacja danych formularza (z pobraniem)
        if ($this->validateSave()) {
            // 2. Zapis danych w bazie
            try {
                //2.1 Nowy rekord
                if ($this->form->addstatus_id == '') {
                    App::getDB()->insert("statusy", [ 
                        "nazwa_statusu" => $this->form->addstatus_name,
                    ]);
                    Utils::addInfoMessage('Pomyślnie dodano nowy status');
                } else {
                    //2.2 Edycja rekordu o danym ID
                    App::getDB()->update("statusy", [
                        "nazwa_statusu" => $this->form->addstatus_name
                            ], [
                        "id_statusu" => $this->form->addstatus_id
                    ]);
                    Utils::addInfoMessage('Edycja zakończona sukcesem');
                }
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił nieoczekiwany błąd podczas zapisu zgłoszenia');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }

            // 3b. Po zapisie przejdź na stronę listy osób (w ramach tego samego żądania http)
            App::getRouter()->forwardTo('statusList');
        } else {
            // 3c. Gdy błąd walidacji to pozostań na stronie
            $this->generateView();
        }
    }

    public function generateView() {
        App::getSmarty()->assign('form', $this->form); // dane formularza dla widoku
        App::getSmarty()->display('AddStatusView.tpl');
    }

}
