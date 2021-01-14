<?php /* Smarty version Smarty-3.1.21-dev, created on 2021-01-14 13:26:05
         compiled from "templates\prijava.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12110553336000385df2ccb5-55366331%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5a1288139059bf00ab8e42d8aca1c58a659442cf' => 
    array (
      0 => 'templates\\prijava.tpl',
      1 => 1610620400,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12110553336000385df2ccb5-55366331',
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
  'unifunc' => 'content_6000385e911ef3_63635984',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_6000385e911ef3_63635984')) {function content_6000385e911ef3_63635984($_smarty_tpl) {?><form method="post" id="form-prijava" novalidate action=<?php echo $_smarty_tpl->tpl_vars['self']->value;?>
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
