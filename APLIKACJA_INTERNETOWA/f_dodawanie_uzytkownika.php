<?php include_once('baza_cfg.php'); ?>

<?php
session_start();

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

    $dodawany_login = $_POST['dodawany_login'];
    $dodawany_haslo = $_POST['dodawany_haslo'];
    $dodawany_email = $_POST['dodawany_email'];
    $dodawany_telefon = $_POST['dodawany_telefon'];
    $dodawany_imie = $_POST['dodawany_imie'];
    $dodawany_nazwisko = $_POST['dodawany_nazwisko'];
    $dodawany_uprawnienia = $_POST['dodawany_uprawnienia'];


    $conn = new PDO($db, $user, $pass);
    $zapytanie = $conn->prepare('INSERT INTO i5_uzytkownik (login, haslo, email, telefon, imie, nazwisko, uprawnienia) VALUES (:dodawany_login, :dodawany_haslo, :dodawany_email, :dodawany_telefon, :dodawany_imie, :dodawany_nazwisko, :dodawany_uprawnienia )
');

    $zapytanie->bindParam(':dodawany_login',$dodawany_login,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_haslo',$dodawany_haslo,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_email',$dodawany_email,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_telefon',$dodawany_telefon,PDO::PARAM_STR, 10);
    $zapytanie->bindParam(':dodawany_imie',$dodawany_imie,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_nazwisko',$dodawany_nazwisko,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_uprawnienia',$dodawany_uprawnienia,PDO::PARAM_INT);

    $zapytanie->execute();

    header('Location: dodaj_uzytkownika.php?dodano_uzytkownika=1');


}


?>