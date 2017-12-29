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
				            <span class="art-PostHeader">Statistics</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<table>
						<tr>
							<th class="top" style="width:200px">Currently Logged In</td>
							<td>{$admstats.login}</td>
						</tr>
						<tr>
							<th class="top">Currently Playing</td>
							<td>{$admstats.play}</td>
						</tr>
						<tr>
							<th class="top">Unique MACs</td>
							<td>{$admstats.unique_mac}</td>
						</tr>
						<tr>
							<th class="top">New Chars in the last 24h</td>
							<td>{$admstats.new_players}</td>
						</tr>
						<tr>
							<th class="top">Total Accounts</td>
							<td>{$admstats.acc_count}</td>
						</tr>
						<tr>
							<th class="top">Total Characters</td>
							<td>{$admstats.players}</td>
						</tr>
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
				            <span class="art-PostHeader">Users online today</span>
				        </h2>
				    </div>
				    <div class="art-PostContent" style="text-align:center">
					    <p><img src="{$script_url}?act=graph&sact=onlinetoday" style="bordeR:0px;" alt="Users online today" width="430" height="278" /><br />
					    <span style="color:#c8e664;"><b>Logged In</b></span> - <span style="color:#c86400;"><b>Playing</b></p>
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
				            <span class="art-PostHeader">Users online yesterday</span>
				        </h2>
				    </div>
				    <div class="art-PostContent" style="text-align:center">
					    <p><img src="{$script_url}?act=graph&sact=onlineyesterday" style="bordeR:0px;" alt="Users online yesterday" width="430" height="278" /><br />
					    <span style="color:#c8e664;"><b>Logged In</b></span> - <span style="color:#c86400;"><b>Playing</b></p>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>
                        
{include file='file:core/footer.tpl'}