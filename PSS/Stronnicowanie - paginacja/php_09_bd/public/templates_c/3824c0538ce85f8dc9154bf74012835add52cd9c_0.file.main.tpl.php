<?php
/* Smarty version 3.1.30, created on 2025-02-02 10:12:10
  from "C:\xampp\htdocs\php_09_bd\app\views\templates\main.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_679f36ea5d5512_84569750',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3824c0538ce85f8dc9154bf74012835add52cd9c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_09_bd\\app\\views\\templates\\main.tpl',
      1 => 1738487528,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_679f36ea5d5512_84569750 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">

<head>
	<meta charset="utf-8"/>
	<title>Helpdesk</title>
	<!--<link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css"
		integrity="sha384-nn4HPE8lTHyVtfCBi5yW9d20FjT8BJwUXyWZT9InLYax14RDjBj46LmSztkmNP9w" crossorigin="anonymous">
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/css/style.css">-->
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/css/noscript.css" /></noscript>
</head>

<body style="margin: 20px;">

	<section class="main style2">
		<div class="container">
			<div class="row">
				<div class="col-12 col-12-medium">
					<ul class="actions special">
						<?php if (isset($_smarty_tpl->tpl_vars['conf']->value->roles['Klient']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Klient'] || isset($_smarty_tpl->tpl_vars['conf']->value->roles['Operator']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Operator']) {?>
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderList" class="button scrolly">Zgłoszenia</a></li>
    					<?php }?>
	
						<?php if (isset($_smarty_tpl->tpl_vars['conf']->value->roles['Administrator']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Administrator']) {?>
    						<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
statusList" class="button scrolly">Statusy</a></li>
    						<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
userList" class="button scrolly">Użytkownicy</a></li>
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
permissionsList" class="button scrolly">Nadawanie ról</a></li>
						<?php }?>

						<?php if (count($_smarty_tpl->tpl_vars['conf']->value->roles) > 0) {?>
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
logout" class="button scrolly">Wyloguj</a></li>
						<?php } else { ?>	
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
loginShow" class="button scrolly">Zaloguj</a></li>
						<?php }?>
					</ul>
				</div>
			</div>
		</div>
	</section>

<!--<div class="">
	<?php if (isset($_smarty_tpl->tpl_vars['conf']->value->roles['Klient']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Klient'] || isset($_smarty_tpl->tpl_vars['conf']->value->roles['Operator']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Operator']) {?>
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
orderList" class="button scrolly">Zgłoszenia</a></li>
    <?php }?>
	
	<?php if (isset($_smarty_tpl->tpl_vars['conf']->value->roles['Administrator']) && $_smarty_tpl->tpl_vars['conf']->value->roles['Administrator']) {?>
    <li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
statusList" class="button scrolly">Statusy</a></li>
    <li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
userList" class="button scrolly">Użytkownicy</a></li>
	<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
permissionsList" class="button scrolly">Nadawanie ról</a></li>
	<?php }?>

	<?php if (count($_smarty_tpl->tpl_vars['conf']->value->roles) > 0) {?>
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
logout" class="button scrolly">Wyloguj</a></li>
	<?php } else { ?>	
		<li><a href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_root;?>
loginShow" class="button scrolly">Zaloguj</a></li>
	<?php }?>
</div>-->

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_939902311679f36ea5cc688_22581098', 'top');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_142290599679f36ea5d47f4_46324999', 'messages');
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_163886251679f36ea5d4ff2_70395223', 'bottom');
?>


<!-- Scripts -->
<?php echo '<script'; ?>
 src="assets/js/jquery.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="assets/js/jquery.scrolly.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="assets/js/browser.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="assets/js/breakpoints.min.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="assets/js/util.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 src="assets/js/main.js"><?php echo '</script'; ?>
>

</body>

</html><?php }
/* {block 'top'} */
class Block_939902311679f36ea5cc688_22581098 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
 <?php
}
}
/* {/block 'top'} */
/* {block 'messages'} */
class Block_142290599679f36ea5d47f4_46324999 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<?php if ($_smarty_tpl->tpl_vars['msgs']->value->isMessage()) {?>
<div class="messages bottom-margin">
	<ul>
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['msgs']->value->getMessages(), 'msg');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['msg']->value) {
?>
	<li class="msg <?php if ($_smarty_tpl->tpl_vars['msg']->value->isError()) {?>error<?php }?> <?php if ($_smarty_tpl->tpl_vars['msg']->value->isWarning()) {?>warning<?php }?> <?php if ($_smarty_tpl->tpl_vars['msg']->value->isInfo()) {?>info<?php }?>"><?php echo $_smarty_tpl->tpl_vars['msg']->value->text;?>
</li>
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

	</ul>
</div>
<?php }?>

<?php
}
}
/* {/block 'messages'} */
/* {block 'bottom'} */
class Block_163886251679f36ea5d4ff2_70395223 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>
 <?php
}
}
/* {/block 'bottom'} */
}
