<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:57:21
  from "C:\xampp\htdocs\php_09_bd\app\views\PermissionsList.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f4181bf48b7_58723535',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '782015ea5149b97e092f96ecca1f56ec49a31aab' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\PermissionsList.tpl',
      1 => 1738488608,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f4181bf48b7_58723535 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1060048846679f4181beb243_44927730', 'top');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_614646185679f4181bf4259_01136911', 'bottom');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1060048846679f4181beb243_44927730 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

			<form class="pure-form pure-form-stacked" action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
permissionsList">
				<legend>Opcje wyszukiwania</legend>
				<fieldset>
					<input type="text" placeholder="Imię użytkownika" name="wyszukiwanie_nazwa_uzytkownika" value="<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->wyszukiwanie_nazwa_uzytkownika;?>
" /><br />
					<button type="submit">Filtruj</button>
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
/* {block 'bottom'} */
class Block_614646185679f4181bf4259_01136911 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<div>
					<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addPermissionsNew" class="button primary">Dodaj nową role dla użytkownika</a><br /><br />
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-12-medium">

			<table id="tab_order">
				<thead>
					<tr>
						<th>Id nadawania roli</th>
						<th>Imię i nazwisko użytkownika</th>
						<th>Nazwa roli</th>
						<th>Data nadania roli</th>
						<th>Data odebrania roli</th>
						<th>Opcje</th>
					</tr>
				</thead>
				<tbody>
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['permissions']->value, 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
					<tr><td><?php echo $_smarty_tpl->tpl_vars['p']->value["id_nadania_roli"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["nazwa_uzytkownika"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["nazwa_roli"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["data_nadania"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["data_odebrania"];?>
</td><td><!--<a class="button-small pure-button button-secondary" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderEdit/<?php echo $_smarty_tpl->tpl_vars['p']->value['id_nadania_roli'];?>
">Edytuj</a>&nbsp;<a class="button-small pure-button button-warning" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderStatusEdit/<?php echo $_smarty_tpl->tpl_vars['o']->value['id_zgloszenia'];?>
">Zmień status</a>--></td></tr>
					<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

				</tbody>
			</table>

			</div>
		</div>
	</div>
</section>

<?php
}
}
/* {/block 'bottom'} */
}
