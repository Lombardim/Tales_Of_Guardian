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
				            <span class="art-PostHeader">Your Guilds</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
{if count($guilds) gt 0}
			<table>
				<tr>
					<th scope="col" class="top">Name</th>
					<th scope="col" class="top">Motto</th>
					<th scope="col" class="top" style="width:70px;">Members</th>
					<th scope="col" class="top" style="width:70px;">Applicants</th>
				</tr>
			{foreach item=guild from=$guilds}
				<tr>
					<td><a href="{$script_url}?act=account&sact=guildview&id={$guild.id}">{$guild.name}</a></td>
					<td>{$guild.motto}</td>
					<td>{$guild.members}</td>
					<td>{$guild.applicants}</td>
				</tr>
			{/foreach}
			</table>
			<p></p>
			<p>Click on the guild-name to edit that guild.</p>
{else}
			<p>You're not leader of any guild!</p>
{/if}
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}