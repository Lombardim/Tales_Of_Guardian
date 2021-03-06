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
				            <span class="art-PostHeader">Your Account</span>
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

					<p>Welcome to your <b>{$servername}</b>-account.</p>

					<table>
						<tbody>
							<tr>
								<td scope="row" class="column1" style="width:120px">Last Login</td>
{if $account.last_login neq ""}
								<td><b>{$account.last_login|date_format:"%Y-%m-%d %H:%M:%S"}</b><br />from <b>{$account.last_login_ip}</b></td>
{else}
								<td><b>never</b></td>
{/if}
							</tr>
							<tr>
								<td scope="row" class="column1"style="width:120px">Last Logout</td>
{if $account.last_logout neq ""}
								<td><b>{$account.last_logout|date_format:"%Y-%m-%d %H:%M:%S"}</b></td>
{else}
								<td><b>never</b></td>
{/if}
							</tr>
							<tr>
								<td scope="row" class="column1"style="width:120px">eMail</td>
								<td><b>{$account.email}</b></td>
							</tr>
							<tr>
								<td scope="row" class="column1"style="width:120px">GM-Level</td>
								<td><b>{$account.gm}</b></td>
							</tr>
							<tr>
								<td scope="row" class="column1" style="width:120px">Time online</td>
{if trim($account.time_online) neq ""}
								<td><b>{$account.time_online}</b></td>
{else}
								<td><b>never</b></td>
{/if}
							</tr>
						</tbody>
					</table>
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

{include file='file:core/footer.tpl'}