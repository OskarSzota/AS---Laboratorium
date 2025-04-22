<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use app\forms\PermissionsSearchForm;

class PermissionsListCtrl {

    private $form; //dane formularza wyszukiwania
    private $records; //rekordy pobrane z bazy danych

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new PermissionsSearchForm();
    }

    public function validate() {
        // 1. sprawdzenie, czy parametry zostały przekazane
        // - nie trzeba sprawdzać
        $this->form->wyszukiwanie_nazwa_uzytkownika = ParamUtils::getFromRequest('wyszukiwanie_nazwa_uzytkownika');

        // 2. sprawdzenie poprawności przekazanych parametrów
        // - nie trzeba sprawdzać

        return !App::getMessages()->isError();
    }

    public function action_permissionsList() {
        $this->validate();

        $search_params = [];
        if (!empty($this->form->wyszukiwanie_nazwa_uzytkownika)) {
            $search_params['Uzytkownicy.imie[~]'] = "%" . $this->form->wyszukiwanie_nazwa_uzytkownika . "%";
        }

        //$where = ["ORDER" => "zgloszenia.temat_zgloszenia"];
        //if (!empty($search_params)) {
        //    $where["AND"] = $search_params;
        //}

        $where = $search_params;

        //try {
        //    $this->records = App::getDB()->select("zgloszenia", [
        //        "id_zgloszenia",
        //        "temat_zgloszenia",
        //        "opis",
        //        "id_statusu",
        //        "id_uzytkownika",
        //        "data_utworzenia",
        //        "data_modyfikacji",
        //            ],);
        //} catch (\PDOException $e) {
        //    Utils::addErrorMessage('Wystąpił błąd podczas pobierania rekordów');
        //    if (App::getConf()->debug)
        //        Utils::addErrorMessage($e->getMessage());
        //}

        try {
            $this->records = App::getDB()->select("Nadawanie_rol", [
                "[><]Uzytkownicy" => ["id_uzytkownika" => "id_uzytkownika"],
                "[><]Role" => ["id_roli" => "id_roli"]
            ], [
                "Nadawanie_rol.id_nadania_roli",
                "Uzytkownicy.imie",
                "Uzytkownicy.nazwisko",
                "Role.nazwa_roli",
                "Nadawanie_rol.data_nadania",
                "Nadawanie_rol.data_odebrania"
            ], $where);

            foreach ($this->records as &$record) {
                $record['nazwa_uzytkownika'] = $record['imie'] . ' ' . $record['nazwisko'];
                unset($record['imie'], $record['nazwisko']); // Opcjonalne: usuń pola imie i nazwisko
            }

        } catch (\PDOException $e) {
            Utils::addErrorMessage('Wystąpił błąd podczas pobierania danych z bazy danych');
            if (App::getConf()->debug)
                Utils::addErrorMessage($e->getMessage());
        }

        // 4. wygeneruj widok
        App::getSmarty()->assign('searchForm', $this->form); // dane formularza (wyszukiwania w tym wypadku)
        App::getSmarty()->assign('permissions', $this->records);  // lista rekordów z bazy danych
        App::getSmarty()->display('PermissionsList.tpl');
    }

}
