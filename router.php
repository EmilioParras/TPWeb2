<?php
require_once './app/controllers/zapatillas.controller.php';
require_once './app/controllers/auth.controller.php';


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home'; 
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

$zapatillasController = new ZapatillasController();
$authController = new AuthController();

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
    case 'acerca-de' :
        $authController = new AuthController();
        $authControllerauthController->aboutUs();
        break;
    case 'contactanos' :
        $zapatillasController = new ZapatillasController();
        $zapatillasController->contactUs();
        break;
    case 'iniciar-sesion' :
        $authController = new AuthController();
        $authController->showFormLogin();
        break;
    case 'registrarse' :
        $authController = new AuthController();
        $authController->register();
        break;
    case 'tabla-administrador' :
        $zapatillasController = new ZapatillasController();
        $zapatillasController->showAdminTable();
        break;
    case 'borrar':
        $ZapatillasController = new ZapatillasController();
        $id = $params[1];
        $ZapatillasController->deleteShoe($id);
        break;
    // case 'edit' : 
    //     $functionalController = new FunctionalController();
    //     $id = params
    //     break;
    default:
        echo('404 Page not found');
        break;
}