<?php
require_once './app/controllers/zapatillas.controller.php';

define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home'; 
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);

$zapatillasController = new ZapatillasController();


switch ($params[0]) {
    case 'home' : 
        $zapatillasController->showHome();
        break;
    case 'zapatillas' :   
        $zapatillasController->showZapatillas();
        break;
    case 'como_comprar' :
        $zapatillasController->comoComprar();
    case 'contactanos' :
        $zapatillasController->contactanos();
    default:
        echo('404 Page not found');
        break;

}