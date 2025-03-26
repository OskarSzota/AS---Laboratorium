<?php
/* Smarty version 3.1.30, created on 2025-02-02 11:36:12
  from "C:\xampp\htdocs\php_09_bd\app\views\AddPermissionsView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f4a9c42dc83_37280101',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '38dcb3ae046d3499e731cec4c87139080c2296d3' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\AddPermissionsView.tpl',
      1 => 1738492570,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 2,
  ),
),false)) {
function content_679f4a9c42dc83_37280101 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_326758577679f4a9c42d622_92635469', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
$_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, true);
}
/* {block 'top'} */
class Block_1555103711679f4a9c42cf66_78165051 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="bottom-margin">
    <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addPermissionsSave" method="post" class="pure-form pure-form-aligned">
        <fieldset>
            <legend>Nadawanie ról użytkownikom</legend>

            <!-- Wybór użytkownika -->
            <div class="pure-control-group">
                <label for="addpermissions_user_id">Użytkownik</label>
            </div>

            <!-- Wybór roli -->
            <div class="pure-control-group">
                <label for="addpermissions_role_id">Rola</label>
            </div>

            <!-- Przyciski -->
            <div class="pure-controls">
                <input type="submit" class="pure-button pure-button-primary" value="Zapisz"/>
                <a class="pure-button button-secondary" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
permissionsList">Powrót</a>
            </div>
        </fieldset>
    </form>    
</div>
<?php
}
}
/* {/block 'top'} */
/* {block 'top'} */
class Block_326758577679f4a9c42d622_92635469 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<!--<div class="bottom-margin">
<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderStatusSave" method="post" class="pure-form pure-form-aligned">
	<fieldset>
		<legend>Zmiana statusu</legend>
        <div class="pure-control-group">
            <label for="changeorderstatus_status">Status</label>
            <select id="changeorderstatus_status" name="changeorderstatus_status">
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['statusList']->value, 'status');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['status']->value) {
?>
                    <option value="<?php echo $_smarty_tpl->tpl_vars['status']->value['id_statusu'];?>
" <?php if ($_smarty_tpl->tpl_vars['status']->value['id_statusu'] == $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_status) {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['status']->value['nazwa_statusu'];?>
</option>
                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

            </select>
        </div>
		<div class="pure-controls">
			<input type="submit" class="pure-button pure-button-primary" value="Zapisz"/>
			<a class="pure-button button-secondary" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderList">Powrót</a>
		</div>
	</fieldset>
    <input type="hidden" name="changeorderstatus_id" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_id;?>
">
    <input type="hidden" name="changeorderstatus_topic" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_topic;?>
">
    <input type="hidden" name="changeorderstatus_description" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_description;?>
">
    <input type="hidden" name="changeorderstatus_user" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_user;?>
">
    <input type="hidden" name="changeorderstatus_create_date" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_create_date;?>
">
    <input type="hidden" name="changeorderstatus_modify_date" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->changeorderstatus_modify_date;?>
">
</form>	
</div>-->



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1555103711679f4a9c42cf66_78165051', 'top', $this->tplIndex);
?>



<?php
}
}
/* {/block 'top'} */
}
