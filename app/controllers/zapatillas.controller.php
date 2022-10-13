<?php
require_once './app/models/zapatillas.model.php';
require_once './app/views/zapatillas.view.php';
require_once './app/helpers/auth.helper.php';

    class ZapatillasController  {
        
        private $model;
        private $shoesview;
        // private $authHelper;
    
            public function __construct() {
                $this->model = new ZapatillasModel();
                $this->shoesview = new ZapatillasView();
                // $this->authHelper = new AuthHelper();
            }

            public function showZapatillas() {
                $todasZapatillas = $this->model->getAllZapatillas();
                $this->shoesview->showZapatillas($todasZapatillas);
            }

            public function showUrbanShoes() {
                $urbanShoes = $this->model->getUrbanShoes();
                $this->shoesview->showUrbanShoes($urbanShoes);
            }

            public function showDeportiveShoes() {
                $deportiveShoes = $this->model->getDeportiveShoes();
                $this->shoesview->showDeportiveShoes($deportiveShoes);
            }

            public function showShoe($id) {
                $oneshoe = $this->model->getShoe($id);
                $this->shoesview->showOneShoe($oneshoe);
            }

}