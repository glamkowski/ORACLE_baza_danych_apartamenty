
<?php include_once('baza_cfg.php'); ?>

<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta description="Twoje miejsce do zamieszkania.">
    <link rel="stylesheet" href="styles.css?v=8.0">
    <title>Statystyki</title>
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

    $sql = $polacz->query("SELECT * FROM srednia_cena_ap");

    }
    catch (Exception $e) {
        echo "Problem z zapytaniem SQL";
    }

    try {
        $polacz = new PDO($db,$user,$pass);
    }
    catch (Exception $e) {
        echo "Problem z połączniem bazy danych!";
    }
    
        $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        try {
    
        $sql_najwyzsza_cena_ap = $polacz->query("SELECT * FROM najwyzsza_cena_ap");
    
        }
        catch (Exception $e) {
            echo "Problem z zapytaniem SQL";
        }

}

try {
    $polacz = new PDO($db,$user,$pass);
}
catch (Exception $e) {
    echo "Problem z połączniem bazy danych!";
}

    $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    try {

    $sql_ilosc_uzytkownikow = $polacz->query("SELECT * FROM ilosc_uzytkownikow");

    }
    catch (Exception $e) {
        echo "Problem z zapytaniem SQL";
    }

    try {
        $polacz = new PDO($db,$user,$pass);
    }
    catch (Exception $e) {
        echo "Problem z połączniem bazy danych!";
    }
    
        $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
        try {
    
        $sql_ilosc_apartamentow = $polacz->query("SELECT * FROM ilosc_apartamentow");
    
        }
        catch (Exception $e) {
            echo "Problem z zapytaniem SQL";
        }

        try {
            $polacz = new PDO($db,$user,$pass);
        }
        catch (Exception $e) {
            echo "Problem z połączniem bazy danych!";
        }
        
            $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
            try {
        
            $sql_ilosc_budynkow = $polacz->query("SELECT * FROM ilosc_budynkow");
        
            }
            catch (Exception $e) {
                echo "Problem z zapytaniem SQL";
            }
            try {
                $polacz = new PDO($db,$user,$pass);
            }
            catch (Exception $e) {
                echo "Problem z połączniem bazy danych!";
            }
            
                $polacz->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            
                try {
            
                $sql_najnizsza_cena_ap = $polacz->query("SELECT * FROM najnizsza_cena_ap");
            
                }
                catch (Exception $e) {
                    echo "Problem z zapytaniem SQL";
                }



?>

<article>
<div id="zawartosc">
<!-- NEWS -->
<div class="taskbar"><a class="ataskbar">Statystyki</a></div>




<table class="rezerwacja_s">
<form method="POST" action="statystyki.php">

<tr> <td><label>Średnia cena apartamentów:</label></td> <td><?php foreach ($sql as $key => $value) {
    echo $value[0].' PLN';
} ?></td> </tr>

<tr> <td><label>Najwyższa [MAX] cena apartamentu:</label></td> <td><?php foreach ($sql_najwyzsza_cena_ap as $key => $value) {
    echo $value[0].' PLN';
} ?></td> </tr>

<tr> <td><label>Najniższa [MIN] cena apartamentu:</label></td> <td><?php foreach ($sql_najnizsza_cena_ap as $key => $value) {
    echo $value[0].' PLN';
} ?></td> </tr>

<tr> <td><label>Ilość użytkowników:</label></td> <td><?php foreach ($sql_ilosc_uzytkownikow as $key => $value) {
    echo $value[0];
} ?></td> </tr>

<tr> <td><label>Ilość apartamentow:</label></td> <td><?php foreach ($sql_ilosc_apartamentow as $key => $value) {
    echo $value[0];
} ?></td> </tr>

<tr> <td><label>Ilość budynkow:</label></td> <td><?php foreach ($sql_ilosc_budynkow as $key => $value) {
    echo $value[0];
} ?></td> </tr>

<tr> <td><label>Data wygenerowania:</label></td> <td><?php echo date("Y-m-d"); ?></td> </tr>
 </tr>
<tr>
    <td>
</td>
<td>

<input class="button_send" type="submit" value="Odśwież">

</td>
</tr>
</form>
</table>

</div>
</article>

<?php include('footer.php')?>

</div>
</body>
</html>