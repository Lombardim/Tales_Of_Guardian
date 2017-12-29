<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:08
         compiled from file:pages/site_index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'nl2br', 'file:pages/site_index.tpl', 25, false),array('modifier', 'date_format', 'file:pages/site_index.tpl', 29, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'file:core/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if (count ( $this->_tpl_vars['recent'] ) > 0): ?>

		<?php $_from = $this->_tpl_vars['recent']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['curnews']):
?>

                        <div class="art-Post">
                            <div class="art-Post-tl"></div>
                            <div class="art-Post-tr"></div>
                            <div class="art-Post-bl"></div>
                            <div class="art-Post-br"></div>
                            <div class="art-Post-tc"></div>
                            <div class="art-Post-bc"></div>
                            <div class="art-Post-cl"></div>
                            <div class="art-Post-cr"></div>
                            <div class="art-Post-cc"></div>
                            <div class="art-Post-body">
				<div class="art-Post-inner">
				    <div class="art-PostMetadataHeader">
				        <h2 class="art-PostHeaderIcon-wrapper" style="font-size:14px;padding-left:5px;font-weight:bold;">
				            <span class="art-PostHeader">[<?php echo $this->_tpl_vars['curnews']['category']; ?>
] <?php echo $this->_tpl_vars['curnews']['headline']; ?>
</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
				        <p><?php echo ((is_array($_tmp=$this->_tpl_vars['curnews']['body'])) ? $this->_run_mod_handler('nl2br', true, $_tmp) : smarty_modifier_nl2br($_tmp)); ?>
</p>
				    </div>
				    <div class="art-PostMetadataFooter">
				        <span style="padding-left:5px">
						by <?php echo $this->_tpl_vars['curnews']['author']; ?>
, <?php echo ((is_array($_tmp=$this->_tpl_vars['curnews']['date'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d / %H:%M") : smarty_modifier_date_format($_tmp, "%Y-%m-%d / %H:%M")); ?>

				        </span>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

		<?php endforeach; endif; unset($_from); ?>

<?php endif; ?>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'file:core/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>