{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

			<form action="{$conf->action_url}userList">
			<legend>Opcje wyszukiwania</legend>
				<fieldset>
				<input type="text" placeholder="Login" name="wyszukiwanie_login" value="{$searchForm->wyszukiwanie_login}" /><br />
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
					<a href="{$conf->action_root}addUserNew" class="button primary">Dodaj nowego użytkownika</a><br /><br />
				</div>	
			</div>
		</div>	
		<div class="row">
			<div class="col-12 col-12-medium">
				<table id="tab_users">
					<thead>
							<tr>
							<th>Id użytkownika</th>
							<th>Login</th>
							<th>Hasło</th>
							<th>Imię</th>
							<th>Nazwisko</th>
							<th>Email</th>
							<th>Data utworzenia użytkownika</th>
							<th>Utworzony przez</th>
							<th>Opcje</th>
						</tr>
					</thead>
					<tbody>
					{foreach $users as $u}
					{strip}
						<tr>
							<td>{$u["id_uzytkownika"]}</td>
							<td>{$u["login"]}</td>
							<td>{$u["haslo"]}</td>
							<td>{$u["imie_uzytkownika"]}</td>
							<td>{$u["nazwisko_uzytkownika"]}</td>
							<td>{$u["email"]}</td>
							<td>{$u["data_utworzenia_uzytkownika"]}</td>
							<td>{$u["utworzony_przez"]}</td>
							<td>
								<a href="{$conf->action_url}userEdit/{$u['id_uzytkownika']}" class="button primary small">Edytuj</a>
								&nbsp;
								<!--<a class="button-small pure-button button-warning" href="{$conf->action_url}personDelete/{$p['idperson']}">Usuń</a>-->
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
