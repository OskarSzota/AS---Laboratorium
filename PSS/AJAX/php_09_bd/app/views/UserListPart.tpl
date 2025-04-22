<table id="tab_users">
	<thead>
		<tr>
			<th>Id użytkownika</th>
			<th>Login</th>
			<th>Hasło</th>
			<th>Imię</th>
			<th>Nazwisko</th>
			<th>Email</th>
			<th>Data utworzenia</th>
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
