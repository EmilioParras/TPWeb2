<section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-6 col-md-6 col-lg-6 col-xl-6">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                                <div class="row">
                                    <div class="card-header">   
                                        Ingresar nuevos datos:
                                    </div>
                                    <form class="p-4" method="POST" action="updated/{$editedShoe->id}">
                                        <div class="mb-3">
                                            <label class="form-label">Nombre:</label>
                                            <input type="text" class="form-control" id="editNombre" name="editNombre" placeholder="{$editedShoe->nombre}">
                                        </div>
                                        <div class="mb-3">  
                                            <label class="form-label">Marca:</label>
                                            <select class="form-control" id="editMarca" name="editMarca">
                                                <option>Nike</option>
                                                <option>Adidas</option>
                                                <option>Jhon Foos</option>
                                                <option>Vans</option>
                                                <option>Topper</option>
                                                <option>Puma</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Precio:</label>
                                            <input type="float" class="form-control" id="editPrecio" name="editPrecio" placeholder="{$editedShoe->precio}$">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Talle:</label>
                                            <input type="text" class="form-control" id="editTalle" name="editTalle" placeholder="{$editedShoe->talle}">
                                        </div>
                                        <div class="mb-3">
                                        <label>Categoria</label>
                                        <select  class="form-control" id="editCategory" name="editCategory">
                                            <option value="1">Urbana</option>
                                            <option value="2">Deportiva</option>
                                        </select>
                                        <button type="submit" class="btn btn-primary mt-5">Editar</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>