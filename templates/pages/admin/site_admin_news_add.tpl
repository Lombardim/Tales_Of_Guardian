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
				            <span class="art-PostHeader">Add News-Entry</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<p>Keep in mind: You can add HTML to your news-entries but be very careful
					   when doing so as the text is outputted <b>without</b> any filtering! So if you mess
					   up the HTML there, your site will be messed up, too.</p>
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
						<form method="post" action="{$script_url}?act=admnewsedit">
							<input type="hidden" name="act" value="admin" />
							<input type="hidden" name="sact" value="newsadd" />
							<table>
								<tr>
									<td>Category:</td>
									<td><select name="news_category" id="news_category" tabindex="1">
									{html_options values=$form_category_ids output=$form_category_names selected=$form_category_id}
									</select></td>
								</tr>
								<tr>
									<td>Headline:</td>
									<td><input type="text" name="news_headline" id="news_headline" class="field" value="{$form_headline}" tabindex="1" style="width:330px;" /></td>
								</tr>
								<tr>
									<td>News-Text:</td>
									<td><textarea name="news_body" cols="50" rows="10" style="width:330px;height:300px;" tabindex="2">{$form_body}</textarea></td>
								</tr>
								<tr>
									<td>Date:</td>
									<td><input type="text" name="news_date" id="news_date" class="shortfield" value="{$form_date|date_format:"%Y-%m-%d %H:%M:%S"}" tabindex="3" style="width:150px" /></td>
								</tr>
								<tr>
									<td>Author:</td>
									<td><select name="news_author" id="news_author" tabindex="4">
										{html_options values=$author_ids output=$author_names selected=$author_id}
										</select></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td><input type="submit" name="submit" id="submit" class="button" value="Add News" tabindex="5" /></td>
								</tr>
							</table>
						</form>
				    </div>

				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}