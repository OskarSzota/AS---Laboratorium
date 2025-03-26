<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use core\Validator;
use app\forms\AddUserForm;

class AddUserCtrl {

    private $form; //dane formularza

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new AddUserForm();
    }

    // Walidacja danych przed zapisem (nowe dane lub edycja).
    public function validateSave() {
        //0. Pobranie parametrów z walidacją
        $this->form->adduser_id = ParamUtils::getFromRequest('adduser_id', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_login = ParamUtils::getFromRequest('adduser_login', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_pass = ParamUtils::getFromRequest('adduser_pass', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_pass_powtorne = ParamUtils::getFromRequest('adduser_pass_powtorne', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_name = ParamUtils::getFromRequest('adduser_name', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_surname = ParamUtils::getFromRequest('adduser_surname', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_email = ParamUtils::getFromRequest('adduser_email', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_create_date = ParamUtils::getFromRequest('adduser_create_date', true, 'Błędne wywołanie aplikacji');
        $this->form->adduser_created_by = ParamUtils::getFromRequest('adduser_created_by', true, 'Błędne wywołanie aplikacji');

        if (App::getMessages()->isError())
            return false;

        // 1. sprawdzenie czy wartości wymagane nie są puste
        if (empty(trim($this->form->adduser_login))) {
            Utils::addErrorMessage('Wprowadź login');
        }
        if (empty(trim($this->form->adduser_pass))) {
            Utils::addErrorMessage('Wprowadź hasło');
        }
        if (empty(trim($this->form->adduser_pass_powtorne))) {
            Utils::addErrorMessage('Powtórz hasło');
        }
        if (empty(trim($this->form->adduser_name))) {
            Utils::addErrorMessage('Wprowadź imię');
        }
        if (empty(trim($this->form->adduser_surname))) {
            Utils::addErrorMessage('Wprowadź nazwisko');
        }
        if (empty(trim($this->form->adduser_email))) {
            Utils::addErrorMessage('Wprowadź nazwisko');
        }

        if ($this->form->adduser_pass !== $this->form->adduser_pass_powtorne) {
            Utils::addErrorMessage('Hasła nie są identyczne');
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
    //public function validateEdit() {
    //    //pobierz parametry na potrzeby wyswietlenia danych do edycji
    //    //z widoku listy osób (parametr jest wymagany)
    //    $this->form->id = ParamUtils::getFromCleanURL(1, true, 'Błędne wywołanie aplikacji');
    //    return !App::getMessages()->isError();
    //}

    //validacja danych przed wyswietleniem do edycji
    public function validateEdit() {
        //pobierz parametry na potrzeby wyswietlenia danych do edycji
        //z widoku listy osób (parametr jest wymagany)
        $this->form->adduser_id = ParamUtils::getFromCleanURL(1, true, 'Błędne wywołanie aplikacji');
        return !App::getMessages()->isError();
    }

    public function action_addUserNew() {
        $this->generateView();
    }

    public function action_userEdit() {
        // 1. walidacja id osoby do edycji
        if ($this->validateEdit()) {
            try {
                // 2. odczyt z bazy danych osoby o podanym ID (tylko jednego rekordu)
                $record = App::getDB()->get("uzytkownicy", "*", [
                    "id_uzytkownika" => $this->form->adduser_id
                ]);
                // 2.1 jeśli osoba istnieje to wpisz dane do obiektu formularza
                $this->form->adduser_id = $record['id_uzytkownika'];
                $this->form->adduser_login = $record['login'];
                $this->form->adduser_pass = $record['haslo'];
                $this->form->adduser_name = $record['imie'];
                $this->form->adduser_surname = $record['nazwisko'];
                $this->form->adduser_email = $record['email'];
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

    public function action_addUserSave() {

        // 1. Walidacja danych formularza (z pobraniem)
        if ($this->validateSave()) {
            // 2. Zapis danych w bazie
            try {
                //2.1 Nowy rekord
                if ($this->form->adduser_id == '') {
                    App::getDB()->insert("uzytkownicy", [ 
                        "login" => $this->form->adduser_login,
                        "haslo" => $this->form->adduser_pass,
                        "imie" => $this->form->adduser_name,
                        "nazwisko" => $this->form->adduser_surname,
                        "email" => $this->form->adduser_email,
                        "utworzony_przez" => $_SESSION['user_id']
                    ]);
                    Utils::addInfoMessage('Pomyślnie dodano nowego użytkownika');
                } else {
                //2.2 Edycja rekordu o danym ID
                App::getDB()->update("uzytkownicy", [
                        "login" => $this->form->adduser_login,
                        "haslo" => $this->form->adduser_pass,
                        "imie" => $this->form->adduser_name,
                        "nazwisko" => $this->form->adduser_surname,
                        "email" => $this->form->adduser_email
                        ], [
                    "id_uzytkownika" => $this->form->adduser_id
                ]);
                Utils::addInfoMessage('Edycja zakończona sukcesem');
            }
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił nieoczekiwany błąd podczas zapisu nowego użytkownika');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }

            App::getRouter()->forwardTo('userList');
        } else {
            // 3c. Gdy błąd walidacji to pozostań na stronie
            $this->generateView();
        }
    }

    public function generateView() {
        App::getSmarty()->assign('form', $this->form); // dane formularza dla widoku
        App::getSmarty()->display('AddUserView.tpl');
    }

}
