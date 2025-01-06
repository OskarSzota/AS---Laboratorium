<?php
/* Smarty version 4.5.4, created on 2025-01-04 01:29:45
  from 'C:\xampp\htdocs\php_06a_role\app\views\LoginView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_677880f9099210_53345432',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f196ac656a19d8f3e74e060d59c0b180ba78aeec' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_06a_role\\app\\views\\LoginView.tpl',
      1 => 1735946923,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_677880f9099210_53345432 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1414431143677880f90036a4_53692525', 'content');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'content'} */
class Block_1414431143677880f90036a4_53692525 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1414431143677880f90036a4_53692525',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div>
	<div class="row">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4">
			<center>
			<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
login" method="post">
				<legend>Logowanie do systemu</legend>
				<fieldset>
					<div class="pure-control-group">
						<label for="id_login">Login: </label>
						<input id="id_login" type="text" name="login"/>
					</div>
					<div class="pure-control-group">
						<label for="id_pass">Haslo: </label>
						<input id="id_pass" type="password" name="pass" /><br />
					</div>
					<div class="pure-controls">
						<input type="submit" value="zaloguj" class="btn btn-action"/>
					</div>
				</fieldset>
			</form>	
		</div>
		<div class="col-sm-4">
		</div>
		<div class="row">
			<div class="col-sm-12">
						<?php if ($_smarty_tpl->tpl_vars['msgs']->value->isError()) {?>
				<h4>Wystąpiły błędy: </h4>
				<ol class="err">
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['msgs']->value->getErrors(), 'err');
$_smarty_tpl->tpl_vars['err']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['err']->value) {
$_smarty_tpl->tpl_vars['err']->do_else = false;
?>
					<li><?php echo $_smarty_tpl->tpl_vars['err']->value;?>
</li>
					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
				</ol>
			<?php }?>

						<?php if ($_smarty_tpl->tpl_vars['msgs']->value->isInfo()) {?>
			<h4>Informacje: </h4>
			<ol class="inf">
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['msgs']->value->getInfos(), 'inf');
$_smarty_tpl->tpl_vars['inf']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['inf']->value) {
$_smarty_tpl->tpl_vars['inf']->do_else = false;
?>
				<li><?php echo $_smarty_tpl->tpl_vars['inf']->value;?>
</li>
				<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</ol>
			<?php }?>
			</div>
		</div>
	</div>
</div>

<?php
}
}
/* {/block 'content'} */
}
