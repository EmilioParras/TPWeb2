<?php
require_once './librerias/Smarty/libs/Smarty.class.php';

class ZapatillasView {
    
    private $smarty;

        public function __construct () {
            $this->smarty = new Smarty();
        }

        public function showHome() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/home.tpl');
            $this->smarty->display('templates/footer.tpl');
        }


        public function showZapatillas($allZapatillas) {
            $this->smarty->assign('zapatillas', $allZapatillas);
            $this->smarty->display('templates/galeria.tpl');
        }
        
        public function aboutUs() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/sobreNosotros.tpl');
            $this->smarty->display('templates/footer.tpl');
        }

        public function login() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/login.tpl');
        }

        public function register() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/register.tpl');
        }
}
