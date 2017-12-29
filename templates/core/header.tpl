<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="3600" />
		<meta name="revisit-after" content="2 days" />
		<meta name="robots" content="index,follow" />
		<title>{$servername}{$pagename}</title>
		<script type="text/javascript" src="{$base_url}/js/script.js"></script>
		<link rel="stylesheet" href="{$base_url}/css/style.css" type="text/css" media="screen" />
		<!--[if IE 6]><link rel="stylesheet" href="{$base_url}/css/style.ie6.css" type="text/css" media="screen" /><![endif]-->
		<!--[if IE 7]><link rel="stylesheet" href="{$base_url}/css/style.ie7.css" type="text/css" media="screen" /><![endif]-->
		<link rel="stylesheet" href="{$base_url}/css/table.css" type="text/css" media="screen" />
		<script type="text/javascript" src="http://www.google.com/jsapi"></script>
		<script>
{literal}
			<!--

			// Load jQuery from google's servers
			google.load("jquery", "1.3.0");

			google.setOnLoadCallback(function() {
				
				$('#jclock1').jclock({
					utc: true,
{/literal}
					utc_offset: {$time_offset} });
{literal}

				$('a.confirm').click(function(event) {

					// Dirty little hack to support IE

					var fakeLink = document.createElement ("a");

					if (typeof(fakeLink.click) == 'undefined')
						location.href = $(this).attr('href');		// sends referrer in FF, not in IE
					else
					{
						fakeLink.href = $(this).attr('href');
						document.body.appendChild(fakeLink);
						fakeLink.click();				// click() method defined in IE only
					}

    				}).confirm();

			});

			-->
{/literal}
		</script>
		<script type="text/javascript" src="{$base_url}/js/jquery.jclock.js"></script>
		<script type="text/javascript" src="{$base_url}/js/jquery.confirm.js"></script>
</head>
<body>
<div id="art-page-background-simple-gradient">
    </div>
    <div id="art-page-background-glare">
        <div id="art-page-background-glare-image"></div>
    </div>
    <div id="art-main">
        <div class="art-Sheet">
            <div class="art-Sheet-tl"></div>
            <div class="art-Sheet-tr"></div>
            <div class="art-Sheet-bl"></div>
            <div class="art-Sheet-br"></div>
            <div class="art-Sheet-tc"></div>
            <div class="art-Sheet-bc"></div>
            <div class="art-Sheet-cl"></div>
            <div class="art-Sheet-cr"></div>
            <div class="art-Sheet-cc"></div>
            <div class="art-Sheet-body">
                <div class="art-nav">
                	<div class="l"></div>
                	<div class="r"></div>
                	<ul class="art-menu">
                		<li><a href="{$script_url}"><span class="l"></span><span class="r"></span><span class="t">Home</span></a></li>
{if $forum_url neq ""}
                		<li><a href="{$forum_url}"><span class="l"></span><span class="r"></span><span class="t">Forum</span></a></li>
{/if}
{if $user.is_logged_in}
                		<li><a href="{$script_url}?act=account"><span class="l"></span><span class="r"></span><span class="t">Your Account</span></a>
                			<ul>
                				<li><a href="{$script_url}?act=account&sact=chars">Your Characters</a></li>
	{if $enable_guild_admin}
                				<li><a href="{$script_url}?act=account&sact=guilds">Your Guilds</a></li>
	{/if}
                				<li><a href="{$script_url}?act=account&sact=changepw">Change Password</a></li>
                				<li><a href="{$script_url}?act=account&sact=changemail">Change eMail</a></li>
                			</ul>
                		</li>
{else}
{if $allow_registration eq true}
                		<li><a href="{$script_url}?act=register"><span class="l"></span><span class="r"></span><span class="t">Register</span></a></li>
{/if}
{/if}
{if $user.is_admin}
                		<li><a href="{$script_url}?act=admin"><span class="l"></span><span class="r"></span><span class="t">Administration</span></a>
                			<ul>
                				<li><a href="{$script_url}?act=admin&sact=rules">Edit Rules</a></li>
                				<li><a href="{$script_url}?act=admin&sact=news">Edit News</a></li>
                				<li><a href="{$script_url}?act=admin&sact=authors">Edit News-Authors</a></li>
                				<li><a href="{$script_url}?act=admin&sact=ncategories">Edit News-Categories</a></li>
                				<li><a href="{$script_url}?act=admin&sact=downloads">Edit Downloads</a></li>
                				<li><a href="{$script_url}?act=admin&sact=dlcategories">Edit D/L-Categories</a></li>
                			</ul>
                		</li>
{/if}
                	</ul>
                </div>
                <div class="art-Header">
                    <div class="art-Header-jpeg"></div>
                    <div class="art-Logo">
                        <h1 id="name-text" class="art-Logo-name">{$servername}</h1>
                        <div id="slogan-text" class="art-Logo-text">{$slogan}</div>
                    </div>
                </div>
                <div class="art-contentLayout">
                    <div class="art-sidebar1">
{include file='file:sidebars/left.tpl'}
                    </div>
                    <div class="art-content">

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
				    <div>
{foreach item=breadcrumb from=$breadcrumbs}
	{if $breadcrumb.url eq ""}
					{$breadcrumb.caption}
	{else}
					<a href="{$breadcrumb.url}">{$breadcrumb.caption}</a> &raquo; 
	{/if}
{/foreach}
				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>
                    