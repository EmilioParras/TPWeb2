<?php
require_once './app/controllers/zapatillas.controller.php';
require_once './app/controllers/functional.controller.php';


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home'; 
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

$zapatillasController = new ZapatillasController();
$functionalController = new FunctionalController();

switch ($params[0]) {
    case 'inicio' : 
        $zapatillasController->showZapatillas();
        break;
    case 'zapatillas-urbanas' :
        $zapatillasController->showUrbanShoes();
        break;
    case 'zapatillas-deportivas' :
        $zapatillasController->showDeportiveShoes();
        break;     
    case 'acerca-de' :
        $functionalController->aboutUs();
        break;
    case 'contactanos' :
        $zapatillasController->contactUs();
        break;
    case 'iniciar-sesion' :
        $functionalController->login();
        break;
    case 'registrarse' :
        $functionalController->register();
        break;
    case 'tabla-administrador' :
        $zapatillasController->showAdminTable();
        break;
    case 'borrar':
        $ZapatillasController = new ZapatillasController();
        $id = $params[1];
        $ZapatillasController->deleteShoe($id);
        break;

    case 'edit' :
    default:
        echo('404 Page not found');
        break;
}