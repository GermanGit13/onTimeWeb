<?php
include 'views/header.php'; //se lo pasamos a la vista especifica
//if ($_SESSION['rol'] != 'ADMIN') {
//    echo "<script>alert('No tienes permisos para usar OnTimeWeb');</script>";
//    header('Location: index.php');
//}
?>

<body>

<section class="h-1000 gradient-form" style="background-image: url('/img/fondo-main.jpeg'); background-size: cover">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
                <div class="card rounded-3 text-black">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <div class="card-body p-md-5 mx-md-4">

                                <div class="text-center">
                                    <img src="../img/logo.png"
                                         style="width: 185px;" alt="logo">
                                    <h4 class="mt-1 mb-5 pb-1">Administración Web de OnTime</h4>
                                </div>

                                <form action="" method="post">
<!--                                    <p>Introduce tu usuario para continuar</p>-->

                                    <div class="form-outline mb-4">
                                        <input type="text" name="username" class="form-control"/>
                                        <label class="form-label" for="form2Example11">Usuario</label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" name="pass" class="form-control" />
                                        <label class="form-label" for="form2Example22">Password</label>
                                    </div>

                                    <div class="text-center pt-1 mb-5 pb-1">
                                        <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit" name="submitEntrar">Iniciar Sesión</button>
<!--                                        <a class="text-muted" href="#!">Forgot password?</a>-->
                                    </div

                                </form>

                            </div>
                        </div>
                            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">

                                <div class="d-flex align-items-center justify-content-center pb-4">
                                    <img src="../img/inicio.png"
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</nav>

</body>
</html>