<?php
require_once './app/models/user.model.php';
require_once './app/views/user.view.php';



    class AuthController {

        private $model; 
        private $authview;
        private $email; 

        public function __construct() {
            $this->model = new UserModel();
            $this->userview = new UserView();
            session_start(); 
            $this->setEmail();
        }

        public function setEmail() {
            if (isset ($_SESSION['EMAIL_USER'])){
                $this->email = $_SESSION['EMAIL_USER'];
            } 
        }

        public function showFormLogin()  {
            $this->userview->showFormLogin();
        }

        public function validateUser() {
                // tomo los datos del form
                $email = $_POST['logEmail'];
                $password = $_POST['logPassword'];

                $user = $this->model->getUserByEmail($email);

                // verifico que el usuario exista y que los datos coincidan
                if ($user && password_verify($password, $user->password)) {
                
                    // inicio una sesion para este usuario
                    session_start();
                    $_SESSION['USER_EMAIL'] = $user->email;
                    $_SESSION['IS_LOGGED'] = true;
                 
                header("Location: " . INICIO );  
            } else {
                $this->userview->showFormLogin("El usuario o la contraseña son incorrectos");
            }
        }

        public function logout() {
            session_start();
            session_destroy();
            header ("Location: " . BASE_URL);
        }

}
