<?php
/* Smarty version 3.1.30, created on 2025-01-06 09:50:18
  from "C:\xampp\htdocs\php_07_bd\app\views\LoginView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_677b994aa86bc8_56410798',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1352266560b4b91e0ed0cb2c039a015b4e48701c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_07_bd\\app\\views\\LoginView.tpl',
      1 => 1736153417,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_677b994aa86bc8_56410798 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1633177945677b994aa867e8_61404425', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1633177945677b994aa867e8_61404425 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="row">
	<div class="col-sm-12">
	<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
login" method="post">
	<legend>Logowanie do systemu</legend>
	<fieldset>
        <div style="margin-top: 10px;">
			<label for="id_login">login: </label>
			<input id="id_login" type="text" name="login" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->login;?>
"/>
		</div>
        <div style="margin-top: 10px;">
			<label for="id_pass">pass: </label>
			<input id="id_pass" type="password" name="pass" /><br />
		</div>
		<div style="margin-top: 10px;">
			<input type="submit" value="zaloguj" class="btn btn-primary"/>
		</div>
	</fieldset>
	</form>
	</div>
</div>
<?php
}
}
/* {/block 'top'} */
}
