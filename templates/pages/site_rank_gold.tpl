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
					<a href="{$script_url}?act=ranking&rank=exp">Top Pirates</a> :: Richest Pirates :: <a href="{$script_url}?act=ranking&rank=guild">Top Guilds</a>
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
				            <span class="art-PostHeader">Richest Pirates</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<table>
						<thead>
							<tr>
								<th scope="col" class="top" width="30">#</th>
								<th scope="col" class="top">Player</th>
								<th scope="col" class="top" width="70">Gold</th>
								<th scope="col" class="top">Guild</th>
							</tr>
						</thead>
						<tbody>
{if count($players) gt 0}
			{foreach item=player from=$players key=pos}
							<tr>
								<td>{$pos}</td>
								<td><b>{$player.name}</b><br /><small>{$player.char}, {$player.job}</small></td>
								<td>{$player.gold}</td>
								<td>
									{if $player.guild neq ""}
										{$player.guild}
									{else}
										-none-
									{/if}
								</td>
							</tr>
			{/foreach}
{else}
							<tr>
								<td colspan="5">No players found!?</td>
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