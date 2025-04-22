<?php
/* Smarty version 3.1.30, created on 2025-02-02 11:58:45
  from "C:\xampp\htdocs\php_09_bd\app\views\AddUserView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f4fe5033033_86678463',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '248a2ae9e68dda6b35ada0f3d6f4279bf7626075' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\AddUserView.tpl',
      1 => 1738493722,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f4fe5033033_86678463 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2093093417679f4fe50326f1_52112071', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_2093093417679f4fe50326f1_52112071 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

                <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addUserSave" method="post">
	                <fieldset>
		            <legend>Dane osoby</legend><br />
		                <div>
                            <label for="adduser_login">Login</label>
                            <input id="adduser_login" type="text" placeholder="Login" name="adduser_login" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_login;?>
">
                        </div>
                        <br />
                        <div>
                            <label for="adduser_pass">Hasło</label>
                            <input id="adduser_pass" type="password" placeholder="Hasło" name="adduser_pass" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_pass;?>
">
                        </div>
                        <br />
                        <div>
                            <label for="adduser_pass">Powtórz hasło</label>
                            <input id="adduser_pass" type="password" placeholder="Powtórz hasło" name="adduser_pass_powtorne" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_pass_powtorne;?>
">
                        </div>
                        <br />
                        <div>
                            <label for="adduser_name">Imię</label>
                            <input id="adduser_name" type="text" placeholder="Imię" name="adduser_name" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_name;?>
">
                        </div>
                        <br />
		                <div>
                            <label for="adduser_surname">Nazwisko</label>
                            <input id="adduser_surname" type="text" placeholder="Nazwisko" name="adduser_surname" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_surname;?>
">
                        </div>
                        <br />
		                <div>
                            <label for="adduser_email">E-mail</label>
                            <input id="adduser_email" type="text" placeholder="E-mail" name="adduser_email" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_email;?>
">
                        </div>
                        <br />
		                <div>
			                <input type="submit" value="Zapisz" class="button primary"/>
			                <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
userList" class="button">Powrót</a>
		                </div>
	                </fieldset>
                    <input type="hidden" name="adduser_id" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_id;?>
">
                    <input type="hidden" name="adduser_create_date" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_create_date;?>
">
                    <input type="hidden" name="adduser_created_by" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->adduser_created_by;?>
">
                </form>	

            </div>
		</div>
	</div>
</section>


<?php
}
}
/* {/block 'top'} */
}
