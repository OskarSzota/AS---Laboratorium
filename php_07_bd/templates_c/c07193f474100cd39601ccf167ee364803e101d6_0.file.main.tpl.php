<?php
/* Smarty version 3.1.30, created on 2025-01-06 09:39:59
  from "C:\xampp\htdocs\php_07_bd\app\views\templates\main.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_677b96df9cdff2_82766956',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c07193f474100cd39601ccf167ee364803e101d6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\php_07_bd\\app\\views\\templates\\main.tpl',
      1 => 1736152798,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_677b96df9cdff2_82766956 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_description']->value)===null||$tmp==='' ? "Opis domyślny" : $tmp);?>
">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title><?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_title']->value)===null||$tmp==='' ? "Tytuł domyślny" : $tmp);?>
</title>

	<link rel="shortcut icon" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/images/gt_favicon.png">
	
	<link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/css/font-awesome.min.css">

	<!-- Custom styles for our template -->
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/css/bootstrap-theme.css" media="screen" >
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/css/main.css">

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<?php echo '<script'; ?>
 src="assets/js/html5shiv.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="assets/js/respond.min.js"><?php echo '</script'; ?>
>
	<![endif]-->
</head>

<body class="home">
	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top headroom" >
		<div class="container">
			<div class="navbar-header">
				<!-- Button for smallest screens -->
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
				<a class="navbar-brand" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/images/logo.png" alt="Progressus HTML5 template"></a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li class="active"><a href="#"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_title']->value)===null||$tmp==='' ? "Lista zawierająca dane osobowe" : $tmp);?>
</a></li>
					<!--<li><a href="about.html">About</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">More Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="sidebar-left.html">Left Sidebar</a></li>
							<li class="active"><a href="sidebar-right.html">Right Sidebar</a></li>
						</ul>
					</li>
					<li><a href="contact.html">Contact</a></li>-->
					<li><a class="btn" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
personList">LISTA</a></li>
					<li><a class="btn" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
loginShow">ZALOGUJ</a></li>
					<li><a class="btn" href="<?php echo $_smarty_tpl->tpl_vars['conf']->value->action_url;?>
logout">WYLOGUJ</a></li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div> 
	<!-- /.navbar -->

	<!-- Header -->
	<header id="head">
		<div class="container">
			<div class="row">
				<h1 class="lead">Lista osobowa</h1>
				<p class="tagline"><?php echo (($tmp = @$_smarty_tpl->tpl_vars['page_description']->value)===null||$tmp==='' ? "Lista zawierająca dane osobowe" : $tmp);?>
</p>
				
			</div>
		</div>
	</header>
	<!-- /Header -->

	<!-- Intro -->
	<!--<div class="container text-center">
		<br> <br>
		<h2 class="thin">The best place to tell people why they are here</h2>
		<p class="text-muted">
			The difference between involvement and commitment is like an eggs-and-ham breakfast:<br> 
			the chicken was involved; the pig was committed.
		</p>
	</div>-->
	<!-- /Intro-->

	<!-- container -->
	<div class="container">

		<h2 class="text-center top-space">Lista osobowa</h2>
		<br>

		<div class="row">
			<div class="col-sm-12">
				<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1164251810677b96df9cc167_39642162', 'top');
?>

			</div>
		</div>

		<div class="row">
			<div class="col-sm-12">
				<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_762448656677b96df9ccb20_40713913', 'content');
?>

			</div>
		</div> <!-- /row -->


</div>	<!-- /container -->


	<footer id="footer" class="top-space">

		<div class="footer2">
			<div class="container">
				<div class="row">
					
					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="simplenav">
								<a href="#">Lista osobowa</a>
							</p>
						</div>
					</div>

					<div class="col-md-6 widget">
						<div class="widget-body">
							<p class="text-right">
								Copyright &copy; 2024, Oskar Szota. Designed by <a href="http://gettemplate.com/" rel="designer">gettemplate</a> 
							</p>
						</div>
					</div>

				</div> <!-- /row of widgets -->
			</div>
		</div>

	</footer>	
		




	<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
	<?php echo '<script'; ?>
 src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/js/headroom.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/js/jQuery.headroom.min.js"><?php echo '</script'; ?>
>
	<?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['conf']->value->app_url;?>
/assets/js/template.js"><?php echo '</script'; ?>
>
</body>
</html><?php }
/* {block 'top'} */
class Block_1164251810677b96df9cc167_39642162 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'top'} */
/* {block 'content'} */
class Block_762448656677b96df9ccb20_40713913 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
}
}
/* {/block 'content'} */
}
