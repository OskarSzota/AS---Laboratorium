{extends file="main.tpl"}

{block name=top}

<div class="row">
<div class="col-sm-4">
<form action="{$conf->action_root}personSave" method="post">
	<fieldset>
		<legend>Dane osoby</legend>
		<div style="margin-top: 10px;">
            <label for="name">imię</label>
            <input id="name" type="text" placeholder="imię" name="name" value="{$form->name}">
        </div>
		<div style="margin-top: 10px;">
            <label for="surname">nazwisko</label>
            <input id="surname" type="text" placeholder="nazwisko" name="surname" value="{$form->surname}">
        </div>
		<div style="margin-top: 10px;">
            <label for="birthdate">data ur.</label>
            <input id="birthdate" type="text" placeholder="data ur." name="birthdate" value="{$form->birthdate}">
        </div>
        <div style="margin-top: 10px;">
            <label for="address">miejsce zamieszkania</label>
            <input id="address" type="text" placeholder="miejsce zamieszkania" name="address" value="{$form->address}">
        </div>
		<div style="margin-top: 10px;">
			<input type="submit" class="btn btn-primary" value="Zapisz"/>
			<a class="btn" href="{$conf->action_root}personList">Powrót</a>
		</div>
	</fieldset>
    <input type="hidden" name="id" value="{$form->id}">
</form>	
</div>
</div>

{/block}
