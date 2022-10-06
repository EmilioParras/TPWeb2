<?php
require_once './app/models/zapatillas.model.php';
require_once './app/views/functional.view.php';



    class FunctionalController {

        public function __construct() {
            $this->model = new ZapatillasModel();
            $this->functionalview = new FunctionalnView();
        }

        public function  login()  {
            // $this->model->logearUser();
            $this->functionalview->login();
        }

        public function  register()  {
            // $this->model->registrarUser();
            $this->functionalview->register();
        }
        
        public function aboutUs() {
            $this->functionalview->aboutUs();
        }
    }
