<?php
ob_start(); //no me redirigía los header sin esta función
//Aqui van todas las acciones que queremos hacer sobre los comics
function inicio()
{
    //Pasa a la vista toda la informacion que se desea representar
    include 'main.php'; //se lo pasamos a la vista especifica
}

function login(){

    include('./views/index_view.php');
    // Comprueba si el formulario ha sido enviado.
    // Si se ha enviado, comienza el proceso el formulario y guarda los datos en la BBDD
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Obtenemos los datos del formulario, nos aseguramos que son validos. Está en el ejemplo completo PDO
        $username = htmlspecialchars($_POST['username']);
        $pass = htmlspecialchars($_POST['pass']);

        // Comprueba que todos campos han sido introducidos
        if ($username == '' || $pass == '') {
            // Genera el mensaje de error
            $error = 'ERROR: Por favor, introduce todos los campos requeridos.!';

        } else {
            require ('./models/users_model.php');
            $user = verifyLogin($username, $pass);
        }
    }
}

function registarUsuario(){

    include('./views/user_registar_view.php');
    // Comprueba si el formulario ha sido enviado.
    // Si se ha enviado, comienza el proceso el formulario y guarda los datos en la BBDD
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Obtenemos los datos del formulario, nos aseguramos que son validos. Está en el ejemplo completo PDO
        $username = htmlspecialchars($_POST['username']);
        $pass = htmlspecialchars($_POST['pass']);
        $rol = htmlspecialchars($_POST['rol']);
        $department = htmlspecialchars($_POST['department']);
        $name = htmlspecialchars($_POST['name']);
        $surname = htmlspecialchars($_POST['surname']);
        $mail = htmlspecialchars($_POST['mail']);
        $address = htmlspecialchars($_POST['address']);
        $phone = htmlspecialchars($_POST['phone']);
        $photo = htmlspecialchars($_POST['photo']);

        // Comprueba que todos campos han sido introducidos
        if ($username == '' || $pass == '' || $rol == '' || $phone == '') {
            // Genera el mensaje de error
            $error = 'ERROR: Por favor, introduce todos los campos requeridos.!';
        } else {
            require ('./models/users_model.php');
            $user = addUser($username, $pass, $rol, $department, $name, $surname, $mail, $address, $phone, $photo);
        }
    }
}

function logout() {
    require ('./models/users_model.php');
    $user = cerrarSesion();
}






