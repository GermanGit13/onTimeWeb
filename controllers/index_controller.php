<?php
ob_start(); //no me redirigía los header sin esta función
//Aqui van todas las acciones que queremos hacer sobre los comics
function inicio() {
    //Pasa a la vista toda la informacion que se desea representar
    include 'views/index_view.php'; //se lo pasamos a la vista especifica
}
?>