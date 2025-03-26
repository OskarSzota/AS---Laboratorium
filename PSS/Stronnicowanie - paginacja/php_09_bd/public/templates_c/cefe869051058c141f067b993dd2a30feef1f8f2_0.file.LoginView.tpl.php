<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:38:50
  from "C:\xampp\htdocs\php_09_bd\app\views\LoginView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f3d2a88db36_04272693',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cefe869051058c141f067b993dd2a30feef1f8f2' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\LoginView.tpl',
      1 => 1738489128,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f3d2a88db36_04272693 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1485782575679f3d2a88d748_94511592', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1485782575679f3d2a88d748_94511592 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
login" method="post">
					<legend>Logowanie do systemu</legend><br />
					<fieldset>
        				<div>
							<label for="id_login" class="label">Login: </label>
							<input id="id_login" type="text" name="login" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->login;?>
"/>
						</div>
        				<div>
							<label for="id_pass" class="label">Hasło: </label>
							<input id="id_pass" type="password" name="pass" /><br />
						</div>
						<div>
							<input type="submit" value="Zaloguj" class="button primary"/>
						</div>
					</fieldset>
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
