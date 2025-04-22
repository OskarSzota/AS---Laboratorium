{extends file="main.tpl"}

{block name=top}
<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<form action="{$conf->action_root}login" method="post">
					<legend>Logowanie do systemu</legend><br />
					<fieldset>
        				<div>
							<label for="id_login" class="label">Login: </label>
							<input id="id_login" type="text" name="login" value="{$form->login}"/>
						</div>
        				<div>
							<label for="id_pass" class="label">Hasło: </label>
							<input id="id_pass" type="password" name="pass" /><br />
						</div>
						<div>
							<input type="submit" value="Zaloguj" class="button primary"/>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</section>

{/block}
