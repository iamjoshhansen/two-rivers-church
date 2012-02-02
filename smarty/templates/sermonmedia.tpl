{include file='header.tpl'}

<div id="sermon_play_container">

	<iframe src="http://player.vimeo.com/video/{$sermon_play}?title=0&amp;byline=0&amp;portrait=0&amp;color=168FF8" width="468" height="350" frameborder="0"></iframe>

</div>

<!--<div style="text-align:center;float:left;margin-top:30px;">
	<div style="width:936px;">
		{foreach from=$sermon_array item=sermon name=foo}
		<div style="width:180;clear:none;float:left;">
			<span style="">Ephesians 1:1-4</span>
			<img src="images/series/{$sermon.thumbnail}" onclick="sermon_activate({$sermon.vimeo_number})" width="180" />
		</div>
		{/foreach}
	</div>
</div>-->

<div class="scroll-pane ui-widget ui-widget-header ui-corner-all" style="margin-bottom:20px;background:transparent;border:none;">
	<div class="scroll-content">
		{foreach from=$sermon_array item=sermon name=foo}
			<div class="scroll-content-item ui-widget-header" style="background:transparent;border:0;">
				<span style="font-size:12px;">{$sermon.passage}</span><br />
				<img src="images/series/{$sermon.thumbnail}" onclick="sermon_activate({$sermon.vimeo_number})" width="140" />
			</div>
		{/foreach}
	</div>
	<div class="scroll-bar-wrap ui-widget-content ui-corner-all">
		<div class="scroll-bar"></div>
	</div>
</div>


{include file='footer.tpl'}
