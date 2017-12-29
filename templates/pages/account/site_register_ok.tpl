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
				            <span class="art-PostHeader">Registration OK</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<p>Your account has successfully been created.</p>
{if $show_mail_info}
					<p style="color:#b00;"><b>An eMail with an activation-link was sent to your email-address. Please check your emails for further informations.</b></p>
{else}
					<p>You can now <a href="{$script_url}?act=login">login</a> using your username and password.</p>
{/if}
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}