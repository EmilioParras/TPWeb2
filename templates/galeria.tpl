{include file="header.tpl"}
        
    <ul>
        {foreach from=$zapatillas item=$zapa}
            <li>
                {$zapa->nombre}
                {$zapa->marca}
                {$zapa->precio}
                {$zapa->talle}
            </li>
        {/foreach}
   </ul> 
</body>
{include file="footer.tpl"}