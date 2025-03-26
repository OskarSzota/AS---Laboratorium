<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:57:15
  from "C:\xampp\htdocs\php_09_bd\app\views\UserList.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f417b3c0686_62327914',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4bdb0d46417d7e7b465b4386c9fcf47e70fc5ff9' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\UserList.tpl',
      1 => 1738490117,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f417b3c0686_62327914 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1714376183679f417b3b6566_82561581', 'top');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_77140915679f417b3c0209_89553779', 'bottom');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1714376183679f417b3b6566_82561581 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

			<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
userList">
			<legend>Opcje wyszukiwania</legend>
				<fieldset>
				<input type="text" placeholder="Login" name="wyszukiwanie_login" value="<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->wyszukiwanie_login;?>
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
class Block_77140915679f417b3c0209_89553779 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

				<div>
					<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addUserNew" class="button primary">Dodaj nowego użytkownika</a><br /><br />
				</div>	
			</div>
		</div>	
		<div class="row">
			<div class="col-12 col-12-medium">
				<table id="tab_users">
					<thead>
							<tr>
							<th>Id użytkownika</th>
							<th>Login</th>
							<th>Hasło</th>
							<th>Imię</th>
							<th>Nazwisko</th>
							<th>Email</th>
							<th>Data utworzenia użytkownika</th>
							<th>Utworzony przez</th>
							<th>Opcje</th>
						</tr>
					</thead>
					<tbody>
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['users']->value, 'u');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['u']->value) {
?>
					<tr><td><?php echo $_smarty_tpl->tpl_vars['u']->value["id_uzytkownika"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["login"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["haslo"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["imie_uzytkownika"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["nazwisko_uzytkownika"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["email"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["data_utworzenia_uzytkownika"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['u']->value["utworzony_przez"];?>
</td><td><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
userEdit/<?php echo $_smarty_tpl->tpl_vars['u']->value['id_uzytkownika'];?>
" class="button primary small">Edytuj</a>&nbsp;<!--<a class="button-small pure-button button-warning" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
personDelete/<?php echo $_smarty_tpl->tpl_vars['p']->value['idperson'];?>
">Usuń</a>--></td></tr>
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
