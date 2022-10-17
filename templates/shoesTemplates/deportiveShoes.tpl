{include file="header.tpl" }


    <div class="container d-flex justify-content-center">
    <div class="align-items-center">
    <h1 class="text-center">Zapatillas Deportivas</h1>
            <ul class="row">
                {foreach from=$zapatillasDeportivas item=$deportiveShoe}
                    <div class="card mt-5 mx-5" style="width: 20rem;">
                        <img src="{$deportiveShoe->imagen}" class="card-img-top" alt="{$deportiveShoe->nombre}">
                        <div class="card-body">
                            <h5 class="card-title">{$deportiveShoe->nombre}</h5>
                            <p class="card-text">Talles disponibles: {$deportiveShoe->talle}</p>
                            <p class="card-text">Precio: {$deportiveShoe->precio}$</p>
                            <a href="show/{$deportiveShoe->id}" class="btn btn-primary">Ver detalles</a>
                        </div>
                    </div>
                {/foreach}
            </ul> 
        </div>
    </div>       