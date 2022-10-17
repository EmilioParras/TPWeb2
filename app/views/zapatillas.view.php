<?php
require_once './librerias/Smarty/libs/Smarty.class.php';

class ZapatillasView {
    
    private $smarty;

        public function __construct () {
            $this->smarty = new Smarty();
        }

        public function showZapatillas($allZapatillas, $allCategorias) {
            $this->smarty->assign('categorias', $allCategorias);
            $this->smarty->assign('zapatillas', $allZapatillas);
            $this->smarty->display('templates/home.tpl');
            $this->smarty->display('templates/footer.tpl');

        }

        public function showDeportiveShoes($deportiveShoes) {
            $this->smarty->assign('zapatillasDeportivas', $deportiveShoes);
            $this->smarty->display('templates/shoesTemplates/deportiveShoes.tpl');
            $this->smarty->display('templates/footer.tpl');

        }

        public function showUrbanShoes($urbanShoes) {
            $this->smarty->assign('zapatillasUrbanas', $urbanShoes);
            $this->smarty->display('templates/shoesTemplates/urbanShoes.tpl');
            $this->smarty->display('templates/footer.tpl');
        }

        public function showOneShoe($oneshoe) {
            $this->smarty->assign('oneShoeById', $oneshoe);
            $this->smarty->display('templates/shoesTemplates/showOneShoe.tpl');
        }
        
}
