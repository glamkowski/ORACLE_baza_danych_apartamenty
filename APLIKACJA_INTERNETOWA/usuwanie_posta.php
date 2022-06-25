<?php include_once('baza_cfg.php'); ?>

<?php
session_start();

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

    $usuwany_post = $_GET['usun'];



    $conn = new PDO($db, $user, $pass);
    $zapytanie = $conn->prepare('DELETE i5_news WHERE id=:usuwany_post
');

    $zapytanie->bindParam(':usuwany_post',$usuwany_post,PDO::PARAM_INT);

    $zapytanie->execute();

    header('Location: index.php');


}


?>