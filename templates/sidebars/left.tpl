
                        <!-- Navigation -->

                        <div class="art-Block">
                            <div class="art-Block-tl"></div>
                            <div class="art-Block-tr"></div>
                            <div class="art-Block-bl"></div>
                            <div class="art-Block-br"></div>
                            <div class="art-Block-tc"></div>
                            <div class="art-Block-bc"></div>
                            <div class="art-Block-cl"></div>
                            <div class="art-Block-cr"></div>
                            <div class="art-Block-cc"></div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">Main Menu</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>
						<ul >
{if !$user.is_logged_in}
	{if $allow_registration eq true}
							<li><a href="{$script_url}?act=register">Register</a></li>
	{/if}							
{/if}							
							<li><a href="{$script_url}?act=news&cid=2">Events</a></li>
							<li><a href="{$script_url}?act=downloads">Download</a></li>
							<li><a href="{$script_url}?act=rules">Rules</a></li>
							<li><a href="{$script_url}?act=ranking&rank=exp">Pirates' Ranking</a></li>
							<li><a href="{$script_url}?act=news">News-Archive</a></li>
						</ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Server-Rates Block -->

                        <div class="art-Block">
                            <div class="art-Block-tl"></div>
                            <div class="art-Block-tr"></div>
                            <div class="art-Block-bl"></div>
                            <div class="art-Block-br"></div>
                            <div class="art-Block-tc"></div>
                            <div class="art-Block-bc"></div>
                            <div class="art-Block-cl"></div>
                            <div class="art-Block-cr"></div>
                            <div class="art-Block-cc"></div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">Server Rates</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div style="padding-left:5px;"><b>{$rates.exp}</b> x <b>Solo-Exp</b><br />
					<b>{$rates.pexp}</b> x <b>Party-Exp</b><br />
					<b>{$rates.drop}</b> x <b>Drop-Rate</b><br />
					<b>{$rates.fairy}</b> x <b>Fairy-Growth</b><br />
					<b>{$rates.ship}</b> x <b>Ship-Exp</b></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- Information - Block -->

                        <div class="art-Block">
                            <div class="art-Block-tl"></div>
                            <div class="art-Block-tr"></div>
                            <div class="art-Block-bl"></div>
                            <div class="art-Block-br"></div>
                            <div class="art-Block-tc"></div>
                            <div class="art-Block-bc"></div>
                            <div class="art-Block-cl"></div>
                            <div class="art-Block-cr"></div>
                            <div class="art-Block-cc"></div>
                            <div class="art-Block-body">
                                <div class="art-BlockHeader">
                                    <div class="art-header-tag-icon">
                                        <div class="t">Information</div>
                                    </div>
                                </div><div class="art-BlockContent">
                                    <div class="art-BlockContent-body">
                                        <div>Put whatever you want into this block!<br /><br />It can be changed by editing  the following file:<br /><br /><b>templates\sidebars\left.tpl</b> !</div>
                                        <div><br />For example you could display the (self-updating) Server Time in this block: <b><span id="jclock1">{$smarty.now|date_format:"%H:%M"}</span></b> ;-)</div>
                                    </div>
                                </div>
                            </div>
                        </div>