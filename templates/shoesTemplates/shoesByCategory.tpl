{include file="header.tpl" }


<div class="container d-flex justify-content-center">
    <div class="align-items-center">
    <h1 class="text-center">Zapatillas</h1>
        <ul class="row">
                {foreach from=$zapatillasById item=$zapatillaId}
                <div class="card mt-5 mx-5" style="width: 20rem;">
                    <img src="{$zapatillaId->imagen}" class="card-img-top" alt="{$zapatillaId->nombre}">
                    <div class="card-body">
                        <h5 class="card-title">{$zapatillaId->nombre}</h5>
                        <p class="card-text">Talles disponibles: {$zapatillaId->talle}</p>
                        <p class="card-text">Precio: {$zapatillaId->precio}$</p>
                    </div>
                </div>
            {/foreach}
        </ul> 
    </div>
</div>       