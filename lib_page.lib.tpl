{if $max_page > 1}
{$be_page = $page - 5}
{$la_page = $page + 5}
{$pre_page = $page - 1}
{$nex_page = $page + 1}
{if $be_page < 1}
	{$be_page = 1}
{/if}
{if $la_page > $max_page}
	{$la_page = $max_page}
{/if}
{if $pre_page < 1}
	{$pre_page = 1}
{/if}
{if $nex_page > $max_page}
	{$nex_page = $max_page}
{/if}
{$jump = false}
<div class="page">
	{if $page == 1}
    	&lt;&lt;&nbsp;&lt;&nbsp;
    {else}
    	<a href="{$url}&us=1&p=1">&lt;&lt;</a>&nbsp;
        <a href="{$url}&us=1&p={$pre_page}">&lt;</a>&nbsp;
    {/if}
    
    {if $be_page > 1}
    	...&nbsp;
        {$jump = true}
    {/if}
    
    {for $i=$be_page to $la_page}
    	{if $i == $page}
        <span>{$i}</span>&nbsp;
        {else}
    	<a href="{$url}&us=1&p={$i}">{$i}</a>&nbsp;
        {/if}
    {/for}
    
    {if $la_page < $max_page}
    	...&nbsp;
        <a href="{$url}&us=1&p={$max_page}">{$max_page}</a>&nbsp;
        {$jump = true}
    {/if}
    
    {if $page == $max_page}
    	&gt;&nbsp;&gt;&gt;&nbsp;
    {else}
        <a href="{$url}&us=1&p={$nex_page}">&gt;</a>&nbsp;
        <a href="{$url}&us=1&p={$max_page}">&gt;&gt;</a>&nbsp;
    {/if}
    
    {if $jump}
    	跳转到 
        <input type="hidden" id="page_url" value="{$url}&us=1&p="/>
        <input type="text" id="page_var" value="{$page}"/>
        <input type="button" id="page_jump" value="跳转"/>
    {/if}
</div>
{/if}
