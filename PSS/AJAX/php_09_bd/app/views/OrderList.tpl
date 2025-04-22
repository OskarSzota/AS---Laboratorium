{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

				<form action="{$conf->action_url}orderList">
					<legend>Opcje wyszukiwania</legend>
					<fieldset>
						<input type="text" placeholder="Temat zgłoszenia" name="temat_zgloszenia" value="{$searchForm->temat_zgloszenia}" /><br />
						<button type="submit">Filtruj</button>
					</fieldset>
				</form>

			</div>
		</div>
	</div>
</section>
	

{/block}

{block name=bottom}
<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

				<div>
					<a href="{$conf->action_root}addOrderNew">Dodaj nowe zgłoszenie</a>
				</div>	
			</div>
		</div>

		<div class="row">
			<div class="col-12 col-12-medium">

			<table id="tab_order">
			<thead>
				<tr>
					<th>Id zgłoszenia</th>
					<th>Temat</th>
					<th>Opis</th>
					<th>Status</th>
					<th>Utworzone przez</th>
					<th>Data utworzenia</th>
					<th>Data modyfikacji</th>
					<th>Opcje</th>
				</tr>
			</thead>
			<tbody>
			{foreach $orders as $o}
			{strip}
				<tr>
					<td>{$o["id_zgloszenia"]}</td>
					<td>{$o["temat_zgloszenia"]}</td>
					<td>{$o["opis"]}</td>
					<td>{$o["nazwa_statusu"]}</td>
					<td>{$o["nazwa_uzytkownika"]}</td>
					<td>{$o["data_utworzenia"]}</td>
					<td>{$o["data_modyfikacji"]}</td>
					<td>
						<a href="{$conf->action_url}orderEdit/{$o['id_zgloszenia']}" class="button primary small">Edytuj</a>
						<br /><br />
						{if isset($conf->roles.Operator) && $conf->roles.Operator}
						<a href="{$conf->action_url}orderStatusEdit/{$o['id_zgloszenia']}" class="button small">Zmień status</a>
						{/if}
					</td>
				</tr>
			{/strip}
			{/foreach}
			</tbody>
			</table>

			</div>
		</div>

		<div class="row">
            <div class="col-12 col-12-medium">
                <div class="pagination">
                    {if $currentPage > 1}
                        <a href="{$conf->action_url}orderList?page={$currentPage-1}{if $searchForm->temat_zgloszenia}&temat_zgloszenia={$searchForm->temat_zgloszenia}{/if}" class="button small">« Poprzednia</a>
                    {/if}

                    Strona {$currentPage} z {$totalPages}

                    {if $currentPage < $totalPages}
                        <a href="{$conf->action_url}orderList?page={$currentPage+1}{if $searchForm->temat_zgloszenia}&temat_zgloszenia={$searchForm->temat_zgloszenia}{/if}" class="button small">Następna »</a>
                    {/if}
                </div>
            </div>
        </div>

	</div>
</section>

{/block}
