{extends file="main.tpl"}

{block name=content}

<div>
	<div class="row">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4">
			<center>
			<form action="{$conf->action_url}login" method="post">
				<legend>Logowanie do systemu</legend>
				<fieldset>
					<div class="pure-control-group">
						<label for="id_login">Login: </label>
						<input id="id_login" type="text" name="login"/>
					</div>
					<div class="pure-control-group">
						<label for="id_pass">Haslo: </label>
						<input id="id_pass" type="password" name="pass" /><br />
					</div>
					<div class="pure-controls">
						<input type="submit" value="zaloguj" class="btn btn-action"/>
					</div>
				</fieldset>
			</form>	
		</div>
		<div class="col-sm-4">
		</div>
		<div class="row">
			<div class="col-sm-12">
			{* wyświeltenie listy błędów, jeśli istnieją *}
			{if $msgs->isError()}
				<h4>Wystąpiły błędy: </h4>
				<ol class="err">
					{foreach $msgs->getErrors() as $err}
					{strip}
						<li>{$err}</li>
					{/strip}
					{/foreach}
				</ol>
			{/if}

			{* wyświeltenie listy informacji, jeśli istnieją *}
			{if $msgs->isInfo()}
			<h4>Informacje: </h4>
			<ol class="inf">
				{foreach $msgs->getInfos() as $inf}
				{strip}
					<li>{$inf}</li>
				{/strip}
				{/foreach}
			</ol>
			{/if}
			</div>
		</div>
	</div>
</div>

{/block}
