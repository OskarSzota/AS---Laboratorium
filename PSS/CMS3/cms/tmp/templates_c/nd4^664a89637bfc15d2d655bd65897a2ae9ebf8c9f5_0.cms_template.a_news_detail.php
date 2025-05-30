<?php
/* Smarty version 3.1.31, created on 2025-05-30 19:04:19
  from "cms_template:a_news_detail" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_6839e51327c0c6_68489751',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '664a89637bfc15d2d655bd65897a2ae9ebf8c9f5' => 
    array (
      0 => 'cms_template:a_news_detail',
      1 => '1748555829',
      2 => 'cms_template',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6839e51327c0c6_68489751 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_cms_escape')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\modifier.cms_escape.php';
if (!is_callable('smarty_modifier_cms_date_format')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\modifier.cms_date_format.php';
?>
<h3 id="NewsPostDetailTitle"><?php echo smarty_modifier_cms_escape($_smarty_tpl->tpl_vars['entry']->value->title,'htmlall');?>
</h3>

<?php if ($_smarty_tpl->tpl_vars['entry']->value->postdate) {?>
	<div id="NewsPostDetailDate">
		<?php echo smarty_modifier_cms_date_format($_smarty_tpl->tpl_vars['entry']->value->postdate);?>

	</div>
<?php }?>

<hr id="NewsPostDetailHorizRule" />

<?php if ($_smarty_tpl->tpl_vars['entry']->value->summary) {?>
	<div id="NewsPostDetailSummary">
		<strong>
			<?php echo $_smarty_tpl->tpl_vars['entry']->value->summary;?>

		</strong>
	</div>
<?php }?>

<div id="NewsPostDetailContent">
	<?php echo $_smarty_tpl->tpl_vars['entry']->value->content;?>

</div>

<?php if ($_smarty_tpl->tpl_vars['return_url']->value != '') {?>
<div id="NewsPostDetailReturnLink"><?php echo $_smarty_tpl->tpl_vars['return_url']->value;
if ($_smarty_tpl->tpl_vars['category_name']->value != '') {?> - <?php echo $_smarty_tpl->tpl_vars['category_link']->value;
}?></div>
<?php }
}
}
