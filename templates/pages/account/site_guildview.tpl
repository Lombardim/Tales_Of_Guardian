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
				            <span class="art-PostHeader">Guild-Members of {$guild.guild_name}</span>
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
					<tr>
						<th scope="col" class="top">Name</th>
						<th scope="col" class="top">Lvl</th>
						<th scope="col" class="top">Char/Job</th>
						<th scope="col" class="top" style="width:45px;">Status</th>
						<th scope="col" class="top" style="width:90px;">Action</th>
					</tr>
{if count($members) gt 0}
	{foreach item=member from=$members}
					<tr>
						<td>{$member.name}</a></td>
						<td>{$member.level}</td>
						<td><small>{$member.char}<br />{$member.job}</small></td>
						<td>
						{if $member.online}
							<span style="color:#090;">online</span>
						{else}
							<span style="color:#900;">offline</span>
						{/if}
						</td>
						<td>
						{if $member.online}
							&nbsp;
						{else}
							<a href="{$script_url}?act=account&sact=guildkick&id={$member.id}&gid={$guild.guild_id}" class="confirm">kick</a>
						{/if}
						</td>
					</tr>
	{/foreach}
{else}
					<tr>
						<td colspan="5">This guild has no members!?</a></td>
					</tr>
{/if}
				</table>
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
				            <span class="art-PostHeader">Guild Applicants</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
				<table>
					<tr>
						<th scope="col" class="top">Name</th>
						<th scope="col" class="top">Lvl</th>
						<th scope="col" class="top">Char/Job</th>
						<th scope="col" class="top" style="width:45px;">Status</th>
						<th scope="col" class="top" style="width:90px;">Action</th>
					</tr>
{if count($applicants) gt 0}
	{foreach item=member from=$applicants}
					<tr>
						<td>{$member.name}</a></td>
						<td>{$member.level}</td>
						<td><small>{$member.char}<br />{$member.job}</small></td>
						<td>
						{if $member.online}
							<span style="color:#090;">online</span>
						{else}
							<span style="color:#900;">offline</span>
						{/if}
						</td>
						<td>
						{if $member.online}
							&nbsp;
						{else}
							<a href="{$script_url}?act=account&sact=guildapprove&id={$member.id}&gid={$guild.guild_id}" class="confirm">approve</a><br />
							<a href="{$script_url}?act=account&sact=guilddecline&id={$member.id}&gid={$guild.guild_id}" class="confirm">decline</a>
						{/if}
						</td>
					</tr>
	{/foreach}
{else}
					<tr>
						<td colspan="5">This guild has no applicants.</a></td>
					</tr>
{/if}
				</table>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}