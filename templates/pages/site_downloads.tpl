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
				            <span class="art-PostHeader">Category</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<ul>
			{foreach item=category from=$categories}
						<li><a href="{$script_url}?act=downloads&cid={$category.category_id}">{$category.category}</a></li>
			{/foreach}
					</ul>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{if count($files) neq 0}
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
				            <span class="art-PostHeader">Files</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
			{foreach item=file from=$files}
					<table>
						<thead>
							<tr>
								<th scope="col" colspan="2" class="top"><b>{$file.name}</b></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2">{$file.description}</td>
							</tr>
							<tr>
								<td style="text-align:center">{$file.size}</td>
								<td style="text-align:center"><a href="{$file.url}">Download</a></td>
							</tr>
						</tbody>
					</table>
			{/foreach}
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>
{/if}

{include file='file:core/footer.tpl'}