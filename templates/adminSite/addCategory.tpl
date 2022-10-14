
<section class="vh-100 gradient-custom">
    <div class="container py-2">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-6 col-md-6 col-lg-6 col-xl-6">
                <div class="card bg-dark text-white" style="border-radius: 1rem;">
                    <div class="card-body p-5 text-center">
                        <form action="add-category" method="POST" class="my-4">
                            <div class="row">
                                <div class="form-group">
                                    <h1>Agregar nueva categoria</h1>
                                    <div class="form-outline form-white mb-4">
                                        <label>Nombre</label>
                                        <input name="nameCategory" id="nameCategory" type="text" class="form-control">
                                    </div>
                                    <div class="form-outline form-white mb-4">
                                        <label>Descripcion</label>
                                        <input name="categoryDescripcion" id="categoryDescripcion" type="text" class="form-control">
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