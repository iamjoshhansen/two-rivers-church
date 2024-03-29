{include file='header.tpl'}

{if $sub=='currentseries'}
	{$current_series = $series_array[0]}
	{$sermon_play = $current_series->sermons[0]}
	
	<!--The active sermon portion at the top of the stage-->
	<div id="sermon_play_title" class="head" style="width:100%;text-align:center;margin:1em 0em;">{$sermon_play->title}</div>
	<div id="sermon_play_leftcontent">
		<div class="title" style="margin:.5em 0em 1em 0em;">{$sermon_play->title}</div>
		<div class="content">{$sermon_play->description}</div>
	</div>
	<div id="sermon_play_container">
		<iframe id="sermon_play_iframe" src="http://player.vimeo.com/video/{$sermon_play->id}" frameborder="0"></iframe>
	</div>
	<div id="sermon_play_rightcontent">
		<div class="title" style="margin:.5em 0em 1em 0em;">{$current_series->title}</div>
		<div class="content">{$current_series->description}</div>
	</div>

	<!--The staged sermon row below the active sermon-->
	<div class="scroll-pane ui-widget ui-widget-header ui-corner-all" style="margin-bottom:20px;background:transparent;border:none;">
		<div class="scroll-content">
			{foreach from=$current_series->sermons item=sermon name=foo}
				<div id="sermon_staged_{$sermon->id}"
					class="scroll-content-item ui-widget-header sermon_staged{if $sermon->id == $sermon_play->id}_active{/if}"
					style="background:transparent;border:0;"
					onclick="sermon_activate( {$sermon|@json_encode|escape} );">
					
					<span style="font-size:12px;">{$sermon->title}</span><br />
					<img src="{$sermon->thumbnails->thumbnail[0]->_content}" />
				</div>
			{/foreach}
		</div>
		<div class="scroll-bar-wrap ui-widget-content ui-corner-all">
			<div class="scroll-bar"></div>
		</div>
	</div>

{elseif $sub=='sermons'}

{elseif $sub=='media'}

{else}

{/if}

{include file='footer.tpl'}
