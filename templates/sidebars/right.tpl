{if $user.is_admin}
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
                                        <div class="t">Administration</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
					<div>
						<a href="{$script_url}?act=admin">Admin Dashboard</a><br /><br />
						<a href="{$script_url}?act=admin&sact=rules">Edit Rules</a><br /><br />
						<a href="{$script_url}?act=admin&sact=news">Edit News</a><br />
						<a href="{$script_url}?act=admin&sact=authors">Edit News-Authors</a><br />
						<a href="{$script_url}?act=admin&sact=ncategories">Edit News-Categories</a><br /><br />
						<a href="{$script_url}?act=admin&sact=downloads">Edit Downloads</a><br />
						<a href="{$script_url}?act=admin&sact=dlcategories">Edit D/L-Categories</a>
					</div>
                                    </div>
                                </div>
                            </div>
                        </div>
{/if}
{if $user.is_logged_in}
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
                                        <div class="t">Account</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
					<div>
					You are currently logged in as <b>{$user.name}</b>.<br />
					<p><a href="{$script_url}?act=account">Your Account</a><br />
					<p><a href="{$script_url}?act=account&sact=chars">Your Characters</a><br />
					<a href="{$script_url}?act=account&sact=changepw">Change Password</a><br />
					<a href="{$script_url}?act=account&sact=changemail">Change eMail</a><br />
{if $enable_guild_admin}
					<a href="{$script_url}?act=account&sact=guilds">Your Guild(s)</a><br />
{/if}
					<p><a href="{$script_url}?act=logout">Logout</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
{else}
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
                                        <div class="t">Login</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
					<form method="post" action="{$script_url}"> 
						<input type="hidden" name="act" value="login" />
						<table>
							<tr>
								<td>
									User:<br />
									<input type="text" name="username" id="username" title="Username" tabindex="101" class="field" value="" />
								</td>
							</tr>
							<tr>
								<td>
									Password:<br />
									<input type="password" name="password" id="password" tabindex="102" class="field" value="" autocomplete="off" />
								</td>
							</tr>
							<tr>
								<td>
									<input type="submit" name="login" class="button" value="LOGIN" tabindex="103" />
									<br /><br /><a href="{$script_url}?act=forgot">Forgot your password?</a>									
								</td>
							</tr>
						</table>
					</form>
                                    </div>
                                </div>
                            </div>
                        </div>
{/if}

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
                                        <div class="t">Statistics</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                    	<table width="100%">
                                    		<tr><td><span style="font-weight:bold;">Accounts</span></td><td align="right">{$stats.accounts}</td>
                                    		<tr><td><span style="font-weight:bold;">Characters</span></td><td align="right">{$stats.chars}</td>
                                    		<tr><td><span style="font-weight:bold;">Guilds</span></td><td align="right">{$stats.guilds}</td>
                                    		<tr><td><span style="font-weight:bold;">Online</span></td><td align="right">{$stats.online}</td>
                                    	</table>
                                    </div>
                                </div>
                            </div>
                        </div>

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
                                        <div class="t">Online Record</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>The most players ({$stats.record.online}) were online on {$stats.record.timestamp|date_format:"%Y-%m-%d"} at {$stats.record.timestamp|date_format:"%H:%M:%S"}.</div>
                                    </div>
                                </div>
                            </div>
                        </div>

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
                                        <div class="t">Job Distribution</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                    	<table width="100%">
                                    		<tr><td><span style="font-weight:bold;">Champion</span></td><td align="right">{$stats.jobs.champion}</td>
                                    		<tr><td><span style="font-weight:bold;">Cleric</span></td><td align="right">{$stats.jobs.cleric}</td>
                                    		<tr><td><span style="font-weight:bold;">Crusader</span></td><td align="right">{$stats.jobs.crusader}</td>
                                    		<tr><td><span style="font-weight:bold;">Explorer</span></td><td align="right">{$stats.jobs.explorer}</td>
                                    		<tr><td><span style="font-weight:bold;">Herbalist</span></td><td align="right">{$stats.jobs.herbalist}</td>
                                    		<tr><td><span style="font-weight:bold;">Hunter</span></td><td align="right">{$stats.jobs.hunter}</td>
                                    		<tr><td><span style="font-weight:bold;">Newbie</span></td><td align="right">{$stats.jobs.newbie}</td>
                                    		<tr><td><span style="font-weight:bold;">Seal Master</span></td><td align="right">{$stats.jobs.sealmaster}</td>
                                    		<tr><td><span style="font-weight:bold;">Sharpshooter</span></td><td align="right">{$stats.jobs.sharpshooter}</td>
                                    		<tr><td><span style="font-weight:bold;">Swordsman</span></td><td align="right">{$stats.jobs.swordsman}</td>
                                    		<tr><td><span style="font-weight:bold;">Voyager</span></td><td align="right">{$stats.jobs.voyager}</td>
                                    	</table>
                                    </div>
                                </div>
                            </div>
                        </div>

{if $toplist.privatia neq ""}
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
                                        <div class="t">Vote for us</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
					Please support us by voting for us:<br /><br />
					<a href="http://rank.serverdev.net/index.php?a=rate&u={$toplist.privatia}"><img src="./img/vote/privatia.gif" title="Vote!" border="0" style="border:0;" /></a>                                        
					</div>
                                    </div>
                                </div>
                            </div>
                        </div>
{/if}

{if $webim_found}
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
                                        <div class="t">Live Support</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
					<a href="/webim/client.php?locale=en" target="_blank" onclick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 && window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('/webim/client.php?locale=en', 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;"><img src="/webim/button.php?image=webim&lang=en" border="0" width="163" height="61" style="border:0;" /></a>
					</div>
                                    </div>
                                </div>
                            </div>
                        </div>
{/if}
