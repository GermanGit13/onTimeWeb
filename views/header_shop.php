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
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top shadow-sm" id="mainNav" style="background-color: white">
    <div class="container px-5">
        <img
                src="/img/logo.png"
                height="75"
                alt="OnTime Logo"
                loading="lazy"
                style="margin-top: -1px;"
        />
        <a class="navbar-brand fw-bold" href="#page-top">Bienvenido a la Web de Administración de OnTime: <?php echo $_SESSION['rol']?></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="bi-list"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto me-4 my-3 my-lg-0">
                <li class="nav-item"><a class="nav-link me-lg-3" href="">Registrar Usuario</a></li>
                <li class="nav-item"><a class="nav-link me-lg-3" href="">Listar Usuarios</a></li>
            </ul>
            <a href="index.php" class="btn btn-primary rounded-pill px-3 mb-2 mb-lg-0" data-bs-toggle="modal" data-bs-target="#feedbackModal" type="button" >
                        <span class="d-flex align-items-center">

                            <i class="bi-chat-text-fill me-2"></i>
                            <span class="small">Cerrar Sesión</span>
                        </span>
            </a>
        </div>
    </div>
</nav>

