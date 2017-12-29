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
				            <span class="art-PostHeader">Add Download</span>
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
						<input type="hidden" name="sact" value="downloadadd" />
						<input type="hidden" name="add" value="1" />
						<table>
							<tr>
								<td>Category:</td>
								<td><select name="dl_category" id="dl_category" tabindex="1">
								{html_options values=$form_category_ids output=$form_category_names selected=$form_category_id}
							</select></td>
							</tr>
							<tr>
								<td>Name:</td>
								<td><input type="text" name="dl_name" id="dl_name" class="field" value="{$form_name}" tabindex="2" style="width:310px;" /></td>
							</tr>
							<tr>
								<td>Description:</td>
								<td><textarea name="dl_description" cols="50" rows="10" style="width:310px;height:300px;" tabindex="3">{$form_description}</textarea></td>
							</tr>
							<tr>
								<td>Size:</td>
								<td><input type="text" name="dl_size" id="dl_size" class="shortfield" value="{$form_size}" tabindex="4" style="width:150px" /> Bytes</td>
							</tr>
							<tr>
								<td>URL:</td>
								<td><input type="text" name="dl_url" id="dl_url" class="field" value="{$form_url}" tabindex="5" style="width:310px;" /></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><input type="submit" name="submit" id="submit" class="button" value="Add" tabindex="5" /></td>
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