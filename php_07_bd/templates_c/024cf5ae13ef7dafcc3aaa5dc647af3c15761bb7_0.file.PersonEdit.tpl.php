<?php
/* Smarty version 3.1.30, created on 2025-01-06 10:03:18
  from "C:\xampp\htdocs\php_07_bd\app\views\PersonEdit.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_677b9c56ab2e07_30456458',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '024cf5ae13ef7dafcc3aaa5dc647af3c15761bb7' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_07_bd\\app\\views\\PersonEdit.tpl',
      1 => 1736153801,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_677b9c56ab2e07_30456458 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_484647938677b9c56ab2996_33560422', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_484647938677b9c56ab2996_33560422 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div class="row">
<div class="col-sm-4">
<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
personSave" method="post">
	<fieldset>
		<legend>Dane osoby</legend>
		<div style="margin-top: 10px;">
            <label for="name">imię</label>
            <input id="name" type="text" placeholder="imię" name="name" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->name;?>
">
        </div>
		<div style="margin-top: 10px;">
            <label for="surname">nazwisko</label>
            <input id="surname" type="text" placeholder="nazwisko" name="surname" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->surname;?>
">
        </div>
		<div style="margin-top: 10px;">
            <label for="birthdate">data ur.</label>
            <input id="birthdate" type="text" placeholder="data ur." name="birthdate" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->birthdate;?>
">
        </div>
        <div style="margin-top: 10px;">
            <label for="address">miejsce zamieszkania</label>
            <input id="address" type="text" placeholder="miejsce zamieszkania" name="address" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->address;?>
">
        </div>
		<div style="margin-top: 10px;">
			<input type="submit" class="btn btn-primary" value="Zapisz"/>
			<a class="btn" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
personList">Powrót</a>
		</div>
	</fieldset>
    <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->id;?>
">
</form>	
</div>
</div>

<?php
}
}
/* {/block 'top'} */
}
