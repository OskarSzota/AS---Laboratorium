{extends file="main.tpl"}

{block name=content}


<div>
	<div class="row">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4">
			<center>
			<h3>Menu wyboru funkcji:</h3>
			<a href="{$conf->action_root}calcShow" class="btn btn-action">Kalkulator</a></center>
		</div>
		<div class="col-sm-4">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12" style="height:100px;">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
		<span>użytkownik: {$user->login}, rola: {$user->role}</span>
		</div>
	</div>
</div>

{/block}