<?php
require_once './librerias/Smarty/libs/Smarty.class.php';

    class CategoryView {

        private $smarty;

        public function __construct() {
            $this->smarty = new Smarty();
        }
        
        public function showAllCategorias($categorias) {
            $this->smarty->assign('categorias', $categorias);
        }

        public function ZapatillasByCategoria($zapatillasById, $categorias, $email = null) {
            $this->smarty->assign('email', $email);
            $this->smarty->assign('zapatillasById', $zapatillasById);
            $this->smarty->assign('showCategorias', $categorias);
            $this->smarty->display('header.tpl');
        }

        public function showAdminTableCategorias($allCategorias) {
            $this->smarty->assign('informacionTablaAdminCategorias', $allCategorias);
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/adminSite/tablaAdminCategory.tpl');
        }

        public function showEditTable($category) {
            $this->smarty->assign('categoria', $category);
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/adminSite/editTableCat.tpl');
        }
    }