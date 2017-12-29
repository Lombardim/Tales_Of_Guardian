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
				            <span class="art-PostHeader">Manage Authors</span>
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
					<table>
						<thead>
							<tr>
								<th scope="col" class="top">Name</th>
								<th scope="col" class="top" style="width:70px;">Action</th>
							</tr>
						</thead>
						<tbody>
{if count($authors) gt 0}
			{foreach item=entry from=$authors}
							<tr>
								<td><a href="{$script_url}?act=admin&sact=authoredit&id={$entry.id}">{$entry.author}</a></td>
								<td style="text-align:center"><a href="{$script_url}?act=admin&sact=authordelete&id={$entry.id}">delete</a></td>
							</tr>
			{/foreach}
{else}
							<tr>
								<td colspan="2">No authors found.</td>
							</tr>
{/if}
							<tr>
								<td colspan="2"><a href="{$script_url}?act=admin&sact=authoradd">Add Author</a></td>
							</tr>
						</tbody>
					</table>

				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}