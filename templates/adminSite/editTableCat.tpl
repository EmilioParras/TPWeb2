{include file="header.tpl"}
<section class="vh-100 gradient-custom">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-6 col-md-6 col-lg-6 col-xl-6">
                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">
                                <div class="row">
                                    <div class="card-header">   
                                        <h2>Ingresar los nuevos datos:</h2>
                                    </div>
                                    <form class="p-4" method="POST" action="updated-category/{$categoria->id}">
                                        <div class="mb-3">
                                            <label class="form-label">Nombre:</label>
                                            <input type="text" class="form-control" id="editCategoria" name="editCategoria" placeholder="{$categoria->nombreCategoria}">
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label">Descripcion:</label>
                                            <input type="text" class="form-control" id="editDescripcion" name="editDescripcion" placeholder="{$categoria->descripcion}">
                                        </div>
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