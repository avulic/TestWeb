<?php /* Smarty version Smarty-3.1.21-dev, created on 2019-06-11 14:42:42
         compiled from "templates/reset.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2088001135cffa1c2419647-52101691%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0519f170021ae4b473ed4291226dbf6c5edd5fb7' => 
    array (
      0 => 'templates/reset.tpl',
      1 => 1559862579,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2088001135cffa1c2419647-52101691',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'self' => 0,
    'greskaPoruka' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5cffa1c2429713_56916187',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5cffa1c2429713_56916187')) {function content_5cffa1c2429713_56916187($_smarty_tpl) {?><form method="post" id="form1" novalidate action=<?php echo $_smarty_tpl->tpl_vars['self']->value;?>
>
    <div class="kontener">
        <?php if (isset($_smarty_tpl->tpl_vars['greskaPoruka']->value)&&!empty($_smarty_tpl->tpl_vars['greskaPoruka']->value['korisnickoIme'])) {?>
            <div class=""><p class="greska-poruka"><?php echo $_smarty_tpl->tpl_vars['greskaPoruka']->value['korisnickoIme'];?>
</p></div>
        <?php }?>
        <label class="labela" for="korime"><b>Korisničko ime</b></label>
        <input id="korime" type="text" placeholder="Unesite korisničko ime" name="korime" maxlength="20">

        <button name="resetLoinke" class="labela">Zatrazi novu lozinku</button>
        <span name="submit" class="labela" onclick="Javascript:window.location.href = 'prijava.php';" ><a href="prijava.php">Odustani</a></span>
    </div>
</form><?php }} ?>
