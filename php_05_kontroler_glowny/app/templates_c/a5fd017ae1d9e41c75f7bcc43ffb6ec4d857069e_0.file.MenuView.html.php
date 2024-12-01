<?php
/* Smarty version 4.5.4, created on 2024-12-01 19:22:01
  from 'C:\xampp\htdocs\php_05_kontroler_glowny\app\menu\MenuView.html' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_674ca9491e23e8_37167034',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a5fd017ae1d9e41c75f7bcc43ffb6ec4d857069e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_05_kontroler_glowny\\app\\menu\\MenuView.html',
      1 => 1733077319,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_674ca9491e23e8_37167034 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1402806460674ca9491dffe5_07131747', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ($_smarty_tpl->tpl_vars['conf']->value->root_path).("/templates/main.html"));
}
/* {block 'content'} */
class Block_1402806460674ca9491dffe5_07131747 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1402806460674ca9491dffe5_07131747',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



<div>
	<div class="row">
		<div class="col-sm-4">
		</div>
		<div class="col-sm-4">
			<center>
			<h3>Menu wyboru funkcji:</h3>
			<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
calcView" class="btn btn-action">Kalkulator</a></center>
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
