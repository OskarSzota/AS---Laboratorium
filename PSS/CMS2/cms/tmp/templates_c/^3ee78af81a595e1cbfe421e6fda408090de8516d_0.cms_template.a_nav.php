<?php
/* Smarty version 3.1.31, created on 2025-05-15 21:11:43
  from "cms_template:a_nav" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_68263c6f5b4981_86320370',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3ee78af81a595e1cbfe421e6fda408090de8516d' => 
    array (
      0 => 'cms_template:a_nav',
      1 => '1747335498',
      2 => 'cms_template',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68263c6f5b4981_86320370 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->smarty->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'Nav_menu' => 
  array (
    'compiled_filepath' => 'C:\\xampp\\htdocs\\cms\\tmp\\templates_c\\^3ee78af81a595e1cbfe421e6fda408090de8516d_0.cms_template.a_nav.php',
    'uid' => '3ee78af81a595e1cbfe421e6fda408090de8516d',
    'call_name' => 'smarty_template_function_Nav_menu_44273130068263c6f582cf1_44420910',
  ),
));
?>


<?php if (isset($_smarty_tpl->tpl_vars['nodes']->value)) {
$_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'Nav_menu', array('data'=>$_smarty_tpl->tpl_vars['nodes']->value,'depth'=>0), true);?>

<?php }
}
/* smarty_template_function_Nav_menu_44273130068263c6f582cf1_44420910 */
if (!function_exists('smarty_template_function_Nav_menu_44273130068263c6f582cf1_44420910')) {
function smarty_template_function_Nav_menu_44273130068263c6f582cf1_44420910($_smarty_tpl,$params) {
$params = array_merge(array('depth'=>1), $params);
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}?>
<ul>
  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['data']->value, 'node');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['node']->value) {
?>
      <li<?php if (isset($_smarty_tpl->tpl_vars['node']->value->children)) {?> class="submenu"<?php }?>>
        <a href="<?php echo $_smarty_tpl->tpl_vars['node']->value->url;?>
">
            <?php echo $_smarty_tpl->tpl_vars['node']->value->menutext;?>

        </a>
        <?php if (isset($_smarty_tpl->tpl_vars['node']->value->children)) {?>
          <?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'Nav_menu', array('data'=>$_smarty_tpl->tpl_vars['node']->value->children,'depth'=>$_smarty_tpl->tpl_vars['depth']->value+1), true);?>

        <?php }?>
      </li>
  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
?>

</ul>
<?php
}}
/*/ smarty_template_function_Nav_menu_44273130068263c6f582cf1_44420910 */
}
