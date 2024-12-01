<?php
/* Smarty version 4.5.4, created on 2024-12-01 19:17:33
  from 'C:\xampp\htdocs\php_05_kontroler_glowny\app\menu\MenuView.html' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_674ca83dcbb948_99859083',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'dd8840fe9690ab2a057b067778a776043532f515' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_05_kontroler_glowny\\app\\menu\\MenuView.html',
      1 => 1733076955,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_674ca83dcbb948_99859083 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1411090722674ca83dc70739_48749618', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ($_smarty_tpl->tpl_vars['conf']->value->root_path).("/templates/main.html"));
}
/* {block 'content'} */
class Block_1411090722674ca83dc70739_48749618 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1411090722674ca83dc70739_48749618',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



<div>
	<div class="row">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4">
			<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
/app/ctrl.php?action=calcView">Kalkulator</a>
		</div>
		<div class="col-sm-4">
		</div>
	</div>
</div>

<?php
}
}
/* {/block 'content'} */
}
