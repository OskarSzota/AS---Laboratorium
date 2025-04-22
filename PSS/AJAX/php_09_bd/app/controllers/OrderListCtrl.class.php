<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use app\forms\OrderSearchForm;

class OrderListCtrl {

    private $form; //dane formularza wyszukiwania
    private $records; //rekordy pobrane z bazy danych
    private $page; // aktualna strona
    private $limit = 3; // liczba rekordów na stronę
    private $totalRecords; // całkowita liczba rekordów

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new OrderSearchForm();
    }

    public function validate() {
        // 1. sprawdzenie, czy parametry zostały przekazane
        // - nie trzeba sprawdzać
        $this->form->temat_zgloszenia = ParamUtils::getFromRequest('temat_zgloszenia');

        $this->page = ParamUtils::getFromRequest('page', true, '1');
        $this->page = max(1, intval($this->page));

        // 2. sprawdzenie poprawności przekazanych parametrów
        // - nie trzeba sprawdzać

        return !App::getMessages()->isError();
    }

    public function action_orderList() {
        $this->validate();

        $offset = ($this->page - 1) * $this->limit;

        $search_params = [];
        if (!empty($this->form->temat_zgloszenia)) {
            $search_params['zgloszenia.temat_zgloszenia[~]'] = "%" . $this->form->temat_zgloszenia . "%";
        }

        //$where = ["ORDER" => "zgloszenia.temat_zgloszenia"];
        //if (!empty($search_params)) {
        //    $where["AND"] = $search_params;
        //}

        //if (isset(App::getConf()->roles['Klient']) && App::getConf()->roles['Klient']) {
        //    $search_params['zgloszenia.id_uzytkownika'] = $_SESSION['user_id'];
        //}

        if (!(isset(App::getConf()->roles['Operator']) && App::getConf()->roles['Operator'])) {
            if (isset(App::getConf()->roles['Klient']) && App::getConf()->roles['Klient']) {
                $search_params['zgloszenia.id_uzytkownika'] = $_SESSION['user_id'];
            }
        }

        $where = !empty($search_params) ? ["AND" => $search_params] : [];


        try {
            $this->totalRecords = App::getDB()->count("zgloszenia", $where);

            $this->records = App::getDB()->select("zgloszenia", [
                "[><]Statusy" => ["id_statusu" => "id_statusu"],
                "[><]Uzytkownicy" => ["id_uzytkownika" => "id_uzytkownika"]
            ], [
                "zgloszenia.id_zgloszenia",
                "zgloszenia.temat_zgloszenia",
                "zgloszenia.opis",
                "Statusy.nazwa_statusu",
                "Uzytkownicy.imie",
                "Uzytkownicy.nazwisko",
                "zgloszenia.data_utworzenia",
                "zgloszenia.data_modyfikacji"
            ], array_merge($where, [
                "LIMIT" => [$offset, $this->limit]
            ]));

            foreach ($this->records as &$record) {
                $record['nazwa_uzytkownika'] = $record['imie'] . ' ' . $record['nazwisko'];
                unset($record['imie'], $record['nazwisko']);
            }

        } catch (\PDOException $e) {
            Utils::addErrorMessage('Wystąpił błąd podczas pobierania danych z bazy danych');
            if (App::getConf()->debug)
                Utils::addErrorMessage($e->getMessage());
        }

        $totalPages = ceil($this->totalRecords / $this->limit);
        
        // 4. wygeneruj widok
        App::getSmarty()->assign('searchForm', $this->form); // dane formularza (wyszukiwania w tym wypadku)
        App::getSmarty()->assign('orders', $this->records);  // lista rekordów z bazy danych
        App::getSmarty()->assign('currentPage', $this->page);
        App::getSmarty()->assign('totalPages', $totalPages);
        App::getSmarty()->display('OrderList.tpl');
    }

}
