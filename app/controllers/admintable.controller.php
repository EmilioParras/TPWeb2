<?php
require_once './app/models/CategoryModel.php';
require_once './app/models/zapatillas.model.php';
require_once './app/views/admintable.view.php';
require_once './app/helpers/auth.helper.php';

    class AdminController {

        private $zapaModel;
        private $categoryModel;
        private $adminView;
        private $email;
    
        public function __construct() {
            $this->zapaModel = new ZapatillasModel();
            $this->adminView = new AdminView();    
            $this->categoryModel = new CategoryModel();    
            session_start(); 
            $this->setEmail();
        }      
        
        public function setEmail() {
            if (isset ($_SESSION['EMAIL_USER'])){
                $this->email = $_SESSION['EMAIL_USER'];
            } 
        }

        public function showAdminTableZapatillas() {
            $allZapatillas = $this->zapaModel->getAllZapatillas();
            $this->adminView->showAdminTZapatillas($allZapatillas, $this->email);
        }

        public function addProduct() {

            $nombre = $_POST['addNombre']; 
            $marca = $_POST['addMarca'];
            $precio = $_POST['addPrecio'];
            $talles = $_POST['addTalles'];
            $category = $_POST['addCategory'];
            
            $this->zapaModel->insertProduct($nombre, $marca, $precio, $talles, $category);

            header("Location: " . ADMINTABLEZAPA);
        }
        
        public function deleteShoe($id) {
            $this->zapaModel->deleteShoe($id);
            
            header("Location: " . ADMINTABLEZAPA);
        }

        public function editShoe($id) {
            $shoe = $this->zapaModel->editShoeById($id);
            $this->adminView->showEditTable($shoe);

        }

        public function sendEditShoe($id) {
            $eNombre = $_POST['editNombre']; 
            $eMarca = $_POST['editMarca']; 
            $ePrecio = $_POST['editPrecio']; 
            $eTalles = $_POST['editTalle']; 
            $eCategory = $_POST['editCategory']; 
            
            $this->zapaModel->updatedShoeById($id, $eNombre, $eMarca, $ePrecio, $eTalles, $eCategory);
            header("Location: " . ADMINTABLEZAPA);
        }
}