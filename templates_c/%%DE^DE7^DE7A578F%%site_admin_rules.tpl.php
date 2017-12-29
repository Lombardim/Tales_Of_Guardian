<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:30
         compiled from file:pages/admin/site_admin_rules.tpl */ ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'file:core/header.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
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
				            <span class="art-PostHeader">Manage Rules</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">

					<p>You can edit your server-rules in the form below. Be <b>very</b> careful!</p>

<?php if (count ( $this->_tpl_vars['message']['messages'] ) > 0): ?>
					<div class="<?php echo $this->_tpl_vars['message']['type']; ?>
">
						<ul>
				<?php $_from = $this->_tpl_vars['message']['messages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['text']):
?>
							<li><?php echo $this->_tpl_vars['text']; ?>
</li>
				<?php endforeach; endif; unset($_from); ?>
						</ul>
					</div>
<?php endif; ?>
					
					<form method="post" action="<?php echo $this->_tpl_vars['script_url']; ?>
">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="rules" />
						<p><textarea name="rules" cols="50" rows="10" style="width:430px;height:300px;" tabindex="1"><?php echo $this->_tpl_vars['rules']; ?>
</textarea></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="2" /></p>
						<p>&nbsp;</p>
					</form>

				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>


<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'file:core/footer.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>