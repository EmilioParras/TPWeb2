{include file="header.tpl"}

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-6">
            <h1>Zapatillas Deportivas</h1>
            <ul>
                {foreach from=$zapatillas item=$zapa}
                    <div class="card mt-5" style="width: 18rem;">
                        <img src="{$zapa->imagen}" class="card-img-top" alt="{$zapa->nombre}">
                        <div class="card-body">
                            <h5 class="card-title">{$zapa->nombre}</h5>
                            <p class="card-text">Talles disponibles: {$zapa->talle}</p>
                            <p class="card-text">Precio: {$zapa->precio}$</p>
                            <a href="home" class="btn btn-primary">Ver detalles</a>
                        </div>
                    </div>
                {/foreach}
            </ul> 
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4 col-xl-6">
            <h1 class="">Zapatillas Urbanas</h1>
            <ul>
                {foreach from=$zapatillas item=$zapa}
                <div class="card" style="width: 18rem;">
                    <img src="..." class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{$zapa->nombre}</h5>
                        <p class="card-text">Talles disponibles: {$zapa->talle}</p>
                        <p class="card-text">Precio: {$zapa->precio}</p>
                        <a href="home" class="btn btn-primary">Ver detalles</a>
                    </div>
                </div>
                {/foreach}
            </ul> 
        </div>
    </div>
</div>


   </body>
{include file="footer.tpl"}