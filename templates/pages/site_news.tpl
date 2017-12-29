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
				            <span class="art-PostHeader">News-Archive</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">

{if $news neq false}
					<ul>
		{foreach item=curnews from=$news}
						<li><a href="index.php?act=newsview&id={$curnews.id}&cid={$current_category}">[{$curnews.category}] {$curnews.headline}</a><br /><small>({$curnews.date|date_format:"%Y-%m-%d / %H:%M"} by {$curnews.author})</small></li>
		{/foreach}
					</ul>
{else}
					<p>No News in archive.</p>
{/if}

				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}