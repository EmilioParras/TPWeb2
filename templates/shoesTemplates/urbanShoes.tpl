
<div class="container d-flex justify-content-center">
    <div class="align-items-center">
    <h1 class="text-center">Zapatillas Urbanas</h1>
            <ul class="row">
                {foreach from=$zapatillasUrbanas item=$urbanShoe}
                    <div class="card mt-5 mx-5 col-xl-2" style="width: 20rem;">
                        <img src="{$urbanShoe->imagen}" class="card-img-top" alt="{$urbanShoe->nombre}">
                        <div class="card-body">
                            <h5 class="card-title">{$urbanShoe->nombre}</h5>
                            <p class="card-text">Talles disponibles: {$urbanShoe->talle}</p>
                            <p class="card-text">Precio: {$urbanShoe->precio}$</p>
                            <a href="show/{$urbanShoe->id}" class="btn btn-primary">Ver detalles</a>
                        </div>
                    </div>
                {/foreach}
            </ul> 
        </div>
    </div>    