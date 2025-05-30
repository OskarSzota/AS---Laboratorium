<?php
/* Smarty version 3.1.31, created on 2025-05-30 18:47:07
  from "cms_template:a_news_summary" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_6839e10b5f16f5_87955309',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd215feecc76d76024c97e4282dba6312fdea58d5' => 
    array (
      0 => 'cms_template:a_news_summary',
      1 => '1748622593',
      2 => 'cms_template',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6839e10b5f16f5_87955309 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_modifier_cms_date_format')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\modifier.cms_date_format.php';
if (!is_callable('smarty_modifier_cms_escape')) require_once 'C:\\xampp\\htdocs\\cms\\lib\\plugins\\modifier.cms_escape.php';
?>
<!-- Start News Display Template -->

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['items']->value, 'entry');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['entry']->value) {
?>
<div class="NewsSummary">

<?php if ($_smarty_tpl->tpl_vars['entry']->value->postdate) {?>
	<div class="NewsSummaryPostdate">
		<?php echo smarty_modifier_cms_date_format($_smarty_tpl->tpl_vars['entry']->value->postdate);?>

	</div>
<?php }?>

<div class="NewsSummaryLink">
<a href="<?php echo $_smarty_tpl->tpl_vars['entry']->value->moreurl;?>
"><?php echo smarty_modifier_cms_escape($_smarty_tpl->tpl_vars['entry']->value->title);?>
</a>
</div>

<?php if ($_smarty_tpl->tpl_vars['entry']->value->summary) {?>
	<div class="NewsSummarySummary">
		<?php echo $_smarty_tpl->tpl_vars['entry']->value->summary;?>

	</div>

	<div class="NewsSummaryMorelink">
		[<?php echo $_smarty_tpl->tpl_vars['entry']->value->morelink;?>
]
	</div>

<?php } elseif ($_smarty_tpl->tpl_vars['entry']->value->content) {?>
	<div class="NewsSummaryContent">
		<?php echo $_smarty_tpl->tpl_vars['entry']->value->content;?>

	</div>

  <div class="NewsSummaryMorelink">
		[<?php echo $_smarty_tpl->tpl_vars['entry']->value->morelink;?>
]
	</div>
<?php }?>
<br>
<br>
</div>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>


<?php if ($_smarty_tpl->tpl_vars['pagecount']->value > 1) {?>
  <p>
<?php if ($_smarty_tpl->tpl_vars['pagenumber']->value > 1) {
echo $_smarty_tpl->tpl_vars['firstpage']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['prevpage']->value;?>
&nbsp;
<?php }
echo $_smarty_tpl->tpl_vars['pagetext']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['pagenumber']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['oftext']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['pagecount']->value;?>

<?php if ($_smarty_tpl->tpl_vars['pagenumber']->value < $_smarty_tpl->tpl_vars['pagecount']->value) {?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['nextpage']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['lastpage']->value;?>

<?php }?>
</p>
<?php }?>
<!-- End News Display Template --><?php }
}
