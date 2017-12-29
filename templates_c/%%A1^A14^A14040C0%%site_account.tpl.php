<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:27
         compiled from file:pages/account/site_account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'file:pages/account/site_account.tpl', 40, false),)), $this); ?>
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
				            <span class="art-PostHeader">Your Account</span>
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

					<p>Welcome to your <b><?php echo $this->_tpl_vars['servername']; ?>
</b>-account.</p>

					<table>
						<tbody>
							<tr>
								<td scope="row" class="column1" style="width:120px">Last Login</td>
<?php if ($this->_tpl_vars['account']['last_login'] != ""): ?>
								<td><b><?php echo ((is_array($_tmp=$this->_tpl_vars['account']['last_login'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d %H:%M:%S") : smarty_modifier_date_format($_tmp, "%Y-%m-%d %H:%M:%S")); ?>
</b><br />from <b><?php echo $this->_tpl_vars['account']['last_login_ip']; ?>
</b></td>
<?php else: ?>
								<td><b>never</b></td>
<?php endif; ?>
							</tr>
							<tr>
								<td scope="row" class="column1"style="width:120px">Last Logout</td>
<?php if ($this->_tpl_vars['account']['last_logout'] != ""): ?>
								<td><b><?php echo ((is_array($_tmp=$this->_tpl_vars['account']['last_logout'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d %H:%M:%S") : smarty_modifier_date_format($_tmp, "%Y-%m-%d %H:%M:%S")); ?>
</b></td>
<?php else: ?>
								<td><b>never</b></td>
<?php endif; ?>
							</tr>
							<tr>
								<td scope="row" class="column1"style="width:120px">eMail</td>
								<td><b><?php echo $this->_tpl_vars['account']['email']; ?>
</b></td>
							</tr>
							<tr>
								<td scope="row" class="column1"style="width:120px">GM-Level</td>
								<td><b><?php echo $this->_tpl_vars['account']['gm']; ?>
</b></td>
							</tr>
							<tr>
								<td scope="row" class="column1" style="width:120px">Time online</td>
<?php if (trim ( $this->_tpl_vars['account']['time_online'] ) != ""): ?>
								<td><b><?php echo $this->_tpl_vars['account']['time_online']; ?>
</b></td>
<?php else: ?>
								<td><b>never</b></td>
<?php endif; ?>
							</tr>
						</tbody>
					</table>
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