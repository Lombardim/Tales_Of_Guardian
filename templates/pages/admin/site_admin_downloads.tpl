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
				            <span class="art-PostHeader">Manage Downloads</span>
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
								<th scope="col" class="top" style="width:150px;">Category</th>
								<th scope="col" class="top" style="width:70px;">Action</th>
							</tr>
						</thead>
						<tbody>
	{if count($downloads) gt 0}
				{foreach item=entry from=$downloads}
							<tr>
								<td><a href="{$script_url}?act=admin&sact=downloadedit&id={$entry.id}">{$entry.name}</a></td>
								<td>{$entry.category}</td>
								<td style="text-align:center"><a href="{$script_url}?act=admin&sact=downloaddelete&id={$entry.id}">delete</a></td>
							</tr>
				{/foreach}
	{else}
							<tr>
								<td colspan="3">No downloads found.</td>
							</tr>
	{/if}
							<tr>
								<td colspan="3"><a href="{$script_url}?act=admin&sact=downloadadd">Add Download</a></td>
							</tr>
						</tbody>
					</table>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}