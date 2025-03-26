<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:48:55
  from "C:\xampp\htdocs\php_09_bd\app\views\AddOrderView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f3f87501933_82479915',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'eae75f641e57da1219533b5e9154ac634cec96eb' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\AddOrderView.tpl',
      1 => 1738489734,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f3f87501933_82479915 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_150757228679f3f87500f25_51467854', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_150757228679f3f87500f25_51467854 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
                <form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addOrderSave" method="post">
	                <fieldset>
		                <legend>Dane osoby</legend><br />
		                <div>
                            <label for="addorder_topic">Temat</label>
                            <input id="addorder_topic" type="text" placeholder="Temat" name="addorder_topic" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_topic;?>
">
                        </div>
                        <br />
                        <div>
                            <label for="addorder_description">Opis</label>
                            <input id="addorder_description" type="text" placeholder="Opis" name="addorder_description" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_description;?>
">
                        </div>
                        <br />
		                <div>
			                <input type="submit" value="Zapisz" class="button primary"/>
			                <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderList" class="button">Powrót</a>
		                </div>
	                </fieldset>
                    <input type="hidden" name="addorder_id" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_id;?>
">
                    <input type="hidden" name="addorder_status" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_status;?>
">
                    <input type="hidden" name="addorder_user" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_user;?>
">
                    <input type="hidden" name="addorder_create_date" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_create_date;?>
">
                    <input type="hidden" name="addorder_modify_date" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addorder_modify_date;?>
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
