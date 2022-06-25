
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

<div id="pojemnik">

<?php require('header.php') ?>

<?php

if (!isset($_SESSION['uprawnienia']) || !isset($_SESSION['login'])) {
    header('Location: index.php');
}
else {

try {
    $polacz = new PDO($db,$user,$pass);
}
catch (Exception $e) {
    echo "Problem z połączniem bazy danych!";
}

    $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    try {
    $sql = $polacz->query("SELECT DISTINCT Nazwa_budynku, NAZWA FROM pokaz_apartamenty");
    }
    catch (Exception $e) {
        echo "Problem z zapytaniem SQL";
    }

}

?>

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Dodaj rezerwacje</a></div>

<form method="GET" action="wybierz-ap.php">

<table class="rezerwacja_s">
<tr>
    <td><label>Wybierz obiekt:</label></td>
    <td>
    
<?php

    echo '<select id="budynki" name="budynki">';
    foreach ($sql as $row)
    {
        echo '<option'.' value="'.$row['NAZWA_BUDYNKU'].'">'.$row['NAZWA_BUDYNKU'].'  ['.$row['NAZWA'].']'.'</option>';
    }
    
    echo "</select>";
    
    $sql = null;

?>
    </td>
</tr>
<tr>
    <td colspan="2">
    <input class="button_send" type="submit" value="Dalej">
    </input></br></td>
</tr>
</table>
</form>
</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>