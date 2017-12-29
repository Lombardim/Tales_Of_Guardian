<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:31
         compiled from file:pages/admin/site_admin_news.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'file:pages/admin/site_admin_news.tpl', 50, false),)), $this); ?>
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
				            <span class="art-PostHeader">Manage News</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<p>Here you can manage your news. You can add HTML to your news-entries but be very careful
					   when doing so as the text is outputted <b>without</b> any filtering! So if you mess
					   up the HTML there, your site will be messed up, too.</p>

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

					<table>
						<thead>
							<tr>
								<th scope="col" class="top">Headline</th>
								<th scope="col" class="top" style="width:90px;">Category</th>
								<th scope="col" class="top" style="width:70px;">Date</th>
								<th scope="col" class="top" style="width:50px;">Action</th>
							</tr>
						</thead>
						<tbody>
<?php if (count ( $this->_tpl_vars['news'] ) > 0): ?>
			<?php $_from = $this->_tpl_vars['news']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
							<tr>
								<td><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=admin&sact=newsedit&id=<?php echo $this->_tpl_vars['entry']['id']; ?>
"><?php echo $this->_tpl_vars['entry']['headline']; ?>
</a></td>
								<td style="text-align:center"><?php echo $this->_tpl_vars['entry']['category']; ?>
</td>
								<td style="text-align:center"><?php echo ((is_array($_tmp=$this->_tpl_vars['entry']['date'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d<br />%H:%M:%S") : smarty_modifier_date_format($_tmp, "%Y-%m-%d<br />%H:%M:%S")); ?>
</td>
								<td style="text-align:center"><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=admin&sact=newsdelete&id=<?php echo $this->_tpl_vars['entry']['id']; ?>
">delete</a></td>
							</tr>
			<?php endforeach; endif; unset($_from); ?>
<?php else: ?>
							<tr>
								<td colspan="4">No news found.</td>
							</tr>
<?php endif; ?>
							<tr>
								<td colspan="4"><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=admin&sact=newsadd">Add News-Entry</a></td>
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