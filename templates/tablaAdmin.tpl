
<table class="table table-striped table-bordered table-responsive ">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Nombre</th>
        <th scope="col">Marca</th>
        <th scope="col">Precio</th>
        <th scope="col">Talles Disponibles</th>
        <th scope="col">Imagen</th>
        <th scope="col">Categoria</th>
        <th scope="col">Opciones</th>
      </tr>
    </thead>
    <tbody>
    {foreach from=$informacionTablaAdmin item=$tableInfo}  
      <tr>
        <th scope="row">{$tableInfo->id}</th>
        <td>{$tableInfo->nombre}</td>
        <td>{$tableInfo->marca}</td>
        <td>{$tableInfo->precio}</td>
        <td>{$tableInfo->talle}</td>
        <td>{$tableInfo->imagen}</td>
        <td>{$tableInfo->id_categoria_fk}</td>
        <td><a href='borrar/{$tableInfo->id}' type="button" class="btn btn-danger">Borrar</a></td>
      </tr>
    {/foreach} 
      
    </tbody>
  </table>