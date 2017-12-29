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
				            <span class="art-PostHeader">Change Password</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<p>Please fill out the form below to change your password!</p>
{if count($message.messages) gt 0}
					<div class="{$message.type}">
						<ul>
					{foreach item=text from=$message.messages}
							<li>{$text}</li>
					{/foreach}
						</ul>
					</div>
{/if}

					<div class="ntable">
						<form method="post" action="{$script_url}">
							<input type="hidden" name="act" value="account" />
							<input type="hidden" name="sact" value="changepw" />
							<table>
								<tr>
									<td><b>Current</b> PW:</td>
									<td><input type="password" name="pw_current" id="pw_current" class="shortfield" value="" tabindex="1" /></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><input type="password" name="pw_password" id="pw_password" class="shortfield" value="" tabindex="2" /></td>
								</tr>
								<tr>
									<td>Repeat PW:</td>
									<td><input type="password" name="pw_password2" id="pw_password2" class="shortfield" value="" tabindex="3" /></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><img src="{$script_url}?act=getcaptcha" alt="Captcha" /></td>
								</tr>
								<tr>
									<td>Code:</td>
									<td><input type="text" name="pw_captcha" id="pw_captcha" class="shortfield" value="" tabindex="5" /></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="6" /></td>
								</tr>
							</table>
						</form>
					</div>              
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

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
				    <div class="art-PostContent">
					<ul>
						<li> Passwords can be 5-20 chars long!</li>
						<li> Passwords can contain the following chars: a-z A-Z 0-9 ~!@#$%^&*()_+|-=\[]:";&lt;&gt;?,./</li>
					</ul>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}