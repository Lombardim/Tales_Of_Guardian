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
				            <span class="art-PostHeader">Base-Stats for {$character.name}</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">
					<table>
						<tr>
							<th class="top" style="width:140px">STR</td>
							<td>{$character.str}</td>
						</tr>
						<tr>
							<th class="top">CON</td>
							<td>{$character.con}</td>
						</tr>
						<tr>
							<th class="top">ACC</td>
							<td>{$character.acc}</td>
						</tr>
						<tr>
							<th class="top">SPR</td>
							<td>{$character.spr}</td>
						</tr>
						<tr>
							<th class="top">AGI</td>
							<td>{$character.agi}</td>
						</tr>
						<tr>
							<th class="top">LUK</td>
							<td>{$character.luk}</td>
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
				            <span class="art-PostHeader">Other Data</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">

			<table>
				<tr>
					<th class="top" style="width:140px">Char-Type</td>
					<td>{$character.char}</td>
				</tr>
				<tr>
					<th class="top">Class</td>
					<td>{$character.job}</td>
				</tr>
				<tr>
					<th class="top">Level</td>
					<td>{$character.level} ({$character.exp} Exp)</td>
				</tr>
				<tr>
					<th class="top">Gold</td>
					<td>{$character.gold}</td>
				</tr>
				<tr>
					<th class="top">Guild</td>
					<td>{$character.guild}</td>
				</tr>
				<tr>
					<th class="top">Attribute-Points</td>
					<td>{$character.ap}</td>
				</tr>
				<tr>
					<th class="top">Skill-Points</td>
					<td>{$character.tp}</td>
				</tr>
			</table>


				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>

                
{include file='file:core/footer.tpl'}