<?php
/* Smarty version 3.1.31, created on 2025-05-15 21:11:43
  from "tpl_body:16" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_68263c6f3eef46_59789003',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '227252b7eb9e6523479cb6b15b7e203722468b14' => 
    array (
      0 => 'tpl_body:16',
      1 => '1747336192',
      2 => 'tpl_body',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68263c6f3eef46_59789003 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_global_content')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.global_content.php';
if (!is_callable('smarty_function_title')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.title.php';
echo smarty_function_global_content(array('name'=>"a_header"),$_smarty_tpl);?>

	
	<article id="main">
	    <header class="special container">
			<span class="icon solid fa-chart-bar"></span>
			<h2><strong><?php echo smarty_function_title(array(),$_smarty_tpl);?>
</strong></h2>
			<p><?php CMS_Content_Block::smarty_internal_fetch_contentblock(array(),$_smarty_tpl); ?></p>
		</header>
    </article>

<?php echo smarty_function_global_content(array('name'=>"a_footer"),$_smarty_tpl);
}
}
