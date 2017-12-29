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
				    <div class="art-PostContent">
					<a href="{$script_url}?act=ranking&rank=exp">Top Pirates</a> {if $show_richest}:: <a href="{$script_url}?act=ranking&rank=gold">Richest Pirates</a> {/if}:: Top Guilds
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

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
				            <span class="art-PostHeader">Top Guilds</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<table>
						<thead>
							<tr>
								<th scope="col" class="top" width="30">#</th>
								<th scope="col" class="top">Guild</th>
								<th scope="col" class="top">Leader</th>
							</tr>
						</thead>
						<tbody>
{if count($guilds) gt 0}
			{foreach item=guild from=$guilds key=pos}
							<tr>
								<td>{$pos}</td>
								<td><b>{$guild.name}</b>
								{if $guild.motto neq ""}
								<br /><small>( {$guild.motto} )</small>
								{/if}
								</td>
								<td>{$guild.leader}</td>
							</tr>
			{/foreach}
{else}
							<tr>
								<td colspan="3">No guilds found.</td>
							</tr>
{/if}
						</tbody>
					</table>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}