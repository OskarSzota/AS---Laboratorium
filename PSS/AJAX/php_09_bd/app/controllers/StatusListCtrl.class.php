<?php

namespace app\controllers;

use core\App;
use core\Utils;
use core\ParamUtils;
use app\forms\StatusSearchForm;

class StatusListCtrl {

    private $form; //dane formularza wyszukiwania
    private $records; //rekordy pobrane z bazy danych

    public function __construct() {
        //stworzenie potrzebnych obiektów
        $this->form = new StatusSearchForm();
    }

    public function validate() {
        // 1. sprawdzenie, czy parametry zostały przekazane
        // - nie trzeba sprawdzać
        $this->form->wyszukiwanie_nazwa_statusu = ParamUtils::getFromRequest('wyszukiwanie_nazwa_statusu');

        // 2. sprawdzenie poprawności przekazanych parametrów
        // - nie trzeba sprawdzać

        return !App::getMessages()->isError();
    }

    public function action_statusList() {
        // 1. Walidacja danych formularza (z pobraniem)
        // - W tej aplikacji walidacja nie jest potrzebna, ponieważ nie wystąpią błedy podczas podawania nazwiska.
        //   Jednak pozostawiono ją, ponieważ gdyby uzytkownik wprowadzał np. datę, lub wartość numeryczną, to trzeba
        //   odpowiednio zareagować wyświetlając odpowiednią informację (poprzez obiekt wiadomości Messages)
        $this->validate();

        $search_params = [];
        if (!empty($this->form->wyszukiwanie_nazwa_statusu)) {
            $search_params['nazwa_statusu[~]'] = "%" . $this->form->wyszukiwanie_nazwa_statusu . "%";
        }

        //$where = ["ORDER" => "nazwa_statusu"];
        //if (!empty($search_params)) {
        //    $where["AND"] = $search_params;
        //}

        $where = $search_params;


        try {
            $this->records = App::getDB()->select("statusy", [
                "id_statusu",
                "nazwa_statusu",
            ], $where);

        } catch (\PDOException $e) {
            Utils::addErrorMessage('Wystąpił błąd podczas pobierania danych z bazy danych');
            if (App::getConf()->debug)
                Utils::addErrorMessage($e->getMessage());
        }

        // 4. wygeneruj widok
        App::getSmarty()->assign('searchForm', $this->form); // dane formularza (wyszukiwania w tym wypadku)
        App::getSmarty()->assign('status', $this->records);  // lista rekordów z bazy danych
        App::getSmarty()->display('StatusList.tpl');
    }

}
