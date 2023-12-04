<?php
//La carpeta donde buscaremos los controladores
//define: se usa para definir una constante en tiempo de ejecucion
//const: se usa para definirla en tiempo que se declara1
//preferible usar define
define('CONTROLLERS_FOLDER', 'controllers/');

// si no se indica un controlador, este es el controlador que usará
define('DEFAULT_CONTROLLER', 'users');

// si no se indica una acción, esta acción será la que usará
define('DEFAULT_ACTION', 'login');

//Obtenemos el controlador
//si el usuario no lo introduce, seleccionamos el de por defecto
$controller = DEFAULT_CONTROLLER;
if ( !empty ($_GET['controller']))
    $controller = $_GET['controller'];

//Obtenemos la accion introducida
//Accion por defecto si no es introducida por el usuario
$action = DEFAULT_ACTION;
if ( !empty ($_GET['action']))
    $action = $_GET['action'];

//Ya tenemos el controlador y la accion
//Formamos el nombre del fichero que contiene nuestro controlador
$controller = CONTROLLERS_FOLDER . $controller . '_controller.php';

//si la variable ($controller) es un fichero lo requerimos
if ( is_file($controller))
    require_once ($controller);
else
    die ('El controlador no existe - 404 not found');

//Si la variable $action es una funcion la ejecutamos o detenemos el script
if (is_callable($action))
    $action();
else
    die ('La accion no existe - 404 not found');
?>