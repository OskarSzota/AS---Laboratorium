<?php
/* Smarty version 4.5.4, created on 2024-11-29 14:47:36
  from 'C:\xampp\htdocs\php_05_kontroler_glowny\app\calc\CalcView.html' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.4',
  'unifunc' => 'content_6749c5f820ef40_00710584',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ca17c6781b740e34422f6c15370b5ae158595bb3' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_05_kontroler_glowny\\app\\calc\\CalcView.html',
      1 => 1732887827,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6749c5f820ef40_00710584 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_11466131686749c5f8201206_60332360', 'content');
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ($_smarty_tpl->tpl_vars['conf']->value->root_path).("/templates/main.html"));
}
/* {block 'content'} */
class Block_11466131686749c5f8201206_60332360 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_11466131686749c5f8201206_60332360',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div>
<div>
	<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
calcCompute" method="post">
		<fieldset>
			<div class="row">
				<div class="col-sm-4">
					<label for="kwota">Kwota</label>
					<input class="form-control" id="kwota" type="text" placeholder="Kwota" name="kwota" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->kwota;?>
">
				</div>
				<div class="col-sm-4">
					<label for="miesiac">Miesiac</label>
					<input class="form-control" id="miesiac" type="text" placeholder="Miesiac" name="miesiac" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->miesiac;?>
">
				</div>
				<div class="col-sm-4">
					<label for="oprocentowanie">Oprocentowanie</label>
					<input class="form-control" id="oprocentowanie" type="text" placeholder="Oprocentowanie" name="oprocentowanie" value="<?php echo $_smarty_tpl->tpl_vars['form']->value->oprocentowanie;?>
">
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-12 text-right">
					<button type="submit" class="btn btn-action">Oblicz</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>

<div>

<?php if ($_smarty_tpl->tpl_vars['msgs']->value->isError()) {?>
	<h4>Wystąpiły błędy: </h4>
	<ol class="err">
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['msgs']->value->getErrors(), 'err');
$_smarty_tpl->tpl_vars['err']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['err']->value) {
$_smarty_tpl->tpl_vars['err']->do_else = false;
?>
	<li><?php echo $_smarty_tpl->tpl_vars['err']->value;?>
</li>
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</ol>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['msgs']->value->isInfo()) {?>
	<h4>Informacje: </h4>
	<ol class="inf">
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['msgs']->value->getInfos(), 'inf');
$_smarty_tpl->tpl_vars['inf']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['inf']->value) {
$_smarty_tpl->tpl_vars['inf']->do_else = false;
?>
	<li><?php echo $_smarty_tpl->tpl_vars['inf']->value;?>
</li>
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</ol>
<?php }?>

<?php if ((isset($_smarty_tpl->tpl_vars['res']->value->result))) {?>
	<h4>Wynik</h4>
	<p class="res">
	<?php echo $_smarty_tpl->tpl_vars['res']->value->result;?>

	</p>
<?php }?>

</div>
</div>

<?php
}
}
/* {/block 'content'} */
}
