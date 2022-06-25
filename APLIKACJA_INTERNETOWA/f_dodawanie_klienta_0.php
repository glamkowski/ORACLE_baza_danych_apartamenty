<?php include_once('baza_cfg.php'); ?>

<?php
session_start();

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

    $dodawany_imie = $_POST['dodawany_imie'];
    $dodawany_nazwisko = $_POST['dodawany_nazwisko'];
    $dodawany_dowod = $_POST['dodawany_dowod'];


    $conn = new PDO($db, $user, $pass);
    $zapytanie = $conn->prepare('INSERT INTO i5_klient (imie, nazwisko, dowod) VALUES (:dodawany_imie, :dodawany_nazwisko, :dodawany_dowod)
');

    $zapytanie->bindParam(':dodawany_imie',$dodawany_imie,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_nazwisko',$dodawany_nazwisko,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_dowod',$dodawany_dowod,PDO::PARAM_STR);

    $zapytanie->execute();

    header('Location: dodaj_klienta_0.php?dodano_klienta=1');


}


?>