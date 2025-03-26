{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

                <form action="{$conf->action_root}orderStatusSave" method="post">
	                <fieldset>
		            <legend>Zmiana statusu</legend><br />
                        <div>
                            <label for="changeorderstatus_status">Status</label>
                            <select id="changeorderstatus_status" name="changeorderstatus_status">
                                {foreach from=$statusList item=status}
                                    <option value="{$status.id_statusu}" {if $status.id_statusu == $form->changeorderstatus_status}selected{/if}>{$status.nazwa_statusu}</option>
                                {/foreach}
                            </select>
                        </div>
                        <br />
		                <div>
			                <input type="submit" value="Zapisz" class="button primary"/>
			                <a href="{$conf->action_root}orderList" class="button">Powrót</a>
		                </div>
	                </fieldset>
                    <input type="hidden" name="changeorderstatus_id" value="{$form->changeorderstatus_id}">
                    <input type="hidden" name="changeorderstatus_topic" value="{$form->changeorderstatus_topic}">
                    <input type="hidden" name="changeorderstatus_description" value="{$form->changeorderstatus_description}">
                    <input type="hidden" name="changeorderstatus_user" value="{$form->changeorderstatus_user}">
                    <input type="hidden" name="changeorderstatus_create_date" value="{$form->changeorderstatus_create_date}">
                    <input type="hidden" name="changeorderstatus_modify_date" value="{$form->changeorderstatus_modify_date}">
                </form>	

            </div>
		</div>
	</div>
</section>


{/block}
