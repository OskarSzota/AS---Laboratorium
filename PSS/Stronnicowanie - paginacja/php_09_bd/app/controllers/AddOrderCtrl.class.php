<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use core\Validator;
use app\forms\AddOrderForm;

class AddOrderCtrl {

    private $form; //dane formularza

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new AddOrderForm();
    }

    // Walidacja danych przed zapisem (nowe dane lub edycja).
    public function validateSave() {
        //0. Pobranie parametrów z walidacją
        $this->form->addorder_id = ParamUtils::getFromRequest('addorder_id', true, 'Błędne wywołanie aplikacji');
        $this->form->addorder_topic = ParamUtils::getFromRequest('addorder_topic', true, 'Błędne wywołanie aplikacji');
        $this->form->addorder_description = ParamUtils::getFromRequest('addorder_description', true, 'Błędne wywołanie aplikacji');
        $this->form->addorder_status = ParamUtils::getFromRequest('addorder_status', true, 'Błędne wywołanie aplikacji');
        $this->form->addorder_user = ParamUtils::getFromRequest('addorder_user', true, 'Błędne wywołanie aplikacji');
        $this->form->addorder_create_date = ParamUtils::getFromRequest('addorder_create_date', true, 'Błędne wywołanie aplikacji');
        $this->form->addorder_modify_date = ParamUtils::getFromRequest('addorder_modify_date', true, 'Błędne wywołanie aplikacji');

        if (App::getMessages()->isError())
            return false;

        // 1. sprawdzenie czy wartości wymagane nie są puste
        if (empty(trim($this->form->addorder_topic))) {
            Utils::addErrorMessage('Wprowadź temat');
        }
        if (empty(trim($this->form->addorder_description))) {
            Utils::addErrorMessage('Wprowadź opis zgłoszenia');
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
        $this->form->addorder_id = ParamUtils::getFromCleanURL(1, true, 'Błędne wywołanie aplikacji');
        return !App::getMessages()->isError();
    }

    public function action_addOrderNew() {
        $this->generateView();
    }

    //wysiweltenie rekordu do edycji wskazanego parametrem 'id'
    public function action_orderEdit() {
        // 1. walidacja id osoby do edycji
        if ($this->validateEdit()) {
            try {
                // 2. odczyt z bazy danych osoby o podanym ID (tylko jednego rekordu)
                $record = App::getDB()->get("zgloszenia", "*", [
                    "id_zgloszenia" => $this->form->addorder_id
                ]);
                // 2.1 jeśli osoba istnieje to wpisz dane do obiektu formularza
                $this->form->addorder_id = $record['id_zgloszenia'];
                $this->form->addorder_topic = $record['temat_zgloszenia'];
                $this->form->addorder_description = $record['opis'];
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

    public function action_addOrderSave() {

        // 1. Walidacja danych formularza (z pobraniem)
        if ($this->validateSave()) {
            // 2. Zapis danych w bazie
            try {
                //2.1 Nowy rekord
                if ($this->form->addorder_id == '') {
                    App::getDB()->insert("zgloszenia", [ 
                        "temat_zgloszenia" => $this->form->addorder_topic,
                        "opis" => $this->form->addorder_description,
                        "id_statusu" => 1,
                        "id_uzytkownika" => $_SESSION['user_id'],
                    ]);
                    Utils::addInfoMessage('Pomyślnie dodano nowe zgłoszenie');
                } else {
                    //2.2 Edycja rekordu o danym ID
                    App::getDB()->update("zgloszenia", [
                        "temat_zgloszenia" => $this->form->addorder_topic,
                        "opis" => $this->form->addorder_description,
                        "data_modyfikacji" => date('Y-m-d H:i:s')
                            ], [
                        "id_zgloszenia" => $this->form->addorder_id
                    ]);
                    Utils::addInfoMessage('Edycja zakończona sukcesem');
                }
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił nieoczekiwany błąd podczas zapisu zgłoszenia');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }

            // 3b. Po zapisie przejdź na stronę listy osób (w ramach tego samego żądania http)
            App::getRouter()->forwardTo('orderList');
        } else {
            // 3c. Gdy błąd walidacji to pozostań na stronie
            $this->generateView();
        }
    }

    public function generateView() {
        App::getSmarty()->assign('form', $this->form); // dane formularza dla widoku
        App::getSmarty()->display('AddOrderView.tpl');
    }

}
