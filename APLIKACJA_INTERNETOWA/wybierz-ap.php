
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
            $zapytanie = $polacz->prepare("SELECT * FROM pokaz_apartamenty WHERE nazwa_budynku=? AND status='DOSTEPNY'");
            $zapytanie->execute([$_GET['budynki']]);
            $wynik = $zapytanie->fetchall(PDO::FETCH_ASSOC);
        }
        catch (Exception $e) {
            echo "Problem z zapytaniem SQL";
        }

    if (!isset($_GET['budynki'])) {
        header('Location: dodaj-rezerwacje.php');
    }
}


?>

<?php require('nawigacja.php') ?>

<article>
<div id="zawartosc">
<!-- NEWS -->

<div class="taskbar"><a class="ataskbar">Wybierz apartament w obiekcie <?php echo $_GET['budynki'] ?> </a></div>

<form method="POST" action="wybierz-ap-finally.php?budynek=<?php echo $_GET['budynki'] ?>">

<table class="rezerwacja_s">
<tr>
    <td colspan="2">

<a class="button_nosend" href="dodaj-rezerwacje.php" value="Dalej">Powrót</a>

    <input class="button_send" type="submit" value="Dodaj rezerwacje">
    </input></br></td>
</tr>
<tr>
    <td><label>Wybierz obiekt:</label></td>
    <td>
    <select disabled>
    <option selected="selected" disabled><?php echo $_GET['budynki'] ?></option>
    </select>
    </td>
</tr>
<tr>
    <td><label>Użytkownik dodający rezerwacje:</label></td>
    <td><input value="<?php echo $_SESSION['login']; ?>" type="text" disabled></input></td>
    </tr>
    <tr>
    <td><label>Apartament:</label></td>
    <td>

<?php
$wiersz = 0;

echo '<select id="apartamenty" name="apartamenty">';
foreach ($wynik as $row)
{

echo '<option value="'.$wiersz.'">';
echo 'Ilość osób: '.$row['OSOBY'].' | Standard: '.$row['STANDARD'].' | Cena: '.$row['CENA'].' PLN';
echo '</option>';
$wiersz ++;
}

echo "</select>";

$wynik = null;

?>
    </td>
    </tr>
    <tr>
    <td><label>Wybierz klienta:</label></td>
    <td>
    <select name='dane_klient'>
    <?php
    
    try {
        $polacz2 = new PDO($db,$user,$pass);

    }
    catch (Exception $e) {
        echo "Problem z połączniem bazy danych!";
    }
    
        $polacz2->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        try {
            $zapytanie2 = $polacz2->query("SELECT * FROM i5_klient");
            $wynik2 = $zapytanie2->fetchall(PDO::FETCH_ASSOC);
        }
        catch (Exception $e) {
            echo "Problem z zapytaniem SQL";
        }

       foreach ($wynik2 as $row2) {
           echo '<option>'.$row2['ID'].' | '.$row2['IMIE'].' | '.$row2['NAZWISKO'].' | '.$row2['DOWOD'].'</option>';
       }

    ?>
    </select>
    </td>
    </tr>
    <tr>
    <td><label>Parking:</label></td>
    <td>
    <select name="mparking">
<option>Brak</option>
    <?php
    
    try {
        $polacz2 = new PDO($db,$user,$pass);

    }
    catch (Exception $e) {
        echo "Problem z połączniem bazy danych!";
    }
    
        $polacz2->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        try {
            $zapytanie2 = $polacz2->prepare("SELECT id, kod, nazwa FROM pokaz_parking_budynek WHERE status=? AND nazwa=?");
            $zapytanie2->execute(['W', $_GET['budynki']]);
            $wynik2 = $zapytanie2->fetchall(PDO::FETCH_ASSOC);
        }
        catch (Exception $e) {
            echo "Problem z zapytaniem SQL";
        }

       foreach ($wynik2 as $row2) {
           echo '<option>'.$row2['ID'].' | '.$row2['KOD'].' | '.$row2['NAZWA'].'</option>';
       }

    ?>
    </select>
    </td>
    </tr>
    <tr>
    <td>Data przyjazdu</td> <td>
    <input name="przyjazd" type="date"></input>
    </td>
    </tr>
    <tr>
    <td>Data odjazdu</td> <td>
    <input name="odjazd" type="date"></input>
    </td>
    </tr>
</table>




</form>

</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>