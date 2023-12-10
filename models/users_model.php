<?php

include "./config/onTimeApi.php"; //se lo pasamos a la vista especifica

/**
 * Función para verificar que existe el usuario y la contraseña
 */
function verifyLogin($username, $pass) {
    $urlLogin = BASE_URL.'users/login?username='.$username.'&pass='.$pass; //URL del Método de Login en la API
    $ch = curl_init($urlLogin);

    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); // recuperamos los datos
    $result = curl_exec($ch);
    curl_close($ch);

    $userApi = json_decode($result, true); // Métomos los datos en una variable

//    echo "<script> console.log($result);</script>";
//    echo "<script> console.log($userApi);</script>";

        if ($userApi != null) {
            session_start();          //Iniciamos la sesión para luego recuperarla
            $_SESSION['id']=$userApi['id']; //añadimos el id
            $_SESSION['username']=$userApi['username']; //añadimos el username
            $_SESSION['rol']=$userApi['rol']; //añadimos el rol

            if (strcasecmp($_SESSION['rol'],'ADMIN') == 0) {
                header('Location: main.php');
            } else {
                echo "<script>alert('No tienes permisos para usar OnTimeWeb');</script>";
            }
        } else {
            echo "<script>alert('Usuario y Contraseña incorrectos');</script>";
        }
}

/**
 * Función para dar de alta un usuario
 */
function addUser($username, $pass, $rol, $department, $name, $surname, $mail, $address, $phone, $photo) {
    $usuario = array(
        "username" => $username,
        "pass" => $pass,
        "rol" => $rol,
        "department" => $department,
        "name" => $name,
        "surname" => $surname,
        "mail" => $mail,
        "address" => $address,
        "phone" => $phone,
        "photo" => $photo,
    );

    $urlRegistrar = BASE_URL.'users'; //URL del Método de Registrar en la API
    $ch = curl_init($urlRegistrar);

    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($usuario)); // Le pasamos el array creado para codificarlo por json
    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); // Como va ir escrita la llamada
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); // recuperamos los datos
    $respuesta = curl_exec($ch);

    curl_close($ch); // recuperamos los datos
//    var_dump($respuesta);

    $user = json_decode($respuesta, true);

    echo "<script> console.log($respuesta);</script>";
    echo "<script> console.log($user);</script>";

    if ($user['code'] == 500) {
        echo "<script>alert('Username ya existe en la BBDD');</script>";
            return $respuesta;

    } else {
        echo "<script>alert('Usuario registrado correctamente');</script>";
    }
    return $respuesta;
}

/**
 * Cerrar sesión
 */
function cerrarSesion() {
    session_start();
    $_SESSION=array();
    session_destroy();
    header('Location: index.php');
}






