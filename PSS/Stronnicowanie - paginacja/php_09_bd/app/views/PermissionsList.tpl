{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

			<form class="pure-form pure-form-stacked" action="{$conf->action_url}permissionsList">
				<legend>Opcje wyszukiwania</legend>
				<fieldset>
					<input type="text" placeholder="Imię użytkownika" name="wyszukiwanie_nazwa_uzytkownika" value="{$searchForm->wyszukiwanie_nazwa_uzytkownika}" /><br />
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
					<a href="{$conf->action_root}addPermissionsNew" class="button primary">Dodaj nową role dla użytkownika</a><br /><br />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-12-medium">

			<table id="tab_order">
				<thead>
					<tr>
						<th>Id nadawania roli</th>
						<th>Imię i nazwisko użytkownika</th>
						<th>Nazwa roli</th>
						<th>Data nadania roli</th>
						<th>Data odebrania roli</th>
						<th>Opcje</th>
					</tr>
				</thead>
				<tbody>
					{foreach $permissions as $p}
					{strip}
						<tr>
							<td>{$p["id_nadania_roli"]}</td>
							<td>{$p["nazwa_uzytkownika"]}</td>
							<td>{$p["nazwa_roli"]}</td>
							<td>{$p["data_nadania"]}</td>
							<td>{$p["data_odebrania"]}</td>
							<td>
								<!--<a class="button-small pure-button button-secondary" href="{$conf->action_url}orderEdit/{$p['id_nadania_roli']}">Edytuj</a>
								&nbsp;
								<a class="button-small pure-button button-warning" href="{$conf->action_url}orderStatusEdit/{$o['id_zgloszenia']}">Zmień status</a>-->
							</td>
						</tr>
					{/strip}
					{/foreach}
				</tbody>
			</table>

			</div>
		</div>
	</div>
</section>

{/block}
