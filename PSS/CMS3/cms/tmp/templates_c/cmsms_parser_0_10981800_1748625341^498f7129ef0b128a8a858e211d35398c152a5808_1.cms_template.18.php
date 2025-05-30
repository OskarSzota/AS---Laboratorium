<?php
/* Smarty version 3.1.31, created on 2025-05-30 19:15:41
  from "cms_template:18" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_6839e7bd3f2242_02353431',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '498f7129ef0b128a8a858e211d35398c152a5808' => 
    array (
      0 => 'cms_template:18',
      1 => '1747336234',
      2 => 'cms_template',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6839e7bd3f2242_02353431 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_global_content')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.global_content.php';
if (!is_callable('smarty_function_title')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.title.php';
echo smarty_function_global_content(array('name'=>"a_header"),$_smarty_tpl);?>

	
	<article id="main">
	    <header class="special container">
			<h2><strong><?php echo smarty_function_title(array(),$_smarty_tpl);?>
</strong></h2>
			<p></p>
		</header>
    </article>

<?php echo smarty_function_global_content(array('name'=>"a_footer"),$_smarty_tpl);
}
}
