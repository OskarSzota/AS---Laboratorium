{extends file="main.tpl"}

{block name=top}

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

                <form action="{$conf->action_root}addUserSave" method="post">
	                <fieldset>
		            <legend>Dane osoby</legend><br />
		                <div>
                            <label for="adduser_login">Login</label>
                            <input id="adduser_login" type="text" placeholder="Login" name="adduser_login" value="{$form->adduser_login}">
                        </div>
                        <br />
                        <div>
                            <label for="adduser_pass">Hasło</label>
                            <input id="adduser_pass" type="password" placeholder="Hasło" name="adduser_pass" value="{$form->adduser_pass}">
                        </div>
                        <br />
                        <div>
                            <label for="adduser_pass">Powtórz hasło</label>
                            <input id="adduser_pass" type="password" placeholder="Powtórz hasło" name="adduser_pass_powtorne" value="{$form->adduser_pass_powtorne}">
                        </div>
                        <br />
                        <div>
                            <label for="adduser_name">Imię</label>
                            <input id="adduser_name" type="text" placeholder="Imię" name="adduser_name" value="{$form->adduser_name}">
                        </div>
                        <br />
		                <div>
                            <label for="adduser_surname">Nazwisko</label>
                            <input id="adduser_surname" type="text" placeholder="Nazwisko" name="adduser_surname" value="{$form->adduser_surname}">
                        </div>
                        <br />
		                <div>
                            <label for="adduser_email">E-mail</label>
                            <input id="adduser_email" type="text" placeholder="E-mail" name="adduser_email" value="{$form->adduser_email}">
                        </div>
                        <br />
		                <div>
			                <input type="submit" value="Zapisz" class="button primary"/>
			                <a href="{$conf->action_root}userList" class="button">Powrót</a>
		                </div>
	                </fieldset>
                    <input type="hidden" name="adduser_id" value="{$form->adduser_id}">
                    <input type="hidden" name="adduser_create_date" value="{$form->adduser_create_date}">
                    <input type="hidden" name="adduser_created_by" value="{$form->adduser_created_by}">
                </form>	

            </div>
		</div>
	</div>
</section>


{/block}
