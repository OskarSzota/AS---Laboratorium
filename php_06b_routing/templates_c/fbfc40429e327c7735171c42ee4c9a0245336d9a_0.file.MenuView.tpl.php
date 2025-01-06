<?php
/* Smarty version 4.5.4, created on 2025-01-04 00:28:51
  from 'C:\xampp\htdocs\php_06_ochrona_dostepu\app\views\MenuView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_677872b3cd8895_13924135',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fbfc40429e327c7735171c42ee4c9a0245336d9a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_06_ochrona_dostepu\\app\\views\\MenuView.tpl',
      1 => 1735946831,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_677872b3cd8895_13924135 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1799080164677872b3cd4c21_45156457', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "main.tpl");
}
/* {block 'content'} */
class Block_1799080164677872b3cd4c21_45156457 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1799080164677872b3cd4c21_45156457',
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
