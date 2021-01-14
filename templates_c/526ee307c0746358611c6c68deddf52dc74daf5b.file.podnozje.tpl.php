<?php /* Smarty version Smarty-3.1.21-dev, created on 2019-06-11 14:08:59
         compiled from "templates/podnozje.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16916565705cf457404c2e56-47610001%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '526ee307c0746358611c6c68deddf52dc74daf5b' => 
    array (
      0 => 'templates/podnozje.tpl',
      1 => 1560225572,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16916565705cf457404c2e56-47610001',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5cf457404c3a35_36417081',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5cf457404c3a35_36417081')) {function content_5cf457404c3a35_36417081($_smarty_tpl) {?>    </section>
    <div id="id01" class="modal"></div>
    <?php echo '<script'; ?>
 src="js/stranicenje_pretrazivanje.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="js/natjecaji.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="js/admin.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="js/ponuda.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="js/obrt.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="js/zalbe.js"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
 src="js/cookie.js"><?php echo '</script'; ?>
>
    

    <footer id="podnozje">
        <address id="informacije">
            <strong>Autor: Ante Vulić</strong><br>
            <strong>Kontakt: </strong><a href="mailto:avulic@foi.hr">avulic@foi.hr</a><br>
            <strong>Izmjenjeno: 22.3.2019</strong><br>
        </address>
        
        <div class="vrijeme">
            <div>
                <div class="">Vrijeme sustava:</div>
                <div class="" id="vrijemeSustava"></div>
            </div>
            <div>
                <div class="">Stvarno vrijeme:</div>
                <div class="" id="vrijemeServera"></div>
            </div>
        </div>
        <div>
            <p id="copyright">&copy; 2019 A.Vulić</p>
        </div>
        
    </footer>
</body>

</html>

<?php }} ?>
