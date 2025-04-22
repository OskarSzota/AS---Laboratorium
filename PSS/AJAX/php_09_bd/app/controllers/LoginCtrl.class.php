<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\RoleUtils;
use core\ParamUtils;
use app\forms\LoginForm;

class LoginCtrl {

    private $form;

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new LoginForm();
    }

    public function validate() {
        $this->form->login = ParamUtils::getFromRequest('login');
        $this->form->pass = ParamUtils::getFromRequest('pass');

        //nie ma sensu walidować dalej, gdy brak parametrów
        if (!isset($this->form->login))
            return false;

        // sprawdzenie, czy potrzebne wartości zostały przekazane
        if (empty($this->form->login)) {
            Utils::addErrorMessage('Nie podano loginu');
        }
        if (empty($this->form->pass)) {
            Utils::addErrorMessage('Nie podano hasła');
        }

        //nie ma sensu walidować dalej, gdy brak wartości
        if (App::getMessages()->isError())
            return false;

            //try {
            //    // 1. Sprawdzenie, czy użytkownik istnieje w bazie
            //    $userRecord = App::getDB()->get("Uzytkownicy", ["id_uzytkownika", "login", "haslo"], [
            //        "login" => $this->form->login
            //    ]);
            //
            //    if ($userRecord) {
            //        // 2. Porównanie hasła
            //        if ($this->form->pass == $userRecord['haslo']) {
            //            // 3. Logowanie powiodło się
            //
            //            //RoleUtils::addRole('admin');
            //            Utils::addInfoMessage("Zalogowano pomyślnie");
            //        } else {
            //            // Hasło nieprawidłowe
            //            Utils::addErrorMessage("Nieprawidłowe hasło");
            //        }
            //    } else {
            //        // Użytkownik o podanym loginie nie istnieje
            //        Utils::addErrorMessage("Użytkownik o podanym loginie nie istnieje");
            //    }
            //} catch (\PDOException $e) {
            //    Utils::addErrorMessage('Wystąpił błąd podczas weryfikacji danych');
            //    if (App::getConf()->debug)
            //        Utils::addErrorMessage($e->getMessage());
            //}
        

            try {
                // 1. Sprawdzenie, czy użytkownik istnieje w bazie
                $userRecord = App::getDB()->get("Uzytkownicy", ["id_uzytkownika", "login", "haslo"], [
                    "login" => $this->form->login
                ]);
        
                if ($userRecord) {
                    // 2. Porównanie hasła
                    if ($this->form->pass == $userRecord['haslo']) {
                        // 3. Logowanie powiodło się
                        Utils::addInfoMessage("Zalogowano pomyślnie");
        
                        // 4. Pobranie ról użytkownika z tabeli Nadawanie_rol
                        $userRoles = App::getDB()->select("Nadawanie_rol", [
                            "[><]Role" => ["Nadawanie_rol.id_roli" => "id_roli"]
                        ], [
                            "Role.nazwa_roli"
                        ], [
                            "Nadawanie_rol.id_uzytkownika" => $userRecord['id_uzytkownika']
                        ]);
        
                        // 5. Przypisanie ról użytkownikowi
                        foreach ($userRoles as $role) {
                            RoleUtils::addRole($role['nazwa_roli']);
                        }
        
                        // Ustawienie danych sesji dla zalogowanego użytkownika
                        $_SESSION['user_id'] = $userRecord['id_uzytkownika'];
                        $_SESSION['login'] = $userRecord['login'];
                    } else {
                        // Hasło nieprawidłowe
                        Utils::addErrorMessage("Nieprawidłowe hasło");
                    }
                } else {
                    // Użytkownik o podanym loginie nie istnieje
                    Utils::addErrorMessage("Użytkownik o podanym loginie nie istnieje");
                }
            } catch (\PDOException $e) {
                Utils::addErrorMessage('Wystąpił błąd podczas weryfikacji danych');
                if (App::getConf()->debug)
                    Utils::addErrorMessage($e->getMessage());
            }
        // sprawdzenie, czy dane logowania poprawne
        // (takie informacje najczęściej przechowuje się w bazie danych)
        //if ($this->form->login == "admin" && $this->form->pass == "admin") {
        //    RoleUtils::addRole('admin');
        //} else if ($this->form->login == "user" && $this->form->pass == "user") {
        //    RoleUtils::addRole('user');
        //} else {
        //    Utils::addErrorMessage('Niepoprawny login lub hasło');
        //}

        return !App::getMessages()->isError();
    }

    public function action_loginShow() {
        $this->generateView();
    }

    public function action_login() {
        if ($this->validate()) {
            //zalogowany => przekieruj na główną akcję (z przekazaniem messages przez sesję)
            Utils::addErrorMessage('Poprawnie zalogowano do systemu');
            App::getRouter()->redirectTo("orderList");
        } else {
            //niezalogowany => pozostań na stronie logowania
            $this->generateView();
        }
    }

    public function action_logout() {
        // 1. zakończenie sesji
        session_destroy();
        // 2. idź na stronę główną - system automatycznie przekieruje do strony logowania
        App::getRouter()->redirectTo('login');
    }

    public function generateView() {
        App::getSmarty()->assign('form', $this->form); // dane formularza do widoku
        App::getSmarty()->display('LoginView.tpl');
    }
 
}
