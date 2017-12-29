{include file='file:core/header.tpl'}

{if count($recent) gt 0}

		{foreach item=curnews from=$recent}

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
				            <span class="art-PostHeader">[{$curnews.category}] {$curnews.headline}</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
				        <p>{$curnews.body|nl2br}</p>
				    </div>
				    <div class="art-PostMetadataFooter">
				        <span style="padding-left:5px">
						by {$curnews.author}, {$curnews.date|date_format:"%Y-%m-%d / %H:%M"}
				        </span>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

		{/foreach}

{/if}

{include file='file:core/footer.tpl'}