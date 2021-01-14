<?php /* Smarty version Smarty-3.1.21-dev, created on 2021-01-14 13:15:37
         compiled from "templates\podnozje.tpl" */ ?>
<?php /*%%SmartyHeaderCode:100654718600035e9b66506-12344058%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2451a28f469542484b57d5f7e2aedfc5079f8b8b' => 
    array (
      0 => 'templates\\podnozje.tpl',
      1 => 1610620400,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '100654718600035e9b66506-12344058',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_600035e9b90d57_94280865',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_600035e9b90d57_94280865')) {function content_600035e9b90d57_94280865($_smarty_tpl) {?>    </section>
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
