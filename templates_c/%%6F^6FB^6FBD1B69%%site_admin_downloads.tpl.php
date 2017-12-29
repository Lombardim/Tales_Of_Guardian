<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:38
         compiled from file:pages/admin/site_admin_downloads.tpl */ ?>
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
				            <span class="art-PostHeader">Manage Downloads</span>
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

					<table>
						<thead>
							<tr>
								<th scope="col" class="top">Name</th>
								<th scope="col" class="top" style="width:150px;">Category</th>
								<th scope="col" class="top" style="width:70px;">Action</th>
							</tr>
						</thead>
						<tbody>
	<?php if (count ( $this->_tpl_vars['downloads'] ) > 0): ?>
				<?php $_from = $this->_tpl_vars['downloads']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entry']):
?>
							<tr>
								<td><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=admin&sact=downloadedit&id=<?php echo $this->_tpl_vars['entry']['id']; ?>
"><?php echo $this->_tpl_vars['entry']['name']; ?>
</a></td>
								<td><?php echo $this->_tpl_vars['entry']['category']; ?>
</td>
								<td style="text-align:center"><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=admin&sact=downloaddelete&id=<?php echo $this->_tpl_vars['entry']['id']; ?>
">delete</a></td>
							</tr>
				<?php endforeach; endif; unset($_from); ?>
	<?php else: ?>
							<tr>
								<td colspan="3">No downloads found.</td>
							</tr>
	<?php endif; ?>
							<tr>
								<td colspan="3"><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=admin&sact=downloadadd">Add Download</a></td>
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