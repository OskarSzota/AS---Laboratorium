<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use core\Validator;
use app\forms\AddPermissionsForm;

class AddPermissionsCtrl {

    private $form; //dane formularza

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new AddPermissionsForm();
    }

    // Walidacja danych przed zapisem (nowe dane lub edycja).
    public function validateSave() {
        //0. Pobranie parametrów z walidacją
        $this->form->addpermissions_id = ParamUtils::getFromRequest('addpermissions_id', true, 'Błędne wywołanie aplikacji');
        $this->form->addpermissions_user_id = ParamUtils::getFromRequest('addpermissions_user_id', true, 'Błędne wywołanie aplikacji');
        $this->form->addpermissions_role_id = ParamUtils::getFromRequest('addpermissions_role_id', true, 'Błędne wywołanie aplikacji');
        $this->form->addpermissions_grant_date = ParamUtils::getFromRequest('addpermissions_grant_date', true, 'Błędne wywołanie aplikacji');
        $this->form->addpermissions_withdrawal_date = ParamUtils::getFromRequest('addpermissions_withdrawal_date', true, 'Błędne wywołanie aplikacji');

        if (App::getMessages()->isError())
            return false;

        // 1. sprawdzenie czy wartości wymagane nie są puste
        if (empty(trim($this->form->addpermissions_user_id))) {
            Utils::addErrorMessage('Wybierz użytkownika');
        }
        if (empty(trim($this->form->addpermissions_role_id))) {
            Utils::addErrorMessage('Wybierz role');
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
        $this->form->addpermissions_id = ParamUtils::getFromCleanURL(1, true, 'Błędne wywołanie aplikacji');
        return !App::getMessages()->isError();
    }

    public function action_addPermissionsNew() {
        $this->generateView();
    }

    //wysiweltenie rekordu do edycji wskazanego parametrem 'id'
    public function action_permissionsEdit() {
        // 1. walidacja id osoby do edycji
        if ($this->validateEdit()) {
            try {
                // 2. odczyt z bazy danych osoby o podanym ID (tylko jednego rekordu)
                $record = App::getDB()->get("nadawanie_rol", "*", [
                    "id_nadania_roli" => $this->form->addpermissions_id 
                ]);
                // 2.1 jeśli osoba istnieje to wpisz dane do obiektu formularza
                $this->form->addpermissions_id  = $record['id_nadania_roli'];
                $this->form->addpermissions_user_id = $record['id_uzytkownika'];
                $this->form->addpermissions_role_id = $record['id_roli'];
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

    public function action_addPermissionsSave() {
        // 1. Walidacja danych formularza (z pobraniem)
        if ($this->validateSave()) {
            try {
                // 2. Sprawdzenie, czy użytkownik już posiada tę rolę
                //$existingRole = App::getDB()->has("Nadawanie_rol", [
                //    "id_uzytkownika" => $this->form->addpermissions_user_id,
                //    "id_roli" => $this->form->addpermissions_role_id,
                //    "data_odebrania" => null // Sprawdzenie, czy rola nadal obowiązuje
                //]);
    
                //if (!$existingRole) {
                    // 3. Dodanie nowej roli do użytkownika
                    App::getDB()->insert("Nadawanie_rol", [
                        "id_uzytkownika" => $this->form->addpermissions_user_id,
                        "id_roli" => $this->form->addpermissions_role_id
                    ]);
    
                    Utils::addInfoMessage('Pomyślnie przypisano rolę użytkownikowi');
                
    
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił błąd podczas zapisywania ról.');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }
    
            // 4. Przekierowanie na listę ról po zapisaniu
            App::getRouter()->forwardTo('permissionsList');
        } else {
            // Jeśli wystąpi błąd walidacji, pozostajemy na stronie
            $this->generateView();
        }
    }
    
    public function generateView() {
        // Przekazanie danych do widoku
        App::getSmarty()->assign('form', $this->form);
        App::getSmarty()->display('AddPermissionsView.tpl');
    }
    

}
