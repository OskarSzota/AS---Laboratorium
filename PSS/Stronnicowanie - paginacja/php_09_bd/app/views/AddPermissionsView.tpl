{extends file="main.tpl"}

{block name=top}

<!--<div class="bottom-margin">
<form action="{$conf->action_root}orderStatusSave" method="post" class="pure-form pure-form-aligned">
	<fieldset>
		<legend>Zmiana statusu</legend>
        <div class="pure-control-group">
            <label for="changeorderstatus_status">Status</label>
            <select id="changeorderstatus_status" name="changeorderstatus_status">
                {foreach from=$statusList item=status}
                    <option value="{$status.id_statusu}" {if $status.id_statusu == $form->changeorderstatus_status}selected{/if}>{$status.nazwa_statusu}</option>
                {/foreach}
            </select>
        </div>
		<div class="pure-controls">
			<input type="submit" class="pure-button pure-button-primary" value="Zapisz"/>
			<a class="pure-button button-secondary" href="{$conf->action_root}orderList">Powrót</a>
		</div>
	</fieldset>
    <input type="hidden" name="changeorderstatus_id" value="{$form->changeorderstatus_id}">
    <input type="hidden" name="changeorderstatus_topic" value="{$form->changeorderstatus_topic}">
    <input type="hidden" name="changeorderstatus_description" value="{$form->changeorderstatus_description}">
    <input type="hidden" name="changeorderstatus_user" value="{$form->changeorderstatus_user}">
    <input type="hidden" name="changeorderstatus_create_date" value="{$form->changeorderstatus_create_date}">
    <input type="hidden" name="changeorderstatus_modify_date" value="{$form->changeorderstatus_modify_date}">
</form>	
</div>-->

{extends file="main.tpl"}

{block name=top}
<div class="bottom-margin">
    <form action="{$conf->action_root}addPermissionsSave" method="post" class="pure-form pure-form-aligned">
        <fieldset>
            <legend>Nadawanie ról użytkownikom</legend>

            <!-- Wybór użytkownika -->
            <div class="pure-control-group">
                <label for="addpermissions_user_id">Użytkownik</label>
            </div>

            <!-- Wybór roli -->
            <div class="pure-control-group">
                <label for="addpermissions_role_id">Rola</label>
            </div>

            <!-- Przyciski -->
            <div class="pure-controls">
                <input type="submit" class="pure-button pure-button-primary" value="Zapisz"/>
                <a class="pure-button button-secondary" href="{$conf->action_root}permissionsList">Powrót</a>
            </div>
        </fieldset>
    </form>    
</div>
{/block}


{/block}
