<form action="add" method="POST" class="my-4">
    <div class="row">
        <div class="col-9">
            <div class="form-group">
                <label>Nombre</label>
                <input name="nombre" type="text" class="form-control">
                <label>Marca</label>
                <input name="marca" type="text" class="form-control">
                <label>Precio</label>
                <input name="price" type="text" class="form-control">
                <label>Talles disponibles</label>
                <input name="talles" type="text" class="form-control">
                <label>Categoria</label>
                <select name="category" class="form-control">
                    <option value="1">Urbana</option>
                    <option value="2">Deportiva</option>
                </select>
            </div>
        </div>

    <button type="submit" class="btn btn-primary mt-2">Agregar</button>
</form>
