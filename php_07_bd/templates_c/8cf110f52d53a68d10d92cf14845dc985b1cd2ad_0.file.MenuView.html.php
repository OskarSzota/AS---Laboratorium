<?php
/* Smarty version 4.5.4, created on 2024-12-20 20:37:23
  from 'C:\xampp\htdocs\php_05a_nowastruktura\app\views\MenuView.html' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_6765c773a8df96_05375795',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8cf110f52d53a68d10d92cf14845dc985b1cd2ad' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_05a_nowastruktura\\app\\views\\MenuView.html',
      1 => 1734723410,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6765c773a8df96_05375795 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_19325996276765c773a000b8_72838656', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.html");
}
/* {block 'content'} */
class Block_19325996276765c773a000b8_72838656 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_19325996276765c773a000b8_72838656',
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
