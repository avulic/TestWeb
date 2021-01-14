<?php /* Smarty version Smarty-3.1.21-dev, created on 2019-06-11 14:14:52
         compiled from "templates/registracija.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20457889985cf45752422ce0-35846122%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fc952b80775c8aa1f4b8578344df36fdd56487f1' => 
    array (
      0 => 'templates/registracija.tpl',
      1 => 1560225571,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20457889985cf45752422ce0-35846122',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5cf457524963b6_32779831',
  'variables' => 
  array (
    'self' => 0,
    'poruke' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5cf457524963b6_32779831')) {function content_5cf457524963b6_32779831($_smarty_tpl) {?><?php echo '<script'; ?>
 src="js/js.js"><?php echo '</script'; ?>
>
<form  method="POST" id="form-registracija" enctype="multipart/form-data" novalidate action=<?php echo $_smarty_tpl->tpl_vars['self']->value;?>
>
    <div class="kontener-obrazac">
        <div class="poruka-global"></div>
        <div class="poruka-datoteka">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['datoteka'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['datoteka'];?>

            <?php }?>
        </div>
        <label class="labela" for="imageUpload"><b>Avatar: </b></label>
        <div id="profile-container">
            <image id="profileImage" src="slike/avatar-default.png" />
        </div>
        <input id="imageUpload" type="file" name="imageUpload">

        <div class="poruka-prezime">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['prezime'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['prezime'];?>

            <?php }?>
        </div>
        <label class="labela" for="prezime"><b>Prezime: </b></label>
        <input class="input" type="text" id="prezime" name="prezime" maxlength="20" placeholder="Prezime"
            autofocus="autofocus" required="required" value="<?php if (isset($_COOKIE['prezime'])) {
echo $_COOKIE['prezime'];
}?>"><br>
        
        <div class="poruka-ime">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['ime'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['ime'];?>

            <?php }?>
        </div>
        <label class="labela" for="ime"><b>Ime: </b></label>
        <input class="input" type="text" id="ime" name="ime" maxlength="20" placeholder="Ime"
            required="required" value="<?php if (isset($_COOKIE['ime'])) {
echo $_COOKIE['ime'];
}?>"><br>

        <div class="poruka-korime">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['korime'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['korime'];?>

            <?php }?>
        </div>
        <label class="labela" for="korime"><b>Korisničko ime: </b></label>
        <input class="input" type="text" id="korime" name="korime" maxlength="20" placeholder="Korisničko ime"
            required="required" value="<?php if (isset($_COOKIE['korime'])) {
echo $_COOKIE['korime'];
}?>"><br>

        <div class="poruka-zaporka">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['zaporka'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['zaporka'];?>

            <?php }?>
        </div>
        <label class="labela" for="zaporka"><b>Zaporka: </b></label>
        <input class="input" type="password" id="zaporka" name="zaporka" placeholder="Lozinka" required="required"><br>

        <div class="poruka-zaporka2">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['zaporka2'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['zaporka2'];?>

            <?php }?>
        </div>
        <label class="labela" for="zaporka2"><b>Ponovi pozinku: </b></label>
        <input class="input" type="password" id="zaporka2" name="zaporka2" placeholder="Lozinka" required="required"><br>

        <div class="poruka-email">
            <?php if (isset($_smarty_tpl->tpl_vars['poruke']->value)&&!empty($_smarty_tpl->tpl_vars['poruke']->value['email'])) {?>
                <?php echo $_smarty_tpl->tpl_vars['poruke']->value['email'];?>

            <?php }?>
        </div>
        <label class="labela" for="email"><b>Email adresa: </b></label>
        <input class="input" type="email" id="email" name="email" placeholder="ime.prezime@posluzitelj.xxx"
            required="required" value="<?php if (isset($_COOKIE['email'])) {
echo $_COOKIE['email'];
}?>"><br>

        <div class="g-recaptcha" data-sitekey="6LfuKlwUAAAAAID92vg8E8MNc4y7p4PhuRKg2GBh" data-callback="prikaziSubmit"></div>
        <button id="submit" class="button sakrij"  name="submit" type="submit">Registriraj se</button>
    </div>
</form>

<?php }} ?>
