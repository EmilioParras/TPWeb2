<?php
require_once './app/models/zapatillas.model.php';
require_once './app/views/zapatillas.view.php';

    class ZapatillasController  {
        
        private $model;
        private $shoesview;
    
            public function __construct() {
                $this->model = new ZapatillasModel();
                $this->shoesview = new ZapatillasView();
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

            public function showAdminTable() {
                $allTableInfo = $this->model-> getAllTableInfo();
                $this->shoesview->showAdminTable($allTableInfo);
            }

            public function addShoe() {

                $nombre = $_POST['nombre']; 
                $marca = $_POST['marca'];
                $precio = $_POST['precio'];
                $talles = $_POST['talles'];
                $imagen = $_POST['imagen'];
                $categoria = $_POST['categoria'];

                $id = $this->model->insertShoe($nombre, $marca, $precio, $talles, $imagen, $categoria);

                header("Location: " . BASE_URL); 
            }

            public function deleteShoe($id) {
                $this->model->deleteShoe($id);
                header("Location: " . BASE_URL);
            }

}