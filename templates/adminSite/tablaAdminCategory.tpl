<table class="table table-striped table-bordered table-responsive ">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Nombre</th>
        <th scope="col">Descripcion</th>
      </tr>
    </thead>
    <tbody>
    {foreach from=$informacionTablaAdminCategorias item=$tableCatInfo}  
      <tr>
        <th scope="row">{$tableCatInfo->id}</th>
        <td>{$tableCatInfo->id}</td>
        <td>{$tableCatInfo->nombreCategoria}</td>
        <td>{$tableCatInfo->descripcion}</td>
        <td>
          <a href='borrar-category/{$tableCatInfo->id}' type="button" class="btn btn-danger">Borrar</a> 
          <a href='edit-category/{$tableCatInfo->id}' type="button" class="btn btn-success">Editar</a>
        </td>
      </tr>
    {/foreach} 
      
    </tbody>
  </table>

  {include file="./addCategory.tpl"}
