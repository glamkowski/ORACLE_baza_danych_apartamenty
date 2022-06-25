<?php include_once('baza_cfg.php'); ?>

<?php
session_start();

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

    $dodawany_id = 25;
    $dodawany_tytul = $_POST['dodawany_tytul'];
    $dodawany_tresc = $_POST['dodawany_tresc'];


    $conn = new PDO($db, $user, $pass);
    $zapytanie = $conn->prepare('INSERT INTO i5_news (id, tytul, tresc) VALUES (:dodawany_id, :dodawany_tytul, :dodawany_tresc)
');

    $zapytanie->bindParam(':dodawany_id',$dodawany_id,PDO::PARAM_INT);
    $zapytanie->bindParam(':dodawany_tytul',$dodawany_tytul,PDO::PARAM_STR);
    $zapytanie->bindParam(':dodawany_tresc',$dodawany_tresc,PDO::PARAM_STR);

    $zapytanie->execute();

    header('Location: dodaj_news.php?dodano_news=1');


}


?>