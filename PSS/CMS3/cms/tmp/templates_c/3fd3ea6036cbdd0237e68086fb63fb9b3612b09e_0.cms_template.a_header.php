<?php
/* Smarty version 3.1.31, created on 2025-05-30 18:25:08
  from "cms_template:a_header" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_6839dbe4064df3_62076597',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3fd3ea6036cbdd0237e68086fb63fb9b3612b09e' => 
    array (
      0 => 'cms_template:a_header',
      1 => '1747334752',
      2 => 'cms_template',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6839dbe4064df3_62076597 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_cms_get_language')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.cms_get_language.php';
if (!is_callable('smarty_function_title')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.title.php';
if (!is_callable('smarty_function_sitename')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.sitename.php';
if (!is_callable('smarty_function_metadata')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.metadata.php';
if (!is_callable('smarty_function_cms_stylesheet')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.cms_stylesheet.php';
echo CMS_Content_Block::smarty_fetch_pagedata(array(),$_smarty_tpl);?>
<!doctype html>
<html lang="<?php echo smarty_function_cms_get_language(array(),$_smarty_tpl);?>
">

<head>
	<title><?php echo smarty_function_title(array(),$_smarty_tpl);?>
 - <?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
</title>
	<?php echo smarty_function_metadata(array(),$_smarty_tpl);?>

	<?php echo smarty_function_cms_stylesheet(array(),$_smarty_tpl);?>

    <link rel="stylesheet" href="template/assets/css/main.css" />
    <noscript><link rel="stylesheet" href="template/assets/css/noscript.css" /></noscript>
</head>

<body>
	<header id="header">
		<h1 id="logo"><?php echo smarty_function_sitename(array(),$_smarty_tpl);?>
</h1>
		<nav id="nav">
		    <?php echo Navigator::function_plugin(array('template'=>"a_nav"),$_smarty_tpl);?>

	    </nav>
	</header><?php }
}
