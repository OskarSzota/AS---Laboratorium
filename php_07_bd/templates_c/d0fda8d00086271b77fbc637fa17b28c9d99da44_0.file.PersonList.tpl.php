<?php
/* Smarty version 3.1.30, created on 2025-01-06 10:02:35
  from "C:\xampp\htdocs\php_07_bd\app\views\PersonList.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_677b9c2bce7842_10395660',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd0fda8d00086271b77fbc637fa17b28c9d99da44' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_07_bd\\app\\views\\PersonList.tpl',
      1 => 1736153858,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_677b9c2bce7842_10395660 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1616902969677b9c2bcdcb26_46770630', 'top');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_161598234677b9c2bce7208_37970135', 'content');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1616902969677b9c2bcdcb26_46770630 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div class="row">
<div class="col-sm-12">
<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
personList">
	<legend>Opcje wyszukiwania</legend>
	<fieldset>
		<input type="text" placeholder="nazwisko" name="sf_surname" value="<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->surname;?>
" />
		<button type="submit" class="btn btn-primary">Filtruj</button>
	</fieldset>
</form>
</div>
</div>	

<div class="row">
	<div class="col-sm-12" style="height: 40px;">
	</div>
</div>

<?php
}
}
/* {/block 'top'} */
/* {block 'content'} */
class Block_161598234677b9c2bce7208_37970135 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div class="row">
<div class="col-sm-12">
<a class="btn btn-action" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
personNew">Dodaj nową osobę</a>
</div>
</div>	

<div class="row">
	<div class="col-sm-12" style="height: 20px;">
	</div>
</div>

<div class="row">
<div class="col-sm-12">
<table id="tab_people" style="width:100%">
<thead>
	<tr>
		<th>imię</th>
		<th>nazwisko</th>
		<th>data ur.</th>
		<th>miejsce zamieszkania</th>
		<th>opcje</th>
	</tr>
</thead>
<tbody>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['people']->value, 'p');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['p']->value) {
?>
<tr><td><?php echo $_smarty_tpl->tpl_vars['p']->value["name"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["surname"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["birthdate"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['p']->value["address"];?>
</td><td><a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
personEdit&id=<?php echo $_smarty_tpl->tpl_vars['p']->value['idperson'];?>
">Edytuj</a>&nbsp;<a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
personDelete&id=<?php echo $_smarty_tpl->tpl_vars['p']->value['idperson'];?>
">Usuń</a></td></tr>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

</tbody>
</table>
</div>
</div>	

<?php
}
}
/* {/block 'content'} */
}
