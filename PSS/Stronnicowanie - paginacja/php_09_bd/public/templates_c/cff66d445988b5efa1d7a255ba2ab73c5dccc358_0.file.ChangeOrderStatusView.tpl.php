<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:54:31
  from "C:\xampp\htdocs\php_09_bd\app\views\ChangeOrderStatusView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f40d738b175_38707164',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cff66d445988b5efa1d7a255ba2ab73c5dccc358' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\ChangeOrderStatusView.tpl',
      1 => 1738490068,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f40d738b175_38707164 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_873300582679f40d738acb1_63614676', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_873300582679f40d738acb1_63614676 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

                <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderStatusSave" method="post">
	                <fieldset>
		            <legend>Zmiana statusu</legend><br />
                        <div>
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
                        <br />
		                <div>
			                <input type="submit" value="Zapisz" class="button primary"/>
			                <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderList" class="button">Powrót</a>
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

            </div>
		</div>
	</div>
</section>


<?php
}
}
/* {/block 'top'} */
}
