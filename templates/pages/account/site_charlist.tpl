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
				            <span class="art-PostHeader">Your Characters</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
{if count($characters) gt 0}
			{foreach item=character from=$characters}
			<table>
				<tr>
					<td rowspan="3" width="76"><a href="{$script_url}?act=account&sact=chardetail&id={$character.id}"><img src="{$base_url}img/chars/{$character.picture}" style="border:0" /></a></td>
					<th scope="col" colspan="2"><a href="{$script_url}?act=account&sact=chardetail&id={$character.id}">{$character.name}</a></th>
				</tr>
				<tr>
					<td>Lv {$character.level}</td>
					<td>{$character.job}</td>
				</tr>
				<tr>
					<td>{$character.gold} Gold</td>
					<td>AP/TP left: {$character.ap} - {$character.tp}</td>
				</tr>
			</table>
			{/foreach}
			<p></p>
			<p>Click on the picture or name to see detailed informations on that char.</p>
{else}
			<p>No characters found!?</p>
{/if}
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}