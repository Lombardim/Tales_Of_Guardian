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
				            <span class="art-PostHeader">Manage Rules</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">

					<p>You can edit your server-rules in the form below. Be <b>very</b> careful!</p>

{if count($message.messages) gt 0}
					<div class="{$message.type}">
						<ul>
				{foreach item=text from=$message.messages}
							<li>{$text}</li>
				{/foreach}
						</ul>
					</div>
{/if}
					
					<form method="post" action="{$script_url}">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="rules" />
						<p><textarea name="rules" cols="50" rows="10" style="width:430px;height:300px;" tabindex="1">{$rules}</textarea></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="2" /></p>
						<p>&nbsp;</p>
					</form>

				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>


{include file='file:core/footer.tpl'}