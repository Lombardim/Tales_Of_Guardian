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
				            <span class="art-PostHeader">Important Information</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<p>Before registering a new account please make sure you read our <a href="{$script_url}?act=rules">rules</a>!</p>
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
				    <div class="art-PostMetadataHeader">
				        <h2 class="art-PostHeaderIcon-wrapper" style="font-size:14px;padding-left:5px;font-weight:bold;">
				            <span class="art-PostHeader">Registration Information</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">



{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}

{if $allow_registration eq true}

					<form method="post" action="{$script_url}?act=register">
						<input type="hidden" name="register" value="doit" />
						<div class="ntable">
							<table>
								<tr>
									<td>Username:</td>
									<td><input type="text" name="reg_username" id="reg_username" class="shortfield" value="{$form_username}" tabindex="1" /></td>
								</tr>
								<tr>
									<td>Password:</td>
									<td><input type="password" name="reg_password" id="reg_password" class="shortfield" value="" tabindex="2" autocomplete="off" /></td>
								</tr>
								<tr>
									<td>Repeat PW:</td>
									<td><input type="password" name="reg_password2" id="reg_password2" class="shortfield" value="" tabindex="3" autocomplete="off" /></td>
								</tr>
								<tr>
									<td>eMail:</td>
									<td><input type="text" name="reg_email" id="reg_email" class="field" value="{$form_email}" tabindex="4" /></td>
								</tr>
{if $show_captcha}
								<tr>
									<td>&nbsp;</td>
									<td><img src="{$script_url}?act=getcaptcha" alt="Captcha" /></td>
								</tr>
								<tr>
									<td>Code:</td>
									<td><input type="text" name="reg_captcha" id="reg_captcha" class="shortfield" value="" tabindex="5" /></td>
								</tr>
{/if}
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="submit" id="submit" class="button" value="Register" tabindex="6" /></td>
								</tr>
							</table>
						</div>
					</form>
{/if}

				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{if $allow_registration eq true}
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
				            <span class="art-PostHeader">Restrictions</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
			<p>
				<ul>
							
					<li> Usernames can be 5-20 chars long!</li>
					<li> Usernames can contain the following chars: a-z A-Z 0-9 ~!@#$%^&*()_+|-=\[]:";&lt;%gt;?,./</li>
					<li> Passwords can be 5-20 chars long!</li>
					<li> Passwords can contain the following chars: a-z A-Z 0-9 ~!@#$%^&*()_+|-=\[]:";&lt;%gt;?,./</li>
{if $allow_dupe_email}
					<li> registering multiple accounts using the same eMail-address is <b>allowed</b>.</li>
{else}
					<li> registering multiple accounts using the same eMail-address is <b>forbidden</b>.</li>
{/if}
				</ul>
			</p>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>
{/if}

{include file='file:core/footer.tpl'}