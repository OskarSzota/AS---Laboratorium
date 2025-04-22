<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use app\forms\UserSearchForm;

class UserListCtrl {

    private $form; //dane formularza wyszukiwania
    private $records; //rekordy pobrane z bazy danych

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new UserSearchForm();
    }

    public function validate() {
        // 1. sprawdzenie, czy parametry zostały przekazane
        // - nie trzeba sprawdzać
        $this->form->wyszukiwanie_login = ParamUtils::getFromRequest('wyszukiwanie_login');

        // 2. sprawdzenie poprawności przekazanych parametrów
        // - nie trzeba sprawdzać

        return !App::getMessages()->isError();
    }

    public function load_data() {
        // 1. Walidacja danych formularza (z pobraniem)
        // - W tej aplikacji walidacja nie jest potrzebna, ponieważ nie wystąpią błedy podczas podawania nazwiska.
        //   Jednak pozostawiono ją, ponieważ gdyby uzytkownik wprowadzał np. datę, lub wartość numeryczną, to trzeba
        //   odpowiednio zareagować wyświetlając odpowiednią informację (poprzez obiekt wiadomości Messages)
        $this->validate();

        $search_params = [];
        if (!empty($this->form->wyszukiwanie_login)) {
            $search_params['u1.login[~]'] = "%" . $this->form->wyszukiwanie_login . "%";
        }

        //$where = ["ORDER" => "u1.login"];
        //if (!empty($search_params)) {
        //    $where["AND"] = $search_params;
        //}

        $where = $search_params;


        try {
            $this->records = App::getDB()->select("Uzytkownicy(u1)", [
                "[>]Uzytkownicy" => ["u1.utworzony_przez" => "id_uzytkownika"]
            ], [
                "u1.id_uzytkownika",
                "u1.login",
                "u1.haslo",
                "u1.imie(imie_uzytkownika)",
                "u1.nazwisko(nazwisko_uzytkownika)",
                "u1.email",
                "u1.data_utworzenia_uzytkownika",
                "Uzytkownicy.imie(imie_utworzony_przez)",
                "Uzytkownicy.nazwisko(nazwisko_utworzony_przez)"
            ], $where);
        
            foreach ($this->records as &$record) {
                $record['utworzony_przez'] = $record['imie_utworzony_przez'] . ' ' . $record['nazwisko_utworzony_przez'];
                unset($record['imie_utworzony_przez'], $record['nazwisko_utworzony_przez']);
            }

        } catch (\PDOException $e) {
            Utils::addErrorMessage('Wystąpił błąd podczas pobierania danych z bazy danych');
            if (App::getConf()->debug)
                Utils::addErrorMessage($e->getMessage());
        }

    }

    public function action_userList() {
        $this->load_data();
        App::getSmarty()->assign('searchForm', $this->form); // dane formularza (wyszukiwania w tym wypadku)
        App::getSmarty()->assign('users', $this->records);  // lista rekordów z bazy danych
        App::getSmarty()->display('UserList.tpl');
    }

    public function action_userListPart() {
        $this->load_data();
        App::getSmarty()->assign('searchForm', $this->form); // dane formularza (wyszukiwania w tym wypadku)
        App::getSmarty()->assign('users', $this->records);  // lista rekordów z bazy danych
        App::getSmarty()->display('UserListPart.tpl');
    }

}
