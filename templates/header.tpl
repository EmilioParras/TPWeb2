<!DOCTYPE html>
<html lang="en">
<head>
    <base href="{BASE_URL}">
    <link rel="icon" href="https://cdn-icons-png.flaticon.com/512/2113/2113286.png">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>Just Us Store</title>
</head>

<header>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container-fluid">
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarExample01"
        aria-controls="navbarExample01"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link text-black" aria-current="page" href="inicio">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-black" href="iniciar-sesion">Logearse</a>
          </li>
          <li class="nav-item">
            <div class="dropdown">
              <a class="btn dropdown-toggle" href="inicio" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Zapatillas
              </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="zapatillas-urbanas">Zapatillas Urbanas</a></li>
                <li><a class="dropdown-item" href="zapatillas-deportivas">Zapatillas Deportivas</a></li>
              </ul>
            </div>
          </li>
          {* {if !isset($smarty.session.USER_ID)}
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="iniciar-sesion">Login</a>
            </li>
          {else} 
            <li class="nav-item ml-auto">
              <a class="nav-link" aria-current="page" href="logout">Logout ({$smarty.session.USER_EMAIL})</a>
            </li>
          {/if} *}

          <li class="nav-item">
            <div class="dropdown">
              <a class="btn dropdown-toggle" href="inicio" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Admin site
              </a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                <li><a class="dropdown-item" href="tabla-administrador">Tabla de productos</a></li>
              </ul>
            </div>
          </li>
          </ul>
          <a href="iniciar-sesion"><img class="d-flex mx-3" width="70px" height="70px" src="./imagenes/login.png" alt="icono"></a>
      </div>
    </div>
  </nav>
  <!-- Navbar -->

  <div class="p-5 text-center bg-light shadow-lg p-3 mb-5 bg-body rounded">
    <h1 class="display-1 mb-3 text-black">Just Us Store</h1>
  </div>
  
</header>

