<?php
require_once './app/models/user.model.php';
require_once './app/views/user.view.php';



    class AuthController {

        private $model; 
        private $authview; 

        public function __construct() {
            $this->model = new UserModel();
            $this->userview = new UserView();
        }

        public function showFormLogin()  {
            $this->userview->showFormLogin();
        }

        public function validateUser() {
                // tomo los datos del form
                $email = $_POST['email'];
                $contrasenia = $_POST['password'];
                $contrasenia_has = $hash = password_hash($contrasenia, PASSWORD_DEFAULT);

                $user = $this->model->getUserByEmail($email);

                // verifico que el usuario exista y que los datos coincidan
                if ($user && password_verify($contrasenia, $user->password)) {
                
                    // inicio una sesion para este usuario
                    session_start();
                    $_SESSION['USER_ID'] = $user->id;
                    $_SESSION['USER_EMAIL'] = $user->email;
                    $_SESSION['IS_LOGGED'] = true;
                 
                header("Location: " . INICIO );    
            } else {
                $this->userview->showFormLogin("El usuario o la contraseña son incorrectos");
            }
        }

        public function register() {
            $nombre = $_POST['rnombre'];
            $apellido = $_POST['rapellido'];
            $telefono = $_POST['rtelefono'];
            $email = $_POST['remail'];
            $contraseña = $_POST['rcontraseña'];
            
            $this->model->register();
            $this->userview->showFormRegister();
        }

        public function logout() {
            session_start();
            session_destroy();
            header ("Location: " . BASE_URL);
        }

}
