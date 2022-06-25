<?php include_once('baza_cfg.php'); ?>

<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Twoje miejsce do zamieszkania.">
    <link rel="stylesheet" href="styles.css?v=8.0">
    <title>Apartamenty</title>
</head>
<body>

<?php

try {
    $polacz = new PDO($db,$user,$pass);

}
catch (Exception $e) {
    echo "Problem z połączniem bazy danych!";
}

    $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    try {
        $zapytanie = $polacz->prepare("SELECT * FROM pokaz_apartamenty WHERE nazwa_budynku=? AND status='DOSTEPNY'");
        $zapytanie->execute([$_GET['budynek']]);
        $wynik = $zapytanie->fetchall(PDO::FETCH_ASSOC);
    }
    catch (Exception $e) {
        echo "Problem z zapytaniem SQL";
    }
?>

<div id="pojemnik">

<?php require('header.php') ?>

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Podsumowanie: </a></div>

<table class="rezerwacja_s">
<tr>
    <td colspan="2">

<a class="button_nosend" href="dodaj-rezerwacje.php" value="Dalej">Powrót</a>
<a class="button_nosend" href="insert_rezerwacja.php" value="">Dalej</a>

    </br></td>
</tr>
<tr>
    <td>ID Apartamentu:</td>       <td><?php echo $wynik[$_POST['apartamenty']]['ID_AP'];?></td>
</tr>
<tr>
    <td>Nazwa obiektu:</td>        <td><?php echo $wynik[$_POST['apartamenty']]['NAZWA_BUDYNKU'];?></td>
</tr>
<tr>
    <td>Miejsca:</td>              <td><?php echo $wynik[$_POST['apartamenty']]['OSOBY'];?></td>
</tr>
<tr>
    <td>Standard:</td>             <td><?php echo $wynik[$_POST['apartamenty']]['STANDARD'];?></td>
</tr>
<tr>
    <td>Cena:</td>                 <td><?php echo $wynik[$_POST['apartamenty']]['CENA']; ?></td>
</tr>
<tr>
    <td>Miejscowość:</td>          <td><?php echo $wynik[$_POST['apartamenty']]['NAZWA'];?></td>
</tr>
<tr>
    <td>Dane klienta:</td>         <td><?php echo $_POST['dane_klient'] ?></td>
</tr>
<tr>
    <td>Parking</td>               <td><?php echo $_POST['mparking'] ?></td>
</tr>
<tr>
    <td>Przyjazd</td>               <td><?php echo $_POST['przyjazd'] ?></td>
</tr>
<tr>
    <td>Odjazd</td>               <td><?php echo $_POST['odjazd'] ?></td>
</tr>
</table>
</div>
</article>
<?php


$t_klient = explode("|", $_POST['dane_klient']);
$t_parking = explode("|", $_POST['mparking']);

$_SESSION['id']; //UŻYTKOWNIK
$_SESSION['f_apartament_id'] = $wynik[$_POST['apartamenty']]['ID_AP']; // ID AP
$_SESSION['f_dowod'] = $t_klient[1]; // DOWOD
$_SESSION['f_parking_id'] = $t_parking[0]; // ID
$_SESSION['f_przyjazd'] = $_POST['przyjazd'];
$_SESSION['f_odjazd'] = $_POST['odjazd'];
$_SESSION['f_id_klient'] = $t_klient[0];


?>
<?php include('footer.php')?>




</div>
</body>
</html>