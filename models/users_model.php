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

        if ($userApi != null) {
            session_start();          //Iniciamos la sesión para luego recuperarla
            $_SESSION['id']=$userApi['id']; //añadimos el id
            $_SESSION['username']=$userApi['username']; //añadimos el username
            $_SESSION['rol']=$userApi['rol']; //añadimos el rol

            header('Location: index_listarCategory.php');
//            return $userApi;

        } else {
            echo "<script>alert('Usuario y Contraseña incorrectos');</script>";
        }
}






