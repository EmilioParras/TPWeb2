

<section class="vh-100 gradient-custom">
<div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      <div class="card bg-dark text-white" style="border-radius: 1rem;">
        <div class="card-body p-5 text-center">

          <div class="mb-md-5 mt-md-4 pb-5">

            <h2 class="fw-bold mb-2 text-uppercase">Iniciar Sesion</h2>
            <p class="text-white-50 mb-5">Por favor ingresa tu email y contraseña.</p>

            <form method="POST" action="validate">
              <div class="form-outline form-white mb-4">
                <label class="form-label" for="email">Email</label>
                <input type="email" name="logEmail" id="logEmail" class="form-control form-control-lg" required />
              </div>

              <div class="form-outline form-white mb-4">
                <label class="form-label" for="typePasswordX">Contraseña</label>
                <input type="password" name="logPassword" id="logPassword" class="form-control form-control-lg"  required/>
              </div>
              
              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="inicio">Olvidaste tu contraseña?</a></p> 
              
              {if $error} 
                <div class="alert alert-danger mt-3">
                    {$error}
                </div>
              {/if}
              
              <button class="btn btn-outline-light btn-lg px-5" type="submit">Iniciar Sesion</button>
            </form>
          </div>

          <div>
            <p class="mb-0">No tienes una cuenta? <a href="registrarse" class="text-white-50 fw-bold">Registrate ahora!</a>
            </p>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>
</section>
