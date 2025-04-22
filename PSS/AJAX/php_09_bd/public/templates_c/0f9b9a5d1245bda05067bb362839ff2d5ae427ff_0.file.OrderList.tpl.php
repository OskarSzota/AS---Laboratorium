<?php
/* Smarty version 3.1.30, created on 2025-03-26 13:05:59
  from "C:\xampp\htdocs\php_09_bd\app\views\OrderList.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_67e3eda73cd6d2_58462276',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0f9b9a5d1245bda05067bb362839ff2d5ae427ff' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\OrderList.tpl',
      1 => 1742990596,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:main.tpl' => 1,
  ),
),false)) {
function content_67e3eda73cd6d2_58462276 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_133155477067e3eda7035225_90397503', 'top');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_171854721067e3eda73cc664_23081091', 'bottom');
?>

<?php $_smarty_tpl->inheritance->endChild();
$_smarty_tpl->_subTemplateRender("file:main.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'top'} */
class Block_133155477067e3eda7035225_90397503 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

				<form action="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderList">
					<legend>Opcje wyszukiwania</legend>
					<fieldset>
						<input type="text" placeholder="Temat zgłoszenia" name="temat_zgloszenia" value="<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->temat_zgloszenia;?>
" /><br />
						<button type="submit">Filtruj</button>
					</fieldset>
				</form>

			</div>
		</div>
	</div>
</section>
	

<?php
}
}
/* {/block 'top'} */
/* {block 'bottom'} */
class Block_171854721067e3eda73cc664_23081091 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<section class="main style1">
	<div class="container">
		<div class="row">
			<div class="col-12 col-12-medium">

				<div>
					<a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
addOrderNew">Dodaj nowe zgłoszenie</a>
				</div>	
			</div>
		</div>

		<div class="row">
			<div class="col-12 col-12-medium">

			<table id="tab_order">
			<thead>
				<tr>
					<th>Id zgłoszenia</th>
					<th>Temat</th>
					<th>Opis</th>
					<th>Status</th>
					<th>Utworzone przez</th>
					<th>Data utworzenia</th>
					<th>Data modyfikacji</th>
					<th>Opcje</th>
				</tr>
			</thead>
			<tbody>
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['orders']->value, 'o');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['o']->value) {
?>
			<tr><td><?php echo $_smarty_tpl->tpl_vars['o']->value["id_zgloszenia"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['o']->value["temat_zgloszenia"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['o']->value["opis"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['o']->value["nazwa_statusu"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['o']->value["nazwa_uzytkownika"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['o']->value["data_utworzenia"];?>
</td><td><?php echo $_smarty_tpl->tpl_vars['o']->value["data_modyfikacji"];?>
</td><td><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderEdit/<?php echo $_smarty_tpl->tpl_vars['o']->value['id_zgloszenia'];?>
" class="button primary small">Edytuj</a><br /><br /><?php if (isset($_smarty_tpl->tpl_vars['conf']->value->roles['Operator']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Operator']) {?><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderStatusEdit/<?php echo $_smarty_tpl->tpl_vars['o']->value['id_zgloszenia'];?>
" class="button small">Zmień status</a><?php }?></td></tr>
			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

			</tbody>
			</table>

			</div>
		</div>

		<div class="row">
            <div class="col-12 col-12-medium">
                <div class="pagination">
                    <?php if ($_smarty_tpl->tpl_vars['currentPage']->value > 1) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderList?page=<?php echo $_smarty_tpl->tpl_vars['currentPage']->value-1;
if ($_smarty_tpl->tpl_vars['searchForm']->value->temat_zgloszenia) {?>&temat_zgloszenia=<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->temat_zgloszenia;
}?>" class="button small">« Poprzednia</a>
                    <?php }?>

                    Strona <?php echo $_smarty_tpl->tpl_vars['currentPage']->value;?>
 z <?php echo $_smarty_tpl->tpl_vars['totalPages']->value;?>


                    <?php if ($_smarty_tpl->tpl_vars['currentPage']->value < $_smarty_tpl->tpl_vars['totalPages']->value) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
orderList?page=<?php echo $_smarty_tpl->tpl_vars['currentPage']->value+1;
if ($_smarty_tpl->tpl_vars['searchForm']->value->temat_zgloszenia) {?>&temat_zgloszenia=<?php echo $_smarty_tpl->tpl_vars['searchForm']->value->temat_zgloszenia;
}?>" class="button small">Następna »</a>
                    <?php }?>
                </div>
            </div>
        </div>

	</div>
</section>

<?php
}
}
/* {/block 'bottom'} */
}
