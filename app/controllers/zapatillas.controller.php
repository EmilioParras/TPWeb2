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

            public function showZapatillas() {
                $todasZapatillas = $this->model->getAllZapatillas();
                $this->view->showZapatillas($todasZapatillas);
            }

            public function showUrbanShoes() {
                $urbanShoes = $this->model->getUrbanShoes();
                $this->view->showUrbanShoes($urbanShoes);
            }

            public function showDeportiveShoes() {
                $deportiveShoes = $this->model->getDeportiveShoes();
                $this->view->showDeportiveShoes($deportiveShoes);
            }

            public function acercaDe() {
                $this->view->acercaDe();
            }

            public function  login()  {
                // $this->model->registrarUser();
                $this->view->login();
            }

            public function  register()  {
                // $this->model->registrarUser();
                $this->view->register();
            }

            public function contactUs() {

            }

           
}