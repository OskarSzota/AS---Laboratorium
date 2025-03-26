{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
                <form action="{$conf->action_root}addOrderSave" method="post">
	                <fieldset>
		                <legend>Dane osoby</legend><br />
		                <div>
                            <label for="addorder_topic">Temat</label>
                            <input id="addorder_topic" type="text" placeholder="Temat" name="addorder_topic" value="{$form->addorder_topic}">
                        </div>
                        <br />
                        <div>
                            <label for="addorder_description">Opis</label>
                            <input id="addorder_description" type="text" placeholder="Opis" name="addorder_description" value="{$form->addorder_description}">
                        </div>
                        <br />
		                <div>
			                <input type="submit" value="Zapisz" class="button primary"/>
			                <a href="{$conf->action_root}orderList" class="button">Powrót</a>
		                </div>
	                </fieldset>
                    <input type="hidden" name="addorder_id" value="{$form->addorder_id}">
                    <input type="hidden" name="addorder_status" value="{$form->addorder_status}">
                    <input type="hidden" name="addorder_user" value="{$form->addorder_user}">
                    <input type="hidden" name="addorder_create_date" value="{$form->addorder_create_date}">
                    <input type="hidden" name="addorder_modify_date" value="{$form->addorder_modify_date}">
                </form>
            </div>
		</div>
	</div>
</section>	


{/block}
