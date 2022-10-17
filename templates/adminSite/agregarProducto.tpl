
<section class="vh-100 gradient-custom">
<div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-6 col-md-6 col-lg-6 col-xl-6">
            <div class="card bg-dark text-white" style="border-radius: 1rem;">
                <div class="card-body p-5 text-center">
                    <form action='add-zapa' method="POST" enctype="multipart/form-data" class="my-4">
                        <div class="row">
                            <div class="form-group">
                                <h1>Agregar producto</h1>
                                <div class="form-outline form-white mb-4">
                                    <label>Nombre</label>
                                    <input name="addNombre" type="text" class="form-control">
                                </div>
                                <div class="form-outline form-white mb-4">
                                    <label>Marca</label>
                                    <input name="addMarca" type="text" class="form-control">
                                </div>    
                                <div class="form-outline form-white mb-4">    
                                    <label>Precio</label>
                                    <input name="addPrecio" type="text" class="form-control">
                                </div>
                                <div class="form-outline form-white mb-4">   
                                    <label>Talles disponibles</label>
                                    <input name="addTalles" type="text" class="form-control">
                                </div>
                                <div class="form-outline form-white mb-4">   
                                    <label>Imagen</label>
                                    <input name="input_name" type="file" class="form-control">
                                </div>
                                <div class="form-outline form-white mb-4">  
                                <label>Categoria</label>
                                <select id="addCategory" name="addCategory" class="form-control">
                                {foreach from=$categorias item=$categoria}    
                                        <option value="{$categoria->id}">{$categoria->nombreCategoria}</option>
                                {/foreach}
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Agregar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
