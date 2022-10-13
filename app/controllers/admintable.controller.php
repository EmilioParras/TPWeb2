<?php

require_once './app/models/zapatillas.model.php';
require_once './app/views/admintable.view.php';
require_once './app/helpers/auth.helper.php';

    class AdminController {

        private $model;
        private $shoesview;
    
        public function __construct() {
            $this->model = new ZapatillasModel();
            $this->adminview = new AdminView();     
        }        

        public function showAdminTable() {
            // $this->authHelper->checkLogged();

            $allZapatillas = $this->model->getAllZapatillas();
            $this->adminview->showAdminTable($allZapatillas);
        }

        public function addProduct() {
            // $this->authHelper->checkLogged();

            $nombre = $_POST['addNombre']; 
            $marca = $_POST['addMarca'];
            $precio = $_POST['addPrecio'];
            $talles = $_POST['addTalles'];
            $category = $_POST['addCategory'];
            //$imagen = $_POST['addImagen'];
            
            $product = $this->model->insertProduct($nombre, $marca, $precio, $talles, /*$imagen,*/ $category);


            header("Location: " . ADMINTABLE);

        }
        
        public function deleteShoe($id) {
            // $this->authHelper->checkLogged();

            $this->model->deleteShoe($id);
            header("Location: " . ADMINTABLE);
        }

        public function editShoe($id) {
            $shoe = $this->model->editShoeById($id);
            $this->adminview->showEditTable($shoe);

        }

        public function sendEditShoe($id) {
            $eNombre = $_POST['editNombre']; 
            $eMarca = $_POST['editMarca']; 
            $ePrecio = $_POST['editPrecio']; 
            $eTalles = $_POST['editTalle']; 
            $eCategory = $_POST['editCategory']; 
            
            $this->model->updatedShoeById($id, $eNombre, $eMarca, $ePrecio, $eTalles, $eCategory);
            header("Location: " . ADMINTABLE);
        }
}