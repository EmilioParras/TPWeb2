<?php
require_once './app/models/user.model.php';
require_once './app/views/auth.view.php';



    class AuthController {

        private $model; 
        private $authview; 

        public function __construct() {
            $this->model = new ZapatillasModel();
            $this->authview = new AuthView();
        }

        public function showFormLogin()  {
            $this->authview->showFormLogin();
        }

        public function validateUser() {
                // tomo los datos del form
                $email = $_POST['email'];
                $password = $_POST['password'];

                $user = $this->model->getUserByEmail($email);

                // verifico que el usuario exista y que los datos coincidan
                if ($user && password_verify($password, $user->password)) {
                session_start();
                $_SESSION['USER_ID'] = $user->id;
                $_SESSION['USER_EMAIL'] = $user->email;
                $_SESSION['IS_LOGGED'] = true;

                header("Location: " . BASE_URL);
            } else {
                // si los datos son incorrectos muestro form con un error
                $this->view->showFormLogin("El usuario o la contraseña son incorrectos");
            }
        }

        public function logout() {
            session_start();
            session_destroy();
            header ("Location: " . BASE_URL);
        }

}
