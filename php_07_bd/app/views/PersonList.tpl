{extends file="main.tpl"}

{block name=top}

<div class="row">
<div class="col-sm-12">
<form action="{$conf->action_url}personList">
	<legend>Opcje wyszukiwania</legend>
	<fieldset>
		<input type="text" placeholder="nazwisko" name="sf_surname" value="{$searchForm->surname}" />
		<button type="submit" class="btn btn-primary">Filtruj</button>
	</fieldset>
</form>
</div>
</div>	

<div class="row">
	<div class="col-sm-12" style="height: 40px;">
	</div>
</div>

{/block}

{block name=content}

<div class="row">
<div class="col-sm-12">
<a class="btn btn-action" href="{$conf->action_root}personNew">Dodaj nową osobę</a>
</div>
</div>	

<div class="row">
	<div class="col-sm-12" style="height: 20px;">
	</div>
</div>

<div class="row">
<div class="col-sm-12">
<table id="tab_people" style="width:100%">
<thead>
	<tr>
		<th>imię</th>
		<th>nazwisko</th>
		<th>data ur.</th>
		<th>miejsce zamieszkania</th>
		<th>opcje</th>
	</tr>
</thead>
<tbody>
{foreach $people as $p}
{strip}
	<tr>
		<td>{$p["name"]}</td>
		<td>{$p["surname"]}</td>
		<td>{$p["birthdate"]}</td>
		<td>{$p["address"]}</td>
		<td>
			<a class="btn btn-primary" href="{$conf->action_url}personEdit&id={$p['idperson']}">Edytuj</a>
			&nbsp;
			<a class="btn btn-primary" href="{$conf->action_url}personDelete&id={$p['idperson']}">Usuń</a>
		</td>
	</tr>
{/strip}
{/foreach}
</tbody>
</table>
</div>
</div>	

{/block}
