<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:26
         compiled from file:pages/account/site_login.tpl */ ?>
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
				            <span class="art-PostHeader">Login</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
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
?act=login">
						<input type="hidden" name="login" value="doit" />
						<div class="ntable">
							<table>
								<tr>
									<td>Username:</td>
									<td><input type="text" name="username" id="username" class="shortfield" value="<?php echo $this->_tpl_vars['form_username']; ?>
" tabindex="1" /></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><input type="password" name="password" id="password" class="shortfield" value="" tabindex="2" autocomplete="off" /></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="submit" id="submit" class="button" value="Login" tabindex="3" /></td>
								</tr>
							</table>
						</div>
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