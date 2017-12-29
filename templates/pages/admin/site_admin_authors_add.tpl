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
				            <span class="art-PostHeader">Add Author</span>
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
{if $skip_form neq true}
				<div class="ntable">
					<form method="post" action="{$script_url}">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="authoradd" />
						<input type="hidden" name="add" value="1" />
						<table>
							<tr>
								<td>Author:</td>
								<td><input type="text" name="na_author" id="na_author" class="field" value="{$form_author}" tabindex="1" style="width:320px;" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" name="submit" id="submit" class="button" value="Add Author" tabindex="2" /></td>
							</tr>
						</table>
					</form>
				</div>
{/if}
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>


{include file='file:core/footer.tpl'}