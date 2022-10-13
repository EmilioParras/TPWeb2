<section class="vh-100 gradient-custom">
<div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
      <div class="card bg-dark text-white" style="border-radius: 1rem;">
        <div class="card-body p-5 text-center">

          <div>
              <h2 class="fw-bold mb-2 text-uppercase">Iniciar Sesion</h2>
              <p class="text-white-50 mb-5">Por favor ingresa tu email y contraseña</p>
              
              <form action="registrarse" method="POST">
                <div class="form-outline form-white mb-4">
                <label class="form-label" for="typeNameX">Nombre</label>
                  <input name="rnombre" type="text" id="typeNameX" class="form-control form-control-lg" />
                </div>
                
                <div class="form-outline form-white mb-4">
                <label class="form-label" for="typeSubnameX">Apellido</label>
                  <input name="rapellido" type="text" id="typeEmailX" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4">
                <label class="form-label" for="typeSubnameX">Telefono</label>
                  <input name="rtelefono" type="tel" id="typeNumberX" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4">
                <label class="form-label" for="typeEmailX">Email</label>
                  <input name="remail" type="email" id="typeEmailX" class="form-control form-control-lg" />
                </div>

                <div class="form-outline form-white mb-4">
                <label class="form-label" for="typePasswordX">Contraseña</label>
                  <input name="rcontraseña" type="password" id="typePasswordX" class="form-control form-control-lg" />
                </div>
            </form>  
              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="inicio">Olvidaste tu contraseña?</a></p> 

              <button class="btn btn-outline-light btn-lg px-5" type="submit">Registrarse</button>

          </div>

          <div>
            <p class="mb-0 mt-5">Ya tienes una cuenta? <a href="iniciar-sesion" class="text-white-50 fw-bold">Inciar sesion</a>
            </p>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>
</section>