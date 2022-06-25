
<?php include_once('baza_cfg.php'); ?>

<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Twoje miejsce do zamieszkania.">
    <link rel="stylesheet" href="styles.css?v=9.1">
    <title>Apartamenty</title>
</head>
<body>

<div id="pojemnik">

<?php require('header.php') ?>

<?php

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

}

?>

<?php require('nawigacja.php') ?>

<?php
if (!isset($_GET['dodano_uzytkownika'])) {
}
elseif ($_GET['dodano_uzytkownika'] == 1) {

echo '<a class="informacja_dodanie">';
echo "Dodano użytkownika pomyślnie!";
echo '</a>';
}
else {

}

?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Lista zajętych apartamentów:</a></div>
<form action="status_Zap.php">
<center><input class="button_send" type="submit" value="Odśwież"></input></center>
</form>

<?php

try {
    $polacz = new PDO($db,$user,$pass);

}
catch (Exception $e) {
    echo "Problem z połączniem bazy danych!";
}

    $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    try {
        $zapytanie = $polacz->prepare("SELECT * FROM pokaz_apartamenty WHERE STATUS = 'ZAJETY'");
        $zapytanie->execute();
        $wynik = $zapytanie->fetchall(PDO::FETCH_ASSOC);
    }
    catch (Exception $e) {
        echo "Problem z zapytaniem SQL";
    }

    echo '<table class="tabela_status">';
    echo '<tr>';
    echo '<td class="naglowek_status">'.'ID'.'</td>';
    echo '<td class="naglowek_status">'.'BUDYNEK'.'</td>';
    echo '<td class="naglowek_status">'.'OSOBY'.'</td>';
    echo '<td class="naglowek_status">'.'STANDARD'.'</td>';
    echo '<td class="naglowek_status">'.'STATUS'.'</td>';
    echo '<td class="naglowek_status">'.'CENA'.'</td>';
    echo '<td class="naglowek_status">'.'MIASTO'.'</td>';

    foreach ($wynik as $pokaz) {
        echo '<tr>';
        echo '<td>'.$pokaz['ID_AP'].'</td>';
        echo '<td>'.$pokaz['NAZWA_BUDYNKU'].'</td>';
        echo '<td>'.$pokaz['OSOBY'].'</td>';
        echo '<td>'.$pokaz['STANDARD'].'</td>';
        echo '<td>'.$pokaz['STATUS'].'</td>';
        echo '<td>'.$pokaz['CENA'].'</td>';
        echo '<td>'.$pokaz['NAZWA'].'</td>';

        echo '</tr>';
    }

    echo '</table>';

?>

</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>