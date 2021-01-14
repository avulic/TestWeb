<?php /* Smarty version Smarty-3.1.21-dev, created on 2019-06-11 04:38:17
         compiled from "templates/prijava.tpl" */ ?>
<?php /*%%SmartyHeaderCode:566727235cf66b88e4c247-78571563%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f9ae52c0d5d70520b97cd1fda00fb99e161cbea2' => 
    array (
      0 => 'templates/prijava.tpl',
      1 => 1559924758,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '566727235cf66b88e4c247-78571563',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5cf66b89184685_06634645',
  'variables' => 
  array (
    'self' => 0,
    'greskaPoruka' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5cf66b89184685_06634645')) {function content_5cf66b89184685_06634645($_smarty_tpl) {?><form method="post" id="form-prijava" novalidate action=<?php echo $_smarty_tpl->tpl_vars['self']->value;?>
>
    <div class="kontener-obrazac">
        <h2>Prijavite se</h2>
        <hr>
        <div>
            <?php if (isset($_smarty_tpl->tpl_vars['greskaPoruka']->value)&&!empty($_smarty_tpl->tpl_vars['greskaPoruka']->value['prijava'])) {?>
                <div class=""><p class="greska-poruka"><?php echo $_smarty_tpl->tpl_vars['greskaPoruka']->value['prijava'];?>
</p></div>
            <?php }?>
            <label class="labela" for="korime"><b>Korisničko ime</b></label>
            <input id="korime" class="input" type="text" placeholder="Unesite korisničko ime" name="korime" maxlength="20" value="<?php if (isset($_COOKIE['korIme'])) {
echo $_COOKIE['korIme'];
}?>">
    
            <label class="labela" for="zaporka"><b>Zaporka</b></label>
            <input id="zaporka" class="input" type="password" placeholder="Unesite zaporku" name="zaporka" required>
    
            <button name="submit" class="labela button" type="submit">Prijavi se</button>
            <span><a href="reset.php">Zaboravio sam lozinku</a></span><br>
            <label>
                <input id="zapamti" class="clear-input" type="checkbox" checked="checked" name="zapamti"> Zapamti me
            </label>
            
        </div>
    </div>
</form>




<?php }} ?>
