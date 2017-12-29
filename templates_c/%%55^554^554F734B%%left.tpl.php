<?php /* Smarty version 2.6.22, created on 2012-03-12 11:28:08
         compiled from file:sidebars/left.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'date_format', 'file:sidebars/left.tpl', 89, false),)), $this); ?>

                        <!-- Navigation -->

                        <div class="art-Block">
                            <div class="art-Block-tl"></div>
                            <div class="art-Block-tr"></div>
                            <div class="art-Block-bl"></div>
                            <div class="art-Block-br"></div>
                            <div class="art-Block-tc"></div>
                            <div class="art-Block-bc"></div>
                            <div class="art-Block-cl"></div>
                            <div class="art-Block-cr"></div>
                            <div class="art-Block-cc"></div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">Main Menu</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
						<ul >
<?php if (! $this->_tpl_vars['user']['is_logged_in']): ?>
	<?php if ($this->_tpl_vars['allow_registration'] == true): ?>
							<li><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=register">Register</a></li>
	<?php endif; ?>							
<?php endif; ?>							
							<li><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=news&cid=2">Events</a></li>
							<li><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=downloads">Download</a></li>
							<li><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=rules">Rules</a></li>
							<li><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=ranking&rank=exp">Pirates' Ranking</a></li>
							<li><a href="<?php echo $this->_tpl_vars['script_url']; ?>
?act=news">News-Archive</a></li>
						</ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Server-Rates Block -->

                        <div class="art-Block">
                            <div class="art-Block-tl"></div>
                            <div class="art-Block-tr"></div>
                            <div class="art-Block-bl"></div>
                            <div class="art-Block-br"></div>
                            <div class="art-Block-tc"></div>
                            <div class="art-Block-bc"></div>
                            <div class="art-Block-cl"></div>
                            <div class="art-Block-cr"></div>
                            <div class="art-Block-cc"></div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">Server Rates</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div style="padding-left:5px;"><b><?php echo $this->_tpl_vars['rates']['exp']; ?>
</b> x <b>Solo-Exp</b><br />
					<b><?php echo $this->_tpl_vars['rates']['pexp']; ?>
</b> x <b>Party-Exp</b><br />
					<b><?php echo $this->_tpl_vars['rates']['drop']; ?>
</b> x <b>Drop-Rate</b><br />
					<b><?php echo $this->_tpl_vars['rates']['fairy']; ?>
</b> x <b>Fairy-Growth</b><br />
					<b><?php echo $this->_tpl_vars['rates']['ship']; ?>
</b> x <b>Ship-Exp</b></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Information - Block -->

                        <div class="art-Block">
                            <div class="art-Block-tl"></div>
                            <div class="art-Block-tr"></div>
                            <div class="art-Block-bl"></div>
                            <div class="art-Block-br"></div>
                            <div class="art-Block-tc"></div>
                            <div class="art-Block-bc"></div>
                            <div class="art-Block-cl"></div>
                            <div class="art-Block-cr"></div>
                            <div class="art-Block-cc"></div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">Information</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>Put whatever you want into this block!<br /><br />It can be changed by editing  the following file:<br /><br /><b>templates\sidebars\left.tpl</b> !</div>
                                        <div><br />For example you could display the (self-updating) Server Time in this block: <b><span id="jclock1"><?php echo ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, "%H:%M") : smarty_modifier_date_format($_tmp, "%H:%M")); ?>
</span></b> ;-)</div>
                                    </div>
                                </div>
                            </div>
                        </div>