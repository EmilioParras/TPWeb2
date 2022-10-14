
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
    {foreach from=$informacionTablaAdminZapatillas item=$tableZapaInfo}  
      <tr>
        <th scope="row">{$tableZapaInfo->id}</th>
        <td>{$tableZapaInfo->nombre}</td>
        <td>{$tableZapaInfo->marca}</td>
        <td>{$tableZapaInfo->precio}</td>
        <td>{$tableZapaInfo->talle}</td>
        <td>{$tableZapaInfo->imagen}</td>
        <td>{$tableZapaInfo->id_categoria_fk}</td>
        <td>
          <a href='borrar-zapa/{$tableZapaInfo->id}' type="button" class="btn btn-danger">Borrar</a> 
          <a href='edit-zapa/{$tableZapaInfo->id}' type="button" class="btn btn-success">Editar</a>
        </td>
      </tr>
    {/foreach} 
      
    </tbody>
  </table>

  {include file="./agregarProducto.tpl"}
