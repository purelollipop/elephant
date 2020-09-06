<table class="aa02_table" width="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="r_h2" colspan="2">商品详细  <a href="object.php?t=object&us=1" style="float:right;">返回</a></td>
    </tr>
    <tbody>
        <tr>
            <td width="15%" align="right">商品名称：</td>
            <td width="30%">
                {$object.name}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">类别：</td>
            <td width="30%">
                {$object.type_str}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">系列：</td>
            <td width="30%">
                {$object.group_str}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">系列编号：</td>
            <td width="30%">
                {$object.group_code}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">款式：</td>
            <td width="30%">
                {$object.sub_str}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">款式编号：</td>
            <td width="30%">
                {$object.sub_code}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">库存：</td>
            <td width="30%">
                {$object.count}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">均进价：</td>
            <td width="30%">
                ¥ {$object.pricein}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">均出价：</td>
            <td width="30%">
                ¥ {$object.priceout}
            </td>
        </tr>
        <tr>
            <td width="15%" align="right">货源地情况：</td>
            <td width="30%">
                {$object.note}
            </td>
        </tr>
        
        <tr>
            <td width="15%" align="right">所有规格信息：</td>
            <td width="30%">
                 <table class="aa02_table" width="100" border="0" align="center" cellpadding="0" cellspacing="0">
                 	<tr>
                        <td>
                            规格名
                        </td>
                        <td>
                            均进价
                        </td>
                        <td>
                            均出价
                        </td>
                        <td>
                            库存
                        </td>
                    </tr>
                    {foreach $stylelist as $one}
                    <tr>
                        <td>
                            {$one.name}
                        </td>
                        <td>
                            {$one.pricein}
                        </td>
                        <td>
                            {$one.priceout}
                        </td>
                        <td>
                            {$one.count}
                        </td>
                    </tr>
                    {foreachelse}
                    <tr>
                        <td colspan="4" align="center">没有记录</td>
                    </tr>
                    {/foreach}
                </table>                    	
            </td>
        </tr>
    </tbody>
</table>
<table class="aa02_table" width="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="r_h2" colspan="6">进货列表</td>
    </tr>
    <tbody>
        <tr>
            <td>时间</td>
            <td>货源地</td>
            <td>规格</td>
            <td>总数</td>
            <td>总价</td>
            <td>操作员</td>
        </tr>            
        {foreach $inlist as $one}
        <tr>
            <td>{$one.time}</td>
            <td>{$one.fin_str}</td>
            <td>{$one.style_str}</td>
            <td>{$one.count}</td>
            <td>{$one.case}</td>
            <td>{$one.manage_str}</td>
        </tr>
        {foreachelse}
        <tr>
            <td colspan="6" align="center">没有记录</td>
        </tr>
        {/foreach}
    </tbody>
</table>
<table class="aa02_table" width="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td class="r_h2" colspan="6">出货列表</td>
    </tr>
    <tbody>
        <tr>
            <td>时间</td>
            <td>代理商</td>
            <td>规格</td>
            <td>总数</td>
            <td>总价</td>
            <td>操作员</td>
        </tr>            
        {foreach $outlist as $one}
        <tr>
            <td>{$one.time}</td>
            <td>{$one.fout_str}</td>
            <td>{$one.style_str}</td>
            <td>{$one.count}</td>
            <td>{$one.case}</td>
            <td>{$one.manage_str}</td>
        </tr>
        {foreachelse}
        <tr>
            <td colspan="6" align="center">没有记录</td>
        </tr>
        {/foreach}
    </tbody>
</table>