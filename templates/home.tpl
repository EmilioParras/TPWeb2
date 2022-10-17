{include file="header.tpl" }

<div class="container d-flex justify-content-center">
    <div class="align-items-center">
    <h1 class="text-center">Zapatillas</h1>
            <ul class="row">
                {foreach from=$zapatillas item=$zapa}
                    <div class="card mt-5 mx-5 col-xl-2" style="width: 20rem;">
                        <img src="{$zapa->imagen}" class="card-img-top" alt="{$zapa->nombre}">
                        <div class="card-body">
                            <h5 class="card-title">{$zapa->nombre}</h5>
                            <p class="card-text">Talles disponibles: {$zapa->talle}</p>
                            <p class="card-text">Precio: {$zapa->precio}$</p>
                            <a href="show/{$zapa->id}" class="btn btn-primary">Ver detalles</a>
                        </div>
                    </div>
                {/foreach}
            </ul> 
        </div>
    </div>                
