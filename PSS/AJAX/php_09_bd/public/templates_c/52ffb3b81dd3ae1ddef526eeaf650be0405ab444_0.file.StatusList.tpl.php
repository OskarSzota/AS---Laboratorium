<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:57:09
  from "C:\xampp\htdocs\php_09_bd\app\views\StatusList.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f417576a7d3_32475299',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '52ffb3b81dd3ae1ddef526eeaf650be0405ab444' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\StatusList.tpl',
      1 => 1738490228,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f417576a7d3_32475299 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1580485185679f4175762677_45081908', 'top');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1292276971679f417576a391_54682990', 'bottom');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1580485185679f4175762677_45081908 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
statusList">
					<legend>Opcje wyszukiwania</legend>
						<fieldset>
							<input type="text" placeholder="Nazwa statusu" name="wyszukiwanie_nazwa_statusu" value="<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->wyszukiwanie_nazwa_statusu;?>
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
class Block_1292276971679f417576a391_54682990 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<section class="main style1">
	<div class="container">
<div class="row">
	<div class="col-6 col-12-medium">
		<div>
			<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addStatusNew" class="button primary">Dodaj nowy status</a><br /><br />
		</div>
	</div>
</div>

<div class="row">
	<div class="col-12 col-12-medium">
		<section>
			<div class="table-wrapper">
				<table id="tab_status">
				<thead>
					<tr>
						<th>Id status</th>
						<th>Status</th>
						<th>Opcje</th>
					</tr>
				</thead>
				<tbody>
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['status']->value, 's');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['s']->value) {
?>
				<tr><td><?php echo $_smarty_tpl->tpl_vars['s']->value["id_statusu"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['s']->value["nazwa_statusu"];?>
</td><td><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
statusEdit/<?php echo $_smarty_tpl->tpl_vars['s']->value['id_statusu'];?>
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
		</section>
	</div>
</div>
</div>
</section>
<?php
}
}
/* {/block 'bottom'} */
}
