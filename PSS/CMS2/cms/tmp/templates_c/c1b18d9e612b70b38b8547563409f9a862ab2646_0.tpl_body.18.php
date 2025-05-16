<?php
/* Smarty version 3.1.31, created on 2025-05-15 21:11:45
  from "tpl_body:18" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_68263c719be388_42315979',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c1b18d9e612b70b38b8547563409f9a862ab2646' => 
    array (
      0 => 'tpl_body:18',
      1 => '1747336234',
      2 => 'tpl_body',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68263c719be388_42315979 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_function_global_content')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.global_content.php';
if (!is_callable('smarty_function_title')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\function.title.php';
echo smarty_function_global_content(array('name'=>"a_header"),$_smarty_tpl);?>

	
	<article id="main">
	    <header class="special container">
			<h2><strong><?php echo smarty_function_title(array(),$_smarty_tpl);?>
</strong></h2>
			<p><?php CMS_Content_Block::smarty_internal_fetch_contentblock(array(),$_smarty_tpl); ?></p>
		</header>
    </article>

<?php echo smarty_function_global_content(array('name'=>"a_footer"),$_smarty_tpl);
}
}
