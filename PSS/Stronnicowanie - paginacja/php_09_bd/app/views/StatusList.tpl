{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<form action="{$conf->action_url}statusList">
					<legend>Opcje wyszukiwania</legend>
						<fieldset>
							<input type="text" placeholder="Nazwa statusu" name="wyszukiwanie_nazwa_statusu" value="{$searchForm->wyszukiwanie_nazwa_statusu}" /><br />
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
	<div class="col-6 col-12-medium">
		<div>
			<a href="{$conf->action_root}addStatusNew" class="button primary">Dodaj nowy status</a><br /><br />
		</div>
	</div>
</div>

<div class="row">
	<div class="col-12 col-12-medium">
		<section>
			<div class="table-wrapper">
				<table id="tab_status">
				<thead>
					<tr>
						<th>Id status</th>
						<th>Status</th>
						<th>Opcje</th>
					</tr>
				</thead>
				<tbody>
				{foreach $status as $s}
				{strip}
					<tr>
						<td>{$s["id_statusu"]}</td>
						<td>{$s["nazwa_statusu"]}</td>
						<td>
							<a href="{$conf->action_url}statusEdit/{$s['id_statusu']}" class="button primary small">Edytuj</a>
							&nbsp;
							<!--<a class="button-small pure-button button-warning" href="{$conf->action_url}personDelete/{$p['idperson']}">Usuń</a>-->
						</td>
					</tr>
				{/strip}
				{/foreach}
				</tbody>
				</table>
			</div>
		</section>
	</div>
</div>
</div>
</section>
{/block}
