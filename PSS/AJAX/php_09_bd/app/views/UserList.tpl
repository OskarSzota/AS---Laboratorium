{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

				<form id="search-form" onsubmit="ajaxPostForm('search-form','{$conf->action_root}userListPart','table'); return false;">
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
				<a href="{$conf->action_root}addUserNew" class="button primary">+ Dodaj nowego użytkownika</a><br /><br />
			</div>
		</div>

		<div id="table">
			{include file="UserListPart.tpl"}
		</div>

	</div>
</section>

{/block}
