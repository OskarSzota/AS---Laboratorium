{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<form action="{$conf->action_root}addStatusSave" method="post">
					<fieldset>
					<legend>Dane statusu</legend><br />
						<div>
            				<label for="addstatus_name">Nazwa</label>
            				<input id="addstatus_name" type="text" placeholder="Nazwa" name="addstatus_name" value="{$form->addstatus_name}">
        				</div>
						<br />
						<div>
							<input type="submit" value="Zapisz" class="button primary"/>
							<a href="{$conf->action_root}statusList" class="button">Powrót</a>
						</div>
					</fieldset>
    				<input type="hidden" name="addstatus_id" value="{$form->addstatus_id}">
				</form>	
			</div>
		</div>
	</div>
</section>


{/block}
