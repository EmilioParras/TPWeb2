<?php
require_once './app/models/zapatillas.model.php';
require_once './app/views/zapatillas.view.php';
require_once './app/helpers/auth.helper.php';
require_once './app/models/CategoryModel.php';

    class ZapatillasController  {
        
        private $model;
        private $shoesview;
        private $categoryModel;
        private $email;
    
        public function __construct() {
            $this->model = new ZapatillasModel();
            $this->categoryModel = new CategoryModel();
            $this->shoesview = new ZapatillasView();
            session_start(); 
            $this->setEmail();
        }

        public function setEmail() {
            if (isset ($_SESSION['EMAIL_USER'])){
                $this->email = $_SESSION['EMAIL_USER'];
            } 
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

        public function showShoeById($id) {
            $oneshoe = $this->model->getShoe($id);
            $this->shoesview->showOneShoe($oneshoe);
        }

}