<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">

<head>
	<meta charset="utf-8"/>
	<title>Helpdesk</title>
	<!--<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css"
		integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
	<link rel="stylesheet" href="{$conf->app_url}/css/style.css">-->
	<link rel="stylesheet" href="{$conf->app_url}/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="{$conf->app_url}/assets/css/noscript.css" /></noscript>
</head>

<body style="margin: 20px;">

	<section class="main style2">
		<div class="container">
			<div class="row">
				<div class="col-12 col-12-medium">
					<ul class="actions special">
						{if isset($conf->roles.Klient) && $conf->roles.Klient || isset($conf->roles.Operator) && $conf->roles.Operator}
							<li><a href="{$conf->action_root}orderList" class="button scrolly">Zgłoszenia</a></li>
    					{/if}
	
						{if isset($conf->roles.Administrator) && $conf->roles.Administrator}
    						<li><a href="{$conf->action_root}statusList" class="button scrolly">Statusy</a></li>
    						<li><a href="{$conf->action_root}userList" class="button scrolly">Użytkownicy</a></li>
							<li><a href="{$conf->action_root}permissionsList" class="button scrolly">Nadawanie ról</a></li>
						{/if}

						{if count($conf->roles)>0}
							<li><a href="{$conf->action_root}logout" class="button scrolly">Wyloguj</a></li>
						{else}	
							<li><a href="{$conf->action_root}loginShow" class="button scrolly">Zaloguj</a></li>
						{/if}
					</ul>
				</div>
			</div>
		</div>
	</section>

<!--<div class="">
	{if isset($conf->roles.Klient) && $conf->roles.Klient || isset($conf->roles.Operator) && $conf->roles.Operator}
		<li><a href="{$conf->action_root}orderList" class="button scrolly">Zgłoszenia</a></li>
    {/if}
	
	{if isset($conf->roles.Administrator) && $conf->roles.Administrator}
    <li><a href="{$conf->action_root}statusList" class="button scrolly">Statusy</a></li>
    <li><a href="{$conf->action_root}userList" class="button scrolly">Użytkownicy</a></li>
	<li><a href="{$conf->action_root}permissionsList" class="button scrolly">Nadawanie ról</a></li>
	{/if}

	{if count($conf->roles)>0}
		<li><a href="{$conf->action_root}logout" class="button scrolly">Wyloguj</a></li>
	{else}	
		<li><a href="{$conf->action_root}loginShow" class="button scrolly">Zaloguj</a></li>
	{/if}
</div>-->

{block name=top} {/block}

{block name=messages}

{if $msgs->isMessage()}
<div class="messages bottom-margin">
	<ul>
	{foreach $msgs->getMessages() as $msg}
	{strip}
		<li class="msg {if $msg->isError()}error{/if} {if $msg->isWarning()}warning{/if} {if $msg->isInfo()}info{/if}">{$msg->text}</li>
	{/strip}
	{/foreach}
	</ul>
</div>
{/if}

{/block}

{block name=bottom} {/block}

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

</body>

</html>