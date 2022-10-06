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
    case 'inicio' : 
        $zapatillasController->showZapatillas();
        break;
    case 'zapatillas' :
        $zapatillasController->showZapatillas();
        break;
    case 'urban-shoes' :
        $zapatillasController->showUrbanShoes();
        break;
    case 'deportive-shoes' :
        $zapatillasController->showDeportiveShoes();
        break;     
    case 'acerca-de' :
        $zapatillasController->aboutUs();
        break;
    case 'contactanos' :
        $zapatillasController->contactUs();
        break;
    case 'iniciar-sesion' :
        $zapatillasController->login();
        break;
    case 'registrarse' :
        $zapatillasController->register();
        break;
    default:
        echo('404 Page not found');
        break;
}