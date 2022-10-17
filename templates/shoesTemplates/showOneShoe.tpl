{include file="header.tpl" }

<section class="vh-100 gradient-custom">
<div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      <div class="card bg-dark text-white" style="border-radius: 1rem;">
        <div class="card-body p-5 text-center">

          <div>
              <h2 class="fw-bold mb-2 text-uppercase"><p class="text-white">{$oneShoeById->nombre}</p></h2>
          </div>
            <div class="container d-flex justify-content-center">
                <div class="align-items-center">
                <img src="{$oneShoeById->imagen}" class="card-img-top" alt="{$oneShoeById->nombre}">
                            <div class="card mt-5 mx-5 col-xl-2" style="width: 20rem;">
                                <div class="card-body">
                                <h2 class="text-black text-uppercase">Informacion:</h2>
                                <p class="text-black">Nombre: {$oneShoeById->nombre}</p>
                                <p class="text-black">Marca: {$oneShoeById->marca}</p>
                                <p class="text-black">Precio: {$oneShoeById->precio}$</p>
                                <p class="text-black">Talles disponibles: {$oneShoeById->talle}</p>
                                </div>
                            </div>
                </div>
            </div>     
        </div>
      </div>
    </div>
  </div>
</div>
</section>

