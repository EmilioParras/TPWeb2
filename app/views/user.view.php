<?php
require_once './librerias/Smarty/libs/Smarty.class.php';

class UserView {
    
    private $smarty;

        public function __construct () {
            $this->smarty = new Smarty();
        }

        public function showFormLogin($error = null) {
            $this->smarty->assign("error", $error);
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/loginTemplates/login.tpl');
        }

        public function showFormRegister () {
            $this->smarty->display('templates/header.tpl');
            $this->smarty->display('templates/loginTemplates/register.tpl');
        }
    }