<?php
require_once './app/controllers/zapatillas.controller.php';
require_once './app/controllers/admintable.controller.php';
require_once './app/controllers/auth.controller.php';


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
define("LOGIN", BASE_URL . 'iniciar-sesion');
define("INICIO", BASE_URL . 'inicio');
define("ADMINTABLE", BASE_URL . 'tabla-administrador');
define("ADD", BASE_URL . 'add');




$action = 'inicio'; 
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

switch ($params[0]) {
    case 'inicio' : 
        $zapatillasController = new ZapatillasController();
        $zapatillasController->showZapatillas();
        break;
    case 'zapatillas-urbanas' :
        $zapatillasController = new ZapatillasController();
        $zapatillasController->showUrbanShoes();
        break;
    case 'zapatillas-deportivas' :
        $zapatillasController = new ZapatillasController();
        $zapatillasController->showDeportiveShoes();
        break;
    case 'show' :
        $zapatillasController = new ZapatillasController();
        $id = $params[1];
        $zapatillasController->showShoe($id);     
        break;   
    case 'iniciar-sesion' :
        $authController = new AuthController();
        $authController->showFormLogin();
        break;
    case 'validate' :
        $authController = new AuthController();
        $authController->validateUser();
    case 'registrarse' :
        $authController = new AuthController();
        $authController->register();
        break;
    case 'tabla-administrador' :
        $adminTableController = new AdminController();
        $adminTableController->showAdminTable();
        break;
    case 'add' :
        $adminTableController = new AdminController();
        $adminTableController->addProduct();
        break;   
    case 'borrar':
        $adminTableController = new AdminController();
        $id = $params[1];
        $adminTableController->deleteShoe($id);
        break;
    case 'edit' : 
        $adminTableController = new AdminController();
        $id = $params[1];
        $adminTableController->editShoe($id);
        break;
    case 'updated' :
        $adminTableController = new AdminController();
        $id = $params[1];
        $adminTableController->sendEditShoe($id);
        break;    
    default:
        echo('no anda');
        break;
}