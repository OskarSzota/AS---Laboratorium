<?php
/* Smarty version 4.5.4, created on 2024-12-27 10:27:07
  from 'C:\xampp\htdocs\php_05b_namespaces\app\views\MenuView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_676e72ebd9ad92_57653611',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cfb6f8856047226d8cddef366341f5fb138b4302' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_05b_namespaces\\app\\views\\MenuView.tpl',
      1 => 1735291586,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_676e72ebd9ad92_57653611 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1501001773676e72ebd0a7c2_22008287', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'content'} */
class Block_1501001773676e72ebd0a7c2_22008287 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1501001773676e72ebd0a7c2_22008287',
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
