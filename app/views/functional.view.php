<?php
require_once './librerias/Smarty/libs/Smarty.class.php';

class FunctionalnView {
    
    private $smarty;

        public function __construct () {
            $this->smarty = new Smarty();
        }

        public function login() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/loginTemplates/login.tpl');
        }

        public function register() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/loginTemplates/register.tpl');
        }

        public function aboutUs() {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/sobreNosotros.tpl');
            $this->smarty->display('templates/footer.tpl');
        }

    }