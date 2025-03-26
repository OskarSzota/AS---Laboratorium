<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:56:43
  from "C:\xampp\htdocs\php_09_bd\app\views\AddStatusView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f415bc74c19_39499889',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '61ac0e9b7089f8c5f34d2f5752df664399b00176' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\AddStatusView.tpl',
      1 => 1738490180,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_679f415bc74c19_39499889 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1081965967679f415bc747f5_21903456', 'top');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_1081965967679f415bc747f5_21903456 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">
				<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addStatusSave" method="post">
					<fieldset>
					<legend>Dane statusu</legend><br />
						<div>
            				<label for="addstatus_name">Nazwa</label>
            				<input id="addstatus_name" type="text" placeholder="Nazwa" name="addstatus_name" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addstatus_name;?>
">
        				</div>
						<br />
						<div>
							<input type="submit" value="Zapisz" class="button primary"/>
							<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
statusList" class="button">Powrót</a>
						</div>
					</fieldset>
    				<input type="hidden" name="addstatus_id" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->addstatus_id;?>
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
