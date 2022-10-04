<?php
require_once './app/models/zapatillas.model.php';
require_once './app/views/zapatillas.view.php';

    class ZapatillasController  {
        
        private $model;
        private $view;
    
            public function __construct() {
                $this->model = new ZapatillasModel();
                $this->view = new ZapatillasView();
            }

            public function showHome() {
                $this->view->showHome();
            }

            public function showZapatillas() {
                $todasZapatillas = $this->model->getAllZapatillas();
                $this->view->showZapatillas($todasZapatillas);
            }
           
}