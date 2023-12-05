<?php
session_start();
if(!isset($_SESSION['username']))
{
//    echo "No hay sesión activa";

}else{
//    echo "Sesion Activa: " .$_SESSION['username'] .$_SESSION['rol'] .$_SESSION['id'];
}
?>

<!DOCTYPE html>
<html lang="es">
<head>

    <!-- Para usar la hoja de estilos de  Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- FIN hoja de estilos de  Bootstrap -->
    <!--Para incrustar las fuente desde google-->
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;900&display=swap" rel="stylesheet">
    <!--FIN incrustar las fuente desde google-->

    <nav class="navbar navbar-dark bg-dark">
        <img src="/img/logo.png" alt="Logo" width="150" height="150" class="d-inline-block align-text-top">
    </nav>

    <nav class="navbar bg-dark" data-bs-theme="dark">
        <div class="container text-center">
            <div class="row">
                <h4 style="color: aliceblue"> Bienvenido a la Web de Administración de OnTime: <?php echo $_SESSION['username']?></h4>

            </div>
        </div>
    </nav>


</head>