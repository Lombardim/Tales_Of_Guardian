{include file='file:core/header.tpl'}

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
{if count($message.messages) > 0}
					<div class="{$message.type}">
						<ul>
			{foreach item=text from=$message.messages}
							<li>{$text}</li>
			{/foreach}
						</ul>
					</div>
{/if}
					<form method="post" action="{$script_url}?act=login">
						<input type="hidden" name="login" value="doit" />
						<div class="ntable">
							<table>
								<tr>
									<td>Username:</td>
									<td><input type="text" name="username" id="username" class="shortfield" value="{$form_username}" tabindex="1" /></td>
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

{include file='file:core/footer.tpl'}