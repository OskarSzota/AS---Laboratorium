<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use core\Validator;
use app\forms\ChangeOrderStatusForm;

class ChangeOrderStatusCtrl {

    private $form; //dane formularza

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new ChangeOrderStatusForm();
    }

    // Walidacja danych przed zapisem (nowe dane lub edycja).
    public function validateSave() {
        //0. Pobranie parametrów z walidacją
        $this->form->changeorderstatus_id = ParamUtils::getFromRequest('changeorderstatus_id', true, 'Błędne wywołanie aplikacji');
        $this->form->changeorderstatus_topic = ParamUtils::getFromRequest('changeorderstatus_topic', true, 'Błędne wywołanie aplikacji');
        $this->form->changeorderstatus_description = ParamUtils::getFromRequest('changeorderstatus_description', true, 'Błędne wywołanie aplikacji');
        $this->form->changeorderstatus_status = ParamUtils::getFromRequest('changeorderstatus_status', true, 'Błędne wywołanie aplikacji');
        $this->form->changeorderstatus_user = ParamUtils::getFromRequest('changeorderstatus_user', true, 'Błędne wywołanie aplikacji');
        $this->form->changeorderstatus_create_date = ParamUtils::getFromRequest('changeorderstatus_create_date', true, 'Błędne wywołanie aplikacji');
        $this->form->changeorderstatus_modify_date = ParamUtils::getFromRequest('changeorderstatus_modify_date', true, 'Błędne wywołanie aplikacji');

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
        $this->form->changeorderstatus_id = ParamUtils::getFromCleanURL(1, true, 'Błędne wywołanie aplikacji');
        return !App::getMessages()->isError();
    }

    //public function action_addOrderNew() {
    //    $this->generateView();
    //}

    //wysiweltenie rekordu do edycji wskazanego parametrem 'id'
    public function action_orderStatusEdit() {
        // 1. walidacja id osoby do edycji
        if ($this->validateEdit()) {
            try {
                // 2. odczyt z bazy danych osoby o podanym ID (tylko jednego rekordu)
                $record = App::getDB()->get("zgloszenia", "*", [
                    "id_zgloszenia" => $this->form->changeorderstatus_id
                ]);
                // 2.1 jeśli osoba istnieje to wpisz dane do obiektu formularza
                $this->form->changeorderstatus_id = $record['id_zgloszenia'];
                $this->form->changeorderstatus_status = $record['id_statusu'];
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił błąd podczas odczytu rekordu');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }
        }
    
        // 3. Wygenerowanie widoku
        $this->generateView();
    }


    public function action_orderStatusSave() {

        // 1. Walidacja danych formularza (z pobraniem)
        if ($this->validateSave()) {
            // 2. Zapis danych w bazie
            try {
                //2.2 Edycja rekordu o danym ID
                App::getDB()->update("zgloszenia", [
                    "id_statusu" => $this->form->changeorderstatus_status
                        ], [
                    "id_zgloszenia" => $this->form->changeorderstatus_id
                ]);
                    Utils::addInfoMessage('Edycja zakończona sukcesem');
                }
            catch (\PDOException $e) {
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
        try {
            // Pobranie listy statusów z bazy danych
            $statusList = App::getDB()->select("Statusy", ["id_statusu", "nazwa_statusu"]);
            App::getSmarty()->assign('statusList', $statusList);
        } catch (\PDOException $e) {
            Utils::addErrorMessage('Błąd podczas pobierania statusów.');
            if (App::getConf()->debug)
                Utils::addErrorMessage($e->getMessage());
        }

        App::getSmarty()->assign('form', $this->form); // dane formularza dla widoku
        App::getSmarty()->display('ChangeOrderStatusView.tpl');
    }

}
