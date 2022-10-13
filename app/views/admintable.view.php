<?php

require_once './librerias/Smarty/libs/Smarty.class.php';

Class AdminView {

    private $smarty;

    public function __construct () {
        $this->smarty = new Smarty();
    }

    public function showAdminTable($allTableInfo) {
        $this->smarty->assign('informacionTablaAdmin', $allTableInfo);
        $this->smarty->display('templates/header.tpl');
        $this->smarty->display('templates/adminSite/tablaAdmin.tpl');
    }

    public function showAddTable() {
        $this->smarty->display('templates/header.tpl');
        $this->smarty->display('templates/adminSite/agregarProducto.tpl');
    }

    public function showEditTable($shoe) {
        $this->smarty->assign('editedShoe', $shoe);
        $this->smarty->display('templates/header.tpl');
        $this->smarty->display('templates/adminSite/editTable.tpl');
    }
}