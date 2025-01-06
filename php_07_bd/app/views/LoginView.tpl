{extends file="main.tpl"}

{block name=top}
<div class="row">
	<div class="col-sm-12">
	<form action="{$conf->action_root}login" method="post">
	<legend>Logowanie do systemu</legend>
	<fieldset>
        <div style="margin-top: 10px;">
			<label for="id_login">login: </label>
			<input id="id_login" type="text" name="login" value="{$form->login}"/>
		</div>
        <div style="margin-top: 10px;">
			<label for="id_pass">pass: </label>
			<input id="id_pass" type="password" name="pass" /><br />
		</div>
		<div style="margin-top: 10px;">
			<input type="submit" value="zaloguj" class="btn btn-primary"/>
		</div>
	</fieldset>
	</form>
	</div>
</div>
{/block}
