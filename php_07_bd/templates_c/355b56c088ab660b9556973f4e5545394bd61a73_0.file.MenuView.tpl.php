<?php
/* Smarty version 4.5.4, created on 2025-01-05 12:05:24
  from 'C:\xampp\htdocs\php_06b_routing\app\views\MenuView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_677a677459a123_62403013',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '355b56c088ab660b9556973f4e5545394bd61a73' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_06b_routing\\app\\views\\MenuView.tpl',
      1 => 1736075122,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_677a677459a123_62403013 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_42351943677a67745960a1_44058605', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'content'} */
class Block_42351943677a67745960a1_44058605 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_42351943677a67745960a1_44058605',
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
calcShow" class="btn btn-action">Kalkulator</a></center>
		</div>
		<div class="col-sm-4">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12" style="height:100px;">
		</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
		<span>użytkownik: <?php echo $_smarty_tpl->tpl_vars['user']->value->login;?>
, rola: <?php echo $_smarty_tpl->tpl_vars['user']->value->role;?>
</span>
		</div>
	</div>
</div>

<?php
}
}
/* {/block 'content'} */
}
